using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace KutuphaneVize
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["giris"]) != true)
                Response.Redirect("LoginRegisterPage.aspx?msg=Oncelikle giris yapmalisiniz");
            else
            {                       
                string baglan = ConfigurationManager.ConnectionStrings["baglan"].ToString();
                SqlConnection baglan2 = new SqlConnection(baglan);
                string KulAd = "'" + Convert.ToString(Session["KullaniciAdi"]) + "'";

                string Kullaniciadi = "'" + Convert.ToString(Session["KullaniciAdi"]) + "'";
                                        /*Kullanici Bilgileri*/
                string sql2 = "select * from KullaniciTable where KullaniciAdi=" + KulAd;
                SqlDataAdapter adaptor2 = new SqlDataAdapter(sql2, baglan2);
                DataTable dt2 = new DataTable();
                adaptor2.Fill(dt2);
                Label1.Text = dt2.Rows[0]["Adi"].ToString();
                Label2.Text = dt2.Rows[0]["Soyadi"].ToString();
                Image1.ImageUrl = dt2.Rows[0]["KullaniciFoto"].ToString();

                                        /*Kitap Okuma*/
                
                DataSet okunankitap = Islemler.okunankitap(Kullaniciadi);
                GridView1.DataSource = okunankitap.Tables[0];
                GridView1.DataBind();

                                        /*Puan Tablosu*/
                
                DataSet KitapPuan = Islemler.KitapPuan(Kullaniciadi);
                GridView2.DataSource = KitapPuan.Tables[0];
                GridView2.DataBind();

                                        /*Yorum/inceleme Tablosu*/

                DataSet KitapInceleme = Islemler.KitapInceleme(Kullaniciadi);
                GridView3.DataSource = KitapInceleme.Tables[0];
                GridView3.DataBind();

                                        /*Alıntı Tablosu*/
                DataSet Alintilar = Islemler.Alintilar(Kullaniciadi);
                GridView4.DataSource = Alintilar.Tables[0];
                GridView4.DataBind();

                                        /*Mesajlar Tablosu*/
                DataSet Mesajlar = Islemler.Mesaj(Kullaniciadi);
                GridView5.DataSource = Mesajlar.Tables[0];
                GridView5.DataBind();


            }


            
        }
    }
}