using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace SalesWebApp.BAL
{
    public class Connection
    {
        public SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectDB"].ToString());
            return con;
        }

       
    }
}