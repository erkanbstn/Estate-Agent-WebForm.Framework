using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YaziciEmlak.Entity;
using System.Data;
namespace YaziciEmlak
{
    public partial class Ilanlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter(" Select ResimYolu,Adres from (select  ResimYolu, ROW_NUMBER() over(order by IlanID asc) rn, Adres from TIlanlar) t where  t.rn in (1, 2, 3,4)", Baglanti.bgl);
            DataTable t = new DataTable();
            ad.Fill(t);
            Repeater1.DataSource = t;
            Repeater1.DataBind();

            SqlDataAdapter ad2 = new SqlDataAdapter(" Select ResimYolu,Adres from (select  ResimYolu, ROW_NUMBER() over(order by IlanID asc) rn, Adres from TIlanlar) t where  t.rn in (5, 6, 7,8)", Baglanti.bgl);
            DataTable t2 = new DataTable();
            ad2.Fill(t2);
            Repeater2.DataSource = t2;
            Repeater2.DataBind();

            SqlDataAdapter ad3 = new SqlDataAdapter(" Select ResimYolu,Adres from (select  ResimYolu, ROW_NUMBER() over(order by IlanID asc) rn, Adres from TIlanlar) t where  t.rn in (9, 10, 11,12)", Baglanti.bgl);
            DataTable t3 = new DataTable();
            ad3.Fill(t3);
            Repeater3.DataSource = t3;
            Repeater3.DataBind();
        }
    }
}