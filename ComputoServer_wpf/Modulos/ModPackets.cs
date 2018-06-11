using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;

namespace ComputoServer_wpf.Modulos
{
    public static class ModPackets
    {
        public static void execute_Msg(string msg, Socket client)
        {
            try
            {
                Byte[] sendBytes = System.Text.UnicodeEncoding.Unicode.GetBytes(msg);
                client.BeginSend(sendBytes, 0, sendBytes.Length, SocketFlags.None, new AsyncCallback(OnSend), client);
            }
            catch (Exception s)
            {
                //client is not yet ready
                Console.Write("Module: ModPackets, function: execute_msg" + s.Message);
                //throw;
            }
        }

        public static void OnSend(IAsyncResult ar)
        {
            Socket client = ar.AsyncState;
            client.EndSend(ar);
        }

        public static void client_load(Socket client, double _timeSet, double _elapseTime) //80
        {
            _packet_msg = "1À€À€5À€" + _timeSet & "/" + _elapseTime + "À€14À€À€9À€1À€80À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void notify_Msg(Socket client) //99
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€99À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_pause(Socket client) //85
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€85À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_resume_dc(Socket client, long dcsec) //84
        {
            _packet_msg = dcsec + "À€À€5À€3À€14À€À€9À€1À€84À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_resume(Socket client) //83
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€83À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_start(Socket client, double seconds) //87
        {
            _packet_msg = "1À€À€5À€" + seconds + "À€14À€À€9À€1À€87À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_stop(Socket client) //64
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€64À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_restart(Socket client) //99
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€99À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_shutdown(Socket client) //100
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€100À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void send_extend_time(Socket client, double seconds) //82
        {
            _packet_msg = "1À€À€5À€" + seconds + "À€14À€À€9À€1À€82À€0À€64À€0À€206À€32À€";
            xecute_Msg(_packet_msg, client);
        }

        public static void client_save(Socket client, double seconds) //81
        {
            _packet_msg = "1À€À€5À€À€14À€À€9À€1À€81À€0À€64À€0À€202À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void client_refresh(Socket client) //79
        {
            _packet_msg = "1À€À€5À€À€14À€À€9À€1À€79À€0À€64À€0À€202À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void send_message(Socket client)
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€2052À€testmessage1À€À€5À€3À€14À€À€9À€1À€205À€";
            execute_Msg(_packet_msg, client);
        }

        public static void request_handshake(string c_pass, Socket client, int no)
        {
            _packet_msg = "1À€" + c_pass + "À€5À€3À€14À€À€9À€1À€205À€" + encrypt("cyber_cafebychoi_and_nico") + "À€" + no + "À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void requestRecon(Socket client)
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€103À€0À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }

        public static void sendRates(Socket client, string rList)
        {
            _packet_msg = "1À€À€5À€3À€14À€À€9À€1À€206À€" + rList + "À€64À€0À€206À€32À€";
            execute_Msg(_packet_msg, client);
        }
    }
}

