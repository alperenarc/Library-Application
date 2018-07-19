using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace KutuphaneVize
{
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=alperenpc;Initial Catalog=Kütüphane;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            string YoneticiAdi = TextBox2.Text;
            int YoneticiSifre = Convert.ToInt32(TextBox1.Text);

            string KullaniciAdi = TextBox2.Text;
            int Sifre = Convert.ToInt32(TextBox1.Text);

            bool varMi = Islemler.Login(Sifre, KullaniciAdi);
            bool yokMu = Islemler.LoginAdmin(YoneticiSifre, YoneticiAdi);
            if (varMi == true)
            {
                Session["giris"] = true;
                Session["KullaniciAdi"] = KullaniciAdi;
                Response.Redirect("HomePage.aspx");
            }
            else if (yokMu==true)
            {
                Session["giris"] = true;
                Session["YoneticiAdi"] = YoneticiAdi;
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Yanlış şifre veya hatalı kullanıcı adı!');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string KullaniciAdi = TextBox10.Text;
            string Adi = TextBox3.Text;
            string Soyadi = TextBox4.Text;
            int Sifre = Convert.ToInt32(TextBox5.Text);
            string DogumYeri = TextBox7.Text;
            string DogumTarihi = TextBox8.Text;
            string EMaili = TextBox9.Text;
            
            if (FileUpload1.HasFile)
            {
                string fname = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//ProfilePhoto//" + fname);
                string Dosyayolu = "~//ProfilePhoto//" + fname.ToString();
                if (TextBox5.Text == TextBox6.Text)
                {
                    Islemler.KullaniciEkle(KullaniciAdi, Adi, Soyadi, Sifre, DogumYeri, DogumTarihi, EMaili, Dosyayolu);
                }
                else
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Şifreler uyuşmuyor!');</script>");

            }
            else
            {
                Response.Write("Lütfen bir fotoğraf yükleyiniz.");
            }
            

            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;

            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}