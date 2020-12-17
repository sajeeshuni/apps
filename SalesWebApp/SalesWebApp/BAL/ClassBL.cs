using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SalesWebApp.BAL
{
    public class ClassBL
    {
        Connection connect;
        SqlCommand cmd;
        SqlConnection con;
        SqlDataAdapter DA;

        public DataTable GetData(string SqlStr)
        {
            connect = new Connection();
            con = connect.GetConnection();
            cmd = new SqlCommand(SqlStr, con);
            DataSet DS = new DataSet();
            DA = new SqlDataAdapter(cmd);
            DA.Fill(DS);
            con.Close();
            return DS.Tables[0];
        }
    }
}