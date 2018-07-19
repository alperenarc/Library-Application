using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace KutuphaneVize
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["giris"]) != true)
                Response.Redirect("LoginRegisterPage.aspx?msg=Oncelikle giris yapmalisiniz");
            else
            {
                if (!IsPostBack)
                {
                    DataSet Yazarcek = Islemler.YazarlarıCek();
                    DropDownList1.DataTextField = "YazarAdiSoyadi";
                    DropDownList1.DataValueField = "YazarAdiSoyadi";
                    DropDownList1.DataSource = Yazarcek.Tables[0];
                    DropDownList1.DataBind();

                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string AdiSoyadi = TextBox1.Text;
            string DogumTarihi = TextBox3.Text;
            string Olumtarihi = TextBox4.Text;
            string Eserleri = TextBox5.Text;

            if (FileUpload1.HasFile)
            {
                string fname = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//YazarPhoto//" + fname);
                string Dosyayolu = "~//YazarPhoto//" + fname.ToString();
                Islemler.YazarEkle(AdiSoyadi, DogumTarihi, Olumtarihi, Eserleri,Dosyayolu);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ONAY", "<script>alert('Kayıt işleminiz başarıyla sonuçlanmıştır.');</script>");
                Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
            }
            else
            {
                Response.Write("Lütfen bir fotoğraf yükleyiniz.");
            }
            
            TextBox1.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string YazarAdiSoyadi = DropDownList1.Text;
            string KitapAdi = TextBox7.Text;
            int Sayfasi = Convert.ToInt32(TextBox8.Text);
            string yayinevi = TextBox9.Text;

            if (FileUpload2.HasFile)
            {
                string fname = FileUpload2.FileName;
                FileUpload2.PostedFile.SaveAs(Server.MapPath(".") + "//KitapPhoto//" + fname);
                string Dosyayolu = "~//KitapPhoto//" + fname.ToString();
                Islemler.KitapEkle(YazarAdiSoyadi, KitapAdi, Sayfasi, yayinevi, Dosyayolu);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ONAY", "<script>alert('Kayıt işleminiz başarıyla sonuçlanmıştır.');</script>");
                Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
            }
            else
            {
                Response.Write("Lütfen bir fotoğraf yükleyiniz.");
            }
            
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            

        }

        protected void ListView1_ItemDeleted(object sender, ListViewDeletedEventArgs e)
        {

        }
    }
}