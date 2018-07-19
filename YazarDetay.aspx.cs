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
    public partial class YazarDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["giris"]) != true)
                Response.Redirect("LoginRegisterPage.aspx?msg=Oncelikle giris yapmalisiniz");
            else
            {
                string baglan = ConfigurationManager.ConnectionStrings["baglan"].ToString();
                SqlConnection baglan2 = new SqlConnection(baglan);


                string YazarAdi = "'" + Convert.ToString(Session["YazarAdi"]) + "'";

                                        /*Yazar Bilgileri*/
                string sql2 = "select * from YazarlarTable where YazarAdiSoyadi=" + YazarAdi;
                SqlDataAdapter adaptor2 = new SqlDataAdapter(sql2, baglan2);
                DataTable dt2 = new DataTable();
                adaptor2.Fill(dt2);
                Label1.Text = dt2.Rows[0]["YazarAdiSoyadi"].ToString();
                Label2.Text = dt2.Rows[0]["DogumTarihi"].ToString();
                Label3.Text = dt2.Rows[0]["OlumTarihi"].ToString();
                Image1.ImageUrl = dt2.Rows[0]["YazarFoto"].ToString();


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili2;
            secili2 = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili2];
            string KitapAdi = row.Cells[1].Text;
            Session["KitapAdi"] = KitapAdi;
            Response.Redirect("KitapDetay.aspx");
        }
    }
}