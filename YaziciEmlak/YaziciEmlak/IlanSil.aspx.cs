using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YaziciEmlak.Entity;

namespace YaziciEmlak
{
    public partial class IlanSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToByte(Request.QueryString["IlanID"]);
            var x = Baglanti.db.TIlanlar.Find(id);
            Baglanti.db.TIlanlar.Remove(x);
            Baglanti.db.SaveChanges();
            Response.Write("<script>alert('İlan Başarıyla Silindi.!')</script>");
            Response.Redirect("AdminPanel.aspx");
        }
    }
}