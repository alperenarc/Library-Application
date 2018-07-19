using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace KutuphaneVize
{
    public class Islemler
    {
        public object MessageBox { get; private set; }

        public static bool Login(int Sifre, string KullaniciAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select * from KullaniciTable where KullaniciAdi=@pka and Sifre=@pks";
            SqlCommand komut = new SqlCommand();
            komut.CommandText = sql;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@pka", KullaniciAdi);
            komut.Parameters.AddWithValue("@pks", Sifre);
            DataSet sonucDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            adaptor.Fill(sonucDS);
            baglanti.Close();
            bool sonuc = false;
            if (sonucDS.Tables[0].Rows.Count > 0)
                sonuc = true;
            else
                sonuc = false;
            return sonuc;
        }

        public static DataSet okunankitap(string kullaniciadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select KitapAdi from KitapOkumaTable where KullaniciAdi=" + kullaniciadi;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        
        public static DataSet KitapInceleme(string kullaniciadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select KitapAdi,Yorum from KitapIncelemeTable where KullaniciAdi=" + kullaniciadi;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static DataSet Mesaj(string kullaniciadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select GonderenId,Baslik,Mesaj,Tarih from MesajTable where GidenId=" + kullaniciadi;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static DataSet KitapPuan(string kullaniciadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select KitapAdi,KitapPuan from KitapPuanTable where KullaniciAdi=" + kullaniciadi;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static DataSet KullaniciCekme(string kullaniciadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select KitapAdi,KitapPuan from KitapPuanTable where KullaniciAdi=" + kullaniciadi;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static DataSet Alintilar(string kullaniciadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select KitapAdi,SayfaNo,AlintiCumle from AlintiTable where KullaniciAdi=" + kullaniciadi;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static bool LoginAdmin(int YoneticiSifre, string YoneticiAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select * from YoneticiTable where YoneticiAdi=@pka and YoneticiSifre=@pks";
            SqlCommand komut = new SqlCommand();
            komut.CommandText = sql;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@pka", YoneticiAdi);
            komut.Parameters.AddWithValue("@pks", YoneticiSifre);
            DataSet sonucDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            adaptor.Fill(sonucDS);
            baglanti.Close();
            bool sonuc = false;
            if (sonucDS.Tables[0].Rows.Count > 0)
                sonuc = true;
            else
                sonuc = false;
            return sonuc;
        }

        public static void KullaniciEkle(string KullaniciAdi, string Adi,string Soyadi, int Sifre,string DogumYeri,string DogumTarihi,string Emaili,string KullaniciFoto)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into KullaniciTable (KullaniciAdi,Adi,Soyadi,Sifre,DogumYeri,DogumTarihi,EMaili,KullaniciFoto) values(@pkullaniciadi,@padi,@psoyadi,@psifre,@pdogumyeri,@pdogumtarihi,@pemaili,@pkullanicifoto)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pkullaniciadi", KullaniciAdi);
            komut.Parameters.AddWithValue("@padi", Adi);
            komut.Parameters.AddWithValue("@psoyadi", Soyadi);
            komut.Parameters.AddWithValue("@psifre", Sifre);
            komut.Parameters.AddWithValue("@pdogumyeri", DogumYeri);
            komut.Parameters.AddWithValue("@pdogumtarihi", DogumTarihi);
            komut.Parameters.AddWithValue("@pemaili", Emaili);
            komut.Parameters.AddWithValue("@pkullanicifoto", KullaniciFoto);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }

        public static void MesajGonder(string GidenId, string GonderenId, string Tarih, string Baslik, string Mesaj)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into MesajTable (GidenId,GonderenId,Tarih,Baslik,Mesaj)" +
                " values(@pgidenid,@pgonderenid,@ptarih,@pbaslik,@pmesaj)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pgidenid", GidenId);
            komut.Parameters.AddWithValue("@pgonderenid", GonderenId);
            komut.Parameters.AddWithValue("@ptarih", Tarih);
            komut.Parameters.AddWithValue("@pbaslik", Baslik);
            komut.Parameters.AddWithValue("@pmesaj", Mesaj);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static void YazarEkle(string YazarAdiSoyadi, string DogumTarihi, string OlumTarihi, string Eserleri, string YazarFoto)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into YazarlarTable(YazarAdiSoyadi,DogumTarihi,OlumTarihi,Eserleri,YazarFoto) " +
                "values(@padisoyadi,@pdogumtarihi,@polumtarihi,@peserleri,@pyazarfoto)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@padisoyadi", YazarAdiSoyadi);
            komut.Parameters.AddWithValue("@pdogumtarihi", DogumTarihi);
            komut.Parameters.AddWithValue("@polumtarihi", OlumTarihi);
            komut.Parameters.AddWithValue("@peserleri", Eserleri);
            komut.Parameters.AddWithValue("@pyazarfoto", YazarFoto);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static DataSet YazarlarıCek()
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select * from YazarlarTable";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            DataSet YazarlarDS = new DataSet();
            baglanti.Open();
            adaptor.Fill(YazarlarDS);
            baglanti.Close();
            return YazarlarDS;
        }

        
        public static DataSet KitaplariCek()
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select * from KitaplarTable";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            DataSet KitaplarDS = new DataSet();
            baglanti.Open();
            adaptor.Fill(KitaplarDS);
            baglanti.Close();
            return KitaplarDS;
        }
        
        public static void KitapEkle(string YazarAdi,string KitapAdi,int Sayfasi,string Yayinevi,string KitapFoto)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into KitaplarTable(YazarId,KitapAdi,Sayfasi,Yayinevi,KitapFoto)" +
                " values(@pyazarıd,@pkitapadi,@psayfasi,@pyayinevi,@kitapfoto)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pyazarıd", YazarAdi);
            komut.Parameters.AddWithValue("@pkitapadi", KitapAdi);
            komut.Parameters.AddWithValue("@psayfasi", Sayfasi);
            komut.Parameters.AddWithValue("@pyayinevi", Yayinevi);
            komut.Parameters.AddWithValue("@kitapfoto", KitapFoto);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }

        public static bool OkudumKontrol(string KullaniciAdi, string KitapAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "Select * from KitapOkumaTable where KullaniciAdi=@pkullaniciadi and KitapAdi=@pkitapadi";
            SqlCommand komut = new SqlCommand();
            komut.CommandText = sql;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@pkullaniciadi", KullaniciAdi);
            komut.Parameters.AddWithValue("@pkitapadi", KitapAdi);
            DataSet sonucDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            adaptor.Fill(sonucDS);
            baglanti.Close();
            bool sonuc = false;
            if (sonucDS.Tables[0].Rows.Count > 0)
                sonuc = true;
            else
                sonuc = false;
            return sonuc;
        }

        public static void OkudumEkle(string KullaniciAdi, int KitapId, string KitapAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into KitapOkumaTable (KullaniciAdi,KitapID,KitapAdi) values (@pkullaniciadi,@pkitapID,@pkitapadi)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pkitapadi", KitapAdi);
            komut.Parameters.AddWithValue("@pkullaniciadi", KullaniciAdi);
            komut.Parameters.AddWithValue("@pkitapID", KitapId);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static void AlintiEkle(string KullaniciAdi, int KitapId, string KitapAdi,int SayfaNo,string AlintiCumle)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into AlintiTable (KullaniciAdi,KitapID,KitapAdi,SayfaNo,AlintiCumle) " +
                "values (@pkullaniciadi,@pkitapID,@pkitapadi,@psayfano,@palinticumle)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pkullaniciadi", KullaniciAdi);
            komut.Parameters.AddWithValue("@pkitapID", KitapId);
            komut.Parameters.AddWithValue("@pkitapadi", KitapAdi);
            komut.Parameters.AddWithValue("@psayfano", SayfaNo);
            komut.Parameters.AddWithValue("@palinticumle", AlintiCumle);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static void YorumEkle(string KullaniciAdi, int KitapId, string KitapAdi, string Yorum)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into KitapIncelemeTable (KullaniciAdi,KitapID,KitapAdi,Yorum) " +
                "values (@pkullaniciadi,@pkitapID,@pkitapadi,@pyorum)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pkullaniciadi", KullaniciAdi);
            komut.Parameters.AddWithValue("@pkitapID", KitapId);
            komut.Parameters.AddWithValue("@pkitapadi", KitapAdi);
            komut.Parameters.AddWithValue("@pyorum", Yorum);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static void PuanEkle(string KullaniciAdi, int KitapId, string KitapAdi, int KitapPuan)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into KitapPuanTable (KullaniciAdi,KitapID,KitapAdi,KitapPuan) " +
                "values (@pkullaniciadi,@pkitapID,@pkitapadi,@ppuan)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pkullaniciadi", KullaniciAdi);
            komut.Parameters.AddWithValue("@pkitapID", KitapId);
            komut.Parameters.AddWithValue("@pkitapadi", KitapAdi);
            komut.Parameters.AddWithValue("@ppuan", KitapPuan);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static int KitapIDCek(string KitapAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select * from KitaplarTable where KitapAdi= '" + KitapAdi + "'";
            SqlDataAdapter adaptor = new SqlDataAdapter(sql, baglanti);
            DataTable dt = new DataTable();
            adaptor.Fill(dt);
            int kitapID = Convert.ToInt32(dt.Rows[0]["KitapId"]);
            return kitapID;

        }
        public static DataSet KullaniciOneri(string kullaniciadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select KitapPuan  from KitapPuanTable where KullaniciAdi= '" + kullaniciadi + "'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static int KullaniciSayisi( string KitapAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            baglanti.Open();
            string sql = "select count(KullaniciAdi)  from KitapPuanTable where KitapAdi= '" + KitapAdi + "'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            int count = Convert.ToInt32(komut.ExecuteScalar());
            baglanti.Close();
            return count;
        }
        public static int KitapPuanCekme(string KitapAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            baglanti.Open();
            string sql = "select SUM(KitapPuan)  from KitapPuanTable where KitapAdi= '" + KitapAdi + "'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            int count = Convert.ToInt32(komut.ExecuteScalar());
            baglanti.Close();
            return count;
        }
        public static int KitapOkunmaSayisi(string KitapAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            baglanti.Open();
            string sql = "select COUNT(KitapAdi)  from KitapOkumaTable where KitapAdi= '" + KitapAdi + "'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            int count = Convert.ToInt32(komut.ExecuteScalar());
            baglanti.Close();
            return count;
        }
        public static DataSet PopularKitaplar()
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "SELECT KitapAdi, COUNT(KullaniciAdi) AS OkunmaSayisi FROM KitapOkumaTable GROUP BY KitapAdi ORDER BY OkunmaSayisi DESC ";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static DataSet PopularYazarlar()
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "SELECT YazarId ,COUNT(YazarId) AS OkunmaSayisi FROM KitapOkumaTable INNER JOIN KitaplarTable ON KitapOkumaTable.KitapAdi = KitaplarTable.KitapAdi GROUP BY YazarId ORDER BY OkunmaSayisi DESC ";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }

        public static DataSet Yuksekpuanlikitap()
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select KitapAdi,avg(KitapPuan) AS Puan FROM KitapPuanTable GROUP BY KitapAdi ORDER BY Puan DESC";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }

        public static DataSet KullaniciOneriBir(string KullaniciAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "Select KitapOkumaTable.KullaniciAdi,Count(KitapOkumaTable.KitapId) as OrtakKitapSayisi from KitapOkumaTable where KitapOkumaTable.KitapId IN(Select KitapOkumaTable.KitapId FROM KitapOkumaTable WHERE KitapOkumaTable.KullaniciAdi = '"+KullaniciAdi+"') and KullaniciAdi!= '"+KullaniciAdi+"'group by KitapOkumaTable.KullaniciAdi";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }

        public static DataSet KullaniciOneriİki(string KullaniciAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "Select KullaniciAdi From KullaniciTable WHERE KullaniciTable.KullaniciAdi IN ( Select KitapPuanTable.KullaniciAdi from KitapPuanTable where KitapPuanTable.KitapPuan In(Select KitapPuan FROM KitapPuanTable WHERE KitapPuanTable.KullaniciAdi = '" + KullaniciAdi + "') and KitapPuanTable.KullaniciAdi != '" + KullaniciAdi + "' INTERSECT Select KullaniciAdi from  KitapPuanTable where KitapPuanTable.KitapId In(Select KitapPuanTable.KitapId FROM KitapPuanTable WHERE KitapPuanTable.KullaniciAdi= '" + KullaniciAdi + "') and KullaniciAdi!= '" + KullaniciAdi + "')";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
        public static DataSet KullaniciOneriUc(string KullaniciAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "Select* From KitaplarTable where KitaplarTable.KitapId Not in(Select Distinct(KitapOkumaTable.KitapId) From KitapOkumaTable where KitapOkumaTable.KullaniciAdi in (Select KitapOkumaTable.KullaniciAdi from KitapOkumaTable, KullaniciTable where KitapOkumaTable.KitapId in (Select KitapOkumaTable.KitapId FROM KitapOkumaTable WHERE KitapOkumaTable.KullaniciAdi = '"+KullaniciAdi+"')group by KitapOkumaTable.KullaniciAdi Union(Select KullaniciAdi From KullaniciTable WHERE KullaniciTable.KullaniciAdi IN (Select KitapPuanTable.KullaniciAdi from KitapPuanTable where KitapPuanTable.KitapPuan In(Select KitapPuan FROM KitapPuanTable WHERE KitapPuanTable.KullaniciAdi= '"+KullaniciAdi+"') and KitapPuanTable.KullaniciAdi != '"+KullaniciAdi+"' INTERSECT Select KullaniciAdi from  KitapPuanTable where KitapPuanTable.KitapId In(Select KitapPuanTable.KitapId FROM KitapPuanTable WHERE KitapPuanTable.KullaniciAdi= '"+KullaniciAdi+"') and KullaniciAdi!= '"+KullaniciAdi+"'))))";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }




























 

    }
}