using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneVize
{
    public partial class Mesaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string GidenId = Convert.ToString(Session["KullaniciAdi2"]).ToString(); 
                string GonderenId =Convert.ToString(Session["KullaniciAdi"]).ToString();
                string Tarih = TextBox2.Text;
                string Baslik = TextBox1.Text;
                string Mesaj = TextBox3.Text;
                Islemler.MesajGonder(GidenId, GonderenId, Tarih, Baslik, Mesaj);
                    
                
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Onay", "<script>alert('Mesajınız gönderilmiştir. ');</script>");
            }
            catch 
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Mesaj gönderme işleminizde bir hata oluştu ! ');</script>");


            }







        }
    }
}