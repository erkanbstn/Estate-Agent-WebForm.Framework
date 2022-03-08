using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace YaziciEmlak.Entity
{
    public class Baglanti
    {
        public static YaziciDBEntities db = new YaziciDBEntities();

        public static SqlConnection bgl = new SqlConnection("Data Source=GEOPC\\SQLEXPRESS;Initial Catalog=YaziciDB;Integrated Security=True;");
    }
}