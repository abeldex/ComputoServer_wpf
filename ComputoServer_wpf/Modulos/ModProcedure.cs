using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;

namespace ComputoServer_wpf.Modulos
{
    public static class ModProcedure
    {
        static string delimiter;
        public static void form_show(Form frm, int x, int y)
        {
            frm.Top = x;
            frm.Left = y;
            frm.ShowDialog();
        }

        public static void FillListView(System.Windows.Forms.ListView lvList, OleDbDataReader myData)
        {
            System.Windows.Forms.ListViewItem itmListItem;
            String strValue;
            lvList.Items.Clear();
            while (myData.Read())
            {
                itmListItem = new System.Windows.Forms.ListViewItem();
                if (myData.IsDBNull(0))
                    strValue = myData.GetValue(0).ToString();
                else
                    strValue = "";
                itmListItem.Text = strValue;
                for (int shtCntr = 1; shtCntr <= myData.FieldCount - 1; shtCntr++)
                {
                    if (myData.IsDBNull(shtCntr))
                        itmListItem.SubItems.Add("");
                    else
                        itmListItem.SubItems.Add(myData.GetValue(shtCntr).ToString());
                }
                lvList.Items.Add(itmListItem);
            }

       }


    }
    
}
