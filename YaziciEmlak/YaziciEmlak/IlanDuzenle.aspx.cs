using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YaziciEmlak.Entity;

namespace YaziciEmlak
{
    public partial class IlanDuzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource= Baglanti.db.TIlanlar.ToList();
            Repeater1.DataBind();
        }
    }
}