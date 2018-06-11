using System.Data;
using System.Data.OleDb;

namespace ComputoServer_wpf.Modulos
{
    public static class ModCon
    {
        public const string cnString = "Provider=Microsoft.ACE.OLEDB.12.0;Persist Security Info=False;Data Source=../debug/database/Cyber_Cafe.mdb";
        public static string sqlSRT;
        public static OleDbDataReader sqlDr;
        public static DataSet sqlDS;

        public static bool checkDatabase()
        {
            try
            {
                OleDbConnection sqlCon = new OleDbConnection();
                sqlCon.ConnectionString = cnString;
                sqlCon.Open();
                return true;
                sqlCon.Close();
            }
            catch (System.Exception)
            {
                return false;
            }
        }

        public static OleDbDataReader ExecuteSQLQuery(string SQLQuery)
        {
            try
            {
                OleDbConnection sqlCon = new OleDbConnection();
                OleDbCommand sqlCmd = new OleDbCommand(SQLQuery, sqlCon);
                OleDbDataAdapter oledbda = new OleDbDataAdapter(sqlCmd);
                sqlCon.Open();
                sqlDr = sqlCmd.ExecuteReader();
                return sqlDr;
                sqlCon.Close();
            }
            catch (System.Exception)
            { 
                throw;
            }
        }

    }
}
