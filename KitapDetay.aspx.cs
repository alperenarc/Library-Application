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
    public partial class KitapDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["giris"]) != true)
                Response.Redirect("LoginRegisterPage.aspx?msg=Oncelikle giris yapmalisiniz");
            else
            {
                string baglan = ConfigurationManager.ConnectionStrings["baglan"].ToString();
                SqlConnection baglan2 = new SqlConnection(baglan);
                

                string KitapAdi = "'"+ Convert.ToString(Session["KitapAdi"]) + "'";

                                        /*Kitap Bilgileri*/
                string sql2 = "select * from KitaplarTable where KitapAdi=" + KitapAdi;
                SqlDataAdapter adaptor2 = new SqlDataAdapter(sql2, baglan2);
                DataTable dt2 = new DataTable();
                adaptor2.Fill(dt2);
                Label1.Text = dt2.Rows[0]["KitapAdi"].ToString();
                Label2.Text = dt2.Rows[0]["YazarId"].ToString();
                Label3.Text = dt2.Rows[0]["Sayfasi"].ToString();
                Label4.Text = dt2.Rows[0]["YayinEvi"].ToString();
                Image1.ImageUrl = dt2.Rows[0]["KitapFoto"].ToString();

                

                Label5.Visible = false;
                Label6.Visible = false;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            string KullaniciAdi = Convert.ToString(Session["KullaniciAdi"]);
            string KitapAdi = Convert.ToString(Session["KitapAdi"]);
            bool varMi = Islemler.OkudumKontrol(KullaniciAdi, KitapAdi);
            int KitapId = Islemler.KitapIDCek(KitapAdi);
            if (varMi == false)
            {
                
                Islemler.OkudumEkle(KullaniciAdi,KitapId,KitapAdi);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Onay", "<script>alert('Kitap kaydınız başarıyla sonuçlanmıştır. ');</script>");

            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Kitap kaydınızda sorun oluşmuştur veya daha önce bir kaydınız bulunduğu için ikinci kez kayıt yapamazsınız ');</script>");

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string KullaniciAdi = Convert.ToString(Session["KullaniciAdi"]);
            string KitapAdi = Convert.ToString(Session["KitapAdi"]);
            int SayfaNo = Convert.ToInt32(TextBox1.Text);
            string AlintiCumle = Convert.ToString(TextBox2.Text);
            int KitapId = Islemler.KitapIDCek(KitapAdi);
            Islemler.AlintiEkle(KullaniciAdi, KitapId, KitapAdi,SayfaNo,AlintiCumle);
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Onay", "<script>alert('Alıntı kaydınız başarıyla sonuçlanmıştır. ');</script>");

            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string KullaniciAdi = Convert.ToString(Session["KullaniciAdi"]);
            string KitapAdi = Convert.ToString(Session["KitapAdi"]);
            string Yorum = Convert.ToString(TextBox3.Text);
            int KitapId = Islemler.KitapIDCek(KitapAdi);
            Islemler.YorumEkle(KullaniciAdi, KitapId, KitapAdi, Yorum);
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Onay", "<script>alert('Yorum kaydınız başarıyla sonuçlanmıştır. ');</script>");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string KullaniciAdi = Convert.ToString(Session["KullaniciAdi"]);
            string KitapAdi = Convert.ToString(Session["KitapAdi"]);
            int KitapPuan = Convert.ToInt32(DropDownList1.SelectedValue);
            int KitapId = Islemler.KitapIDCek(KitapAdi);
            Islemler.PuanEkle(KullaniciAdi, KitapId, KitapAdi, KitapPuan);
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Onay", "<script>alert('Puan kaydınız başarıyla sonuçlanmıştır. ');</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int Puan = Islemler.KitapPuanCekme(Convert.ToString(Session["KitapAdi"]));
            int KisiSayisi = Islemler.KullaniciSayisi(Convert.ToString(Session["KitapAdi"]));
            double Ort = Puan / KisiSayisi;
            Label5.Text = Ort.ToString();
            int Okunmasayisi = Islemler.KitapOkunmaSayisi(Convert.ToString(Session["KitapAdi"]));

            Label6.Text = Okunmasayisi.ToString();
            Label5.Visible = true;
            Label6.Visible = true;
        }
    }
}
