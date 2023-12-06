using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Amonica.Models
{
    public class Connection
    {
        public static string Ping()
        {
            return ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }
    }
}