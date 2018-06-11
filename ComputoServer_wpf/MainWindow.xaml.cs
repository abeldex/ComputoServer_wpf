using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Windows;
using System.Diagnostics;
using System.IO;
using System.Windows.Media.Imaging;
using System;
using System.Windows.Controls;
using System.Linq;
using System.Collections.Generic;
using System.Management;

namespace ComputoServer_wpf
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //permite escuchador y/o enviar datos en protocolos UDP/TCP y otros 
        private static Socket socket = null;
        //nos indicará si el servidor o hilo está escuchando, también nos servirá para finalizarlo 
        private static bool corriendo = false;
        //el punto local es la IP de la tarjeta de RED local por la que escucharemos datos y el puerto 
        private static IPEndPoint puntoLocal = null;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void btn_enviar_Click(object sender, RoutedEventArgs e)
        {
            //Enviar();
        }

        private void Enviar(string ip, int puerto, string mensaje)
        {
            byte[] datosEnBytes = Encoding.Default.GetBytes(mensaje);
            EndPoint ipPuertoRemoto = new IPEndPoint(IPAddress.Parse(ip), puerto);
            socket.SendTo(datosEnBytes, ipPuertoRemoto);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            IPAddress ipEscucha = IPAddress.Any; //indicamos que escuche por cualquier tarjeta de red local 
                                                 //IPAddress ipEscucha = IPAddress.Parse("0.0.0.0"); //o podemos indicarle la IP de la tarjeta de red local 
            int puertoEscucha = 2000; //puerto por el cual escucharemos datos             
            puntoLocal = new IPEndPoint(ipEscucha, puertoEscucha); //definimos la instancia del IPEndPoint                                                      //lanzamos el escuchador por medio de un hilo 
            new Thread(Escuchador).Start();
            //ListarPCSEncendidas();
            MostrarEncendidas();
        }

        public void encendida()
        {
            Dispatcher.Invoke(() =>
            {
                // Set property or change UI compomponents. 
                MessageBox.Show("una pc encendida");
            });

        }


        private void Escuchador()
        {
            //instanciamos el socket 
            socket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
            //asociamos el socket a la dirección local por la cual escucharemos (IP:Puerto) 
            //en caso de que otro programa esté escuchado por el mismo IP/Puerto nos lanzará un error aquí 
            socket.Bind(puntoLocal);
            //Console.WriteLine("escuchando..."); 
            //declarar buffer para recibir los datos y le damos un tamaño máximo de datos recibidos por cada mensaje 
            byte[] buffer = new byte[1024];
            //definir objeto para obtener la IP y Puerto de quien nos envía los datos 
            EndPoint ipRemota = new IPEndPoint(IPAddress.Any, 0); //no importa que IPAddress o IP definamos aquí 
                                                                  //indicamos que el servidor a partir de aquí está corriendo 
            corriendo = true;
            //ciclo que permitirá escuchar continuamente mientras se esté corriendo el servidor 
            while (corriendo)
            {
                if (socket.Available == 0) //consultamos si hay datos disponibles que no hemos leido 
                {
                    Thread.Sleep(200); //esperamos 200 milisegundos para volver a preguntar 
                    continue; //esta sentencia hace que el programa regrese al ciclo while(corriendo) 
                }
                //en caso de que si hayan datos disponibles debemos leerlos 
                //indicamos el buffer donde se guardarán los datos y enviamos ipRemota como parámetro de referencia 
                //adicionalmente el método ReceiveFrom nos devuelve cuandos bytes se leyeron 
                int contadorLeido = socket.ReceiveFrom(buffer, ref ipRemota);
                //ahora tenemos los datos en buffer (1024 bytes) pero sabemos cuantos recibimos (contadorLeido) 
                //convertimos esos bytes a string 
                string datosRecibidos = Encoding.Default.GetString(buffer, 0, contadorLeido);
                //Console.WriteLine("Recibí: " + datosRecibidos);
                //MessageBox.Show(datosRecibidos);     
                if (datosRecibidos == "encendida")
                {
                    //corriendo = false;
                    encendida();
                }
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            corriendo = false;
        }

        private void inicializarpcs()
        {
            foreach (Image img in GridPCS.Children.OfType<Image>())
            {
                img.Source = new BitmapImage(new Uri(@"/Resources/img/pc_off.png", UriKind.Relative));
            }
        }

        private void MostrarEncendidas()
        {
            List<String> pcs = ListarPCSEncendidas();
            foreach (Image img in GridPCS.Children.OfType<Image>())
            {
                foreach (string item in pcs)
                {
                    if (item.Contains(img.Name))
                        img.Source = new BitmapImage(new Uri(@"/Resources/img/pc_on.png", UriKind.Relative));
                }
            }
        }

        public string DoGetHostAddresses(string hostname)
        {
            //obtenemos la ip del nombre de la maquina
            try
            {
                IPAddress[] IpInHostAddress = Dns.GetHostAddresses(hostname + "-PC");
                string IPAddress = IpInHostAddress[1].ToString(); //Default Link local IP Address
                return IPAddress;
                //MessageBox.Show(IPV6Address);
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
                return err.Message;
            }
  
        }

        //metodo que regresa un listado de computadoras encendidas en la red local
        private List<String> ListarPCSEncendidas()
        {
            List<String> pcs = new List<string>();
            //Gets the machine names that are connected on LAN 
            Process netUtility = new Process();
            netUtility.StartInfo.FileName = "net.exe";
            netUtility.StartInfo.CreateNoWindow = true;
            netUtility.StartInfo.Arguments = "view";
            netUtility.StartInfo.RedirectStandardOutput = true;
            netUtility.StartInfo.UseShellExecute = false;
            netUtility.StartInfo.RedirectStandardError = true;
            netUtility.Start();
            StreamReader streamReader = new StreamReader(netUtility.StandardOutput.BaseStream, netUtility.StandardOutput.CurrentEncoding);
            string line = "";
            string nombre = "";
            while ((line = streamReader.ReadLine()) != null)
            {
                if (line.StartsWith("\\"))
                {
                    nombre = line.Substring(2).Substring(0, line.Substring(2).IndexOf(" ")).ToUpper();
                    if (nombre.Contains("CC")) {
                        //MessageBox.Show(nombre);
                        pcs.Add(nombre);
                    }
                }
                   
            }
            streamReader.Close();
            netUtility.WaitForExit(1000);
            return pcs;
        }

        private void btm_actualizar_Click(object sender, RoutedEventArgs e)
        {
            inicializarpcs();
            MostrarEncendidas();
            MessageBox.Show("Actualizadas");
        }

        private void CC_01_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            string objname = ((Image)sender).Name;
            
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            //obtenemos el nombre del equipo al que estamos haciendo bloquear
            MenuItem mnu = sender as MenuItem;
            Image img = null;
            if (mnu != null)
            {
                img = ((ContextMenu)mnu.Parent).PlacementTarget as Image;
            }
            MessageBoxResult result = MessageBox.Show("¿Bloquear el equipo: " + img.Name + " ?", "Aviso", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                string ip = DoGetHostAddresses(img.Name);
                try
                {
                    Enviar(ip, 8000, "l");
                }
                catch (Exception err)
                {
                    MessageBox.Show(err.Message); ;
                }
                
            }
            //MessageBox.Show(img.Name);
        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            //obtenemos el nombre del equipo al que estamos haciendo bloquear
            MenuItem mnu = sender as MenuItem;
            Image img = null;
            if (mnu != null)
            {
                img = ((ContextMenu)mnu.Parent).PlacementTarget as Image;
            }
            MessageBoxResult result = MessageBox.Show("¿Desbloquear el equipo: " + img.Name + " ?", "Aviso", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                string ip = DoGetHostAddresses(img.Name);
                try
                {
                    Enviar(ip, 8000, "u");
                }
                catch (Exception err)
                {
                    MessageBox.Show(err.Message); ;
                }

            }
        }

        private void btn_usuarios_Click(object sender, RoutedEventArgs e)
        {
            usuarios u = new usuarios();
            u.Show();
        }
    }
}
