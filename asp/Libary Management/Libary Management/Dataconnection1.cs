using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Libary_Management
{

    public class Dataconnection1
    {
        string connecsstr = ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString;
        public DataTable getData(string query)
        {
            SqlConnection conn = new SqlConnection(connecsstr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;

        }
        public int ExecuteQuery(string query)
        {
            SqlConnection conn = new SqlConnection(connecsstr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(query, conn);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }

        }
    }
}