using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace KutuphaneVize
{
    public partial class HomePage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet Sorgu1 = Islemler.KullaniciOneriBir(Convert.ToString(Session["KullaniciAdi"]));
            GridView4.DataSource = Sorgu1.Tables[0];
            GridView4.DataBind();

            DataSet Sorgu2 = Islemler.KullaniciOneriİki(Convert.ToString( Session["KullaniciAdi"]));
            GridView5.DataSource = Sorgu2.Tables[0];
            GridView5.DataBind();

            DataSet Sorgu3 = Islemler.KullaniciOneriUc(Convert.ToString(Session["KullaniciAdi"]));
            GridView6.DataSource = Sorgu3.Tables[0];
            GridView6.DataBind();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            string KullaniciAdi = row.Cells[1].Text;
            Session["KullaniciAdi2"] = KullaniciAdi;
            Response.Redirect("OtherProfile.aspx");

        }
        
        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int secili2;
            secili2 = GridView2.SelectedIndex;
            GridViewRow row = GridView2.Rows[secili2];
            string KitapAdi = row.Cells[1].Text;
            Session["KitapAdi"] = KitapAdi;
            Response.Redirect("KitapDetay.aspx");
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili2;
            secili2 = GridView3.SelectedIndex;
            GridViewRow row = GridView3.Rows[secili2];
            string YazarAdi = row.Cells[1].Text;
            Session["YazarAdi"] = YazarAdi;
            Response.Redirect("YazarDetay.aspx");
        }
    }
}