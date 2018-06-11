using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;


namespace ComputoServer_wpf
{
    /// <summary>
    /// Lógica de interacción para usuarios.xaml
    /// </summary>
    public partial class usuarios : Window
    {
        public usuarios()
        {
            InitializeComponent();
            ListarBuscar("");
            dg_usuarios.Items.Refresh();
        }

        //metodo para buscar un usuario por usuario
        public void ListarBuscar(string dato)
        {
            try
            {
                dg_usuarios.ItemsSource = new Negocio.n_usuarios().Listar(dato);
                dg_usuarios.Items.Refresh();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }


        private void txt_buscar_KeyUp(object sender, KeyEventArgs e)
        {
            //validamos que se presione un enter
            if (e.Key == Key.Enter)
            {
                ListarBuscar(txt_buscar.Text);
                txt_buscar.Text = "";
                dg_usuarios.Items.Refresh();
            }
        }

        private void btn_guardar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Entidades.e_usuarios _usuario = new Entidades.e_usuarios();
                _usuario.usuario = txt_usuario.Text;
                _usuario.pass = txt_pass.Password;
                _usuario.tipo_usuario = Convert.ToInt32(((ComboBoxItem)cmb_tipo.SelectedItem).Tag);
                _usuario.estado = Convert.ToInt32(((ComboBoxItem)cmb_Estado.SelectedItem).Tag);

                if (new Negocio.n_usuarios().InsertarUsuario(_usuario))
                {
                    MessageBox.Show("El usuario se registro correctamente");
                    //actualizamos el datagrid
                    ListarBuscar("");
                    dg_usuarios.Items.Refresh();
                    //limpiamos los textbox
                    txt_usuario.Text = "";
                    txt_pass.Password = "";
                    cmb_Estado.SelectedIndex = -1;
                    cmb_tipo.SelectedIndex = -1;
                }
                else
                {
                    MessageBox.Show("Error, No se guardo el usuario");
                }
            }
            catch (Exception error)
            {

                MessageBox.Show(error.Message);
            }
           
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void btn_eliminar_Click(object sender, RoutedEventArgs e)
        {
            //obtenemos el usuario desde el datagrid por medio de la fila seleccionada
            object Usuario = ((Button)sender).CommandParameter;
            //mandamos un mensaje para preguntar si deseamos eliminar
            MessageBoxResult result = MessageBox.Show("Desea eliminar el usuario: " + Usuario + "", "Eliminar", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                try
                {
                    //
                    Entidades.e_usuarios _usuarios = new Entidades.e_usuarios();
                    _usuarios.usuario = Usuario.ToString();
                    //mandamos llamar el metodo de la clase de negocios 
                    if (new Negocio.n_usuarios().Delete(_usuarios))
                    {
                        MessageBox.Show("El usuario se eliminó correctamente");
                        ListarBuscar("");
                        dg_usuarios.Items.Refresh();
                    }
                    else
                    {
                        MessageBox.Show("Error, No se pudo eliminar el camion");
                    }
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.Message);
                }
            }
        }
    }
}
