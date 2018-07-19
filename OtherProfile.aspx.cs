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
    public partial class başkasınınprofili : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToBoolean(Session["giris"]) != true)
                Response.Redirect("LoginRegisterPage.aspx?msg=Oncelikle giris yapmalisiniz");

            else
            {
                string Kullaniciadi = "'" + Convert.ToString(Session["KullaniciAdi2"]) + "'";

                DataSet okunankitap = Islemler.okunankitap(Kullaniciadi);
                GridView1.DataSource = okunankitap.Tables[0];
                GridView1.DataBind();

                DataSet Alintilar = Islemler.Alintilar(Kullaniciadi);
                GridView2.DataSource = Alintilar.Tables[0];
                GridView2.DataBind();

                DataSet KitapInceleme = Islemler.KitapInceleme(Kullaniciadi);
                GridView3.DataSource = KitapInceleme.Tables[0];
                GridView3.DataBind();

                DataSet KitapPuan = Islemler.KitapPuan(Kullaniciadi);
                GridView4.DataSource = KitapPuan.Tables[0];
                GridView4.DataBind();

                DataSet KullaniciCekme = Islemler.KullaniciCekme(Kullaniciadi);

                string kullaniciadi = Convert.ToString(Session["KullaniciAdi2"]);
                string baglan = ConfigurationManager.ConnectionStrings["baglan"].ToString();
                SqlConnection cnn = new SqlConnection(baglan);

                SqlCommand komut = new SqlCommand();
                cnn.Open();
                komut.Connection = cnn;
                komut.CommandText = "Select * from KullaniciTable where KullaniciAdi = '" + kullaniciadi + "'";
                komut.ExecuteNonQuery();
                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    Label1.Text = dr["Adi"].ToString();
                    Label2.Text = dr["Soyadi"].ToString();
                    Image1.ImageUrl = dr["KullaniciFoto"].ToString();

                }
            }
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Mesaj.aspx");
        }
    }
}