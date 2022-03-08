using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YaziciEmlak.Entity;

namespace YaziciEmlak
{
    public partial class IlanGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToByte(Request.QueryString["IlanID"]);
                var x = Baglanti.db.TIlanlar.Find(id);
                TxtAdres.Text = x.Adres;
                TxtResimYolu.Text = x.ResimYolu;
            }
        }

        protected void BtnIlanGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToByte(Request.QueryString["IlanID"]);
            var x = Baglanti.db.TIlanlar.Find(id);
            x.Adres = TxtAdres.Text;
            x.ResimYolu = TxtResimYolu.Text;
            try
            {
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath($"ertugrul2/img/{FileUpload1.FileName}"));
                    x.ResimYolu = $"ertugrul2/img/{FileUpload1.FileName}";
                }
            }
            catch (Exception)
            {
                System.IO.File.Delete(Server.MapPath($"ertugrul2/img/{FileUpload1.FileName}"));
                FileUpload1.SaveAs(Server.MapPath($"ertugrul2/img/{FileUpload1.FileName}"));
                x.ResimYolu = $"ertugrul2/img/{FileUpload1.FileName}";
            }
            Baglanti.db.SaveChanges();
            Response.Redirect("IlanDuzenle.aspx");
        }
    }
}