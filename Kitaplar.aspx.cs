using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace KutuphaneVize
{
    public partial class Kitaplar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet okunankitap = Islemler.PopularKitaplar();
            GridView1.DataSource = okunankitap.Tables[0];
            GridView1.DataBind();

            DataSet Yuksek = Islemler.Yuksekpuanlikitap();
            GridView2.DataSource = Yuksek.Tables[0];
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}