<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginRegisterPage.aspx.cs" Inherits="KutuphaneVize.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
                        /*Menu*/
            body{
                margin:0px;
                padding:0px;
                text-align:center;
            }
            #NavBar{
                height: 120px;
                border-bottom: 1px solid #000;
                background-color: #85A300;
            }
            #NavBar h1{
                color:#fff;
                position:relative;
                top:40px;

            }
           
                    /*Login and register*/
            .Logreg{
                width:1100px;
                height:500px;
                margin:0 auto;
            }
            .Logreg p{
                text-align:center;
            }
            #Login{
                float:left;
                background-color:#999C9F;
                width:549px;
                height:100%;
                margin:0 auto;
                border-right:1px solid #000;
                border-left:1px solid #000;
                border-bottom:1px solid #000;
            } 
            #Login h1{
                text-align:center;
                position:relative;
                top:120px;
                color:#85A300;
            } 
            #Register{
                float:left;
                background-color:#999C9F;
                width:548px;
                height:100%;
                border-right:1px solid #000;
                border-bottom:1px solid #000;
            }
            #Register h1{
                color:#85A300;
            }
            #KullaniciAdi{
                padding-right:5px;
                position:relative;
                top:120px;
            }
            #Sifre{
                padding-right:5px;
                position:relative;
                top:120px;
            }
            
            #Button1 {
                border-style: none;
            border-color: inherit;
            border-width: medium;
            height:40px;
                width:120px;
                position:relative;
                top:140px;
                border-radius:15px;
                background-color:#85A300;
            left: 0px;
            }
            #TextBox2{
                border:none;
                border-radius:15px;
                padding:5px 5px;
                height:15px;
                position:relative;
                top:120px;
            }
            #Button2{
                border-style: none;
                height:40px;
                width:120px;
                position:relative;
                bottom:10px;
                border-radius:15px;
                background-color:#85A300;
            }
            #TextBox1{
                border:none;
                border-radius:15px;
                padding:5px 5px;
                height:15px;
                position:relative;
                top:120px;
            }
            .Texts{
                border:none;
                border-radius:15px;
                padding:5px 5px;
                height:15px;
            }
          
    </style>
</head>
<body>
    <form runat="server">
                         <!--Menu-->
    <div id="NavBar">
       <div id="Menu">
           <h1>Erciyes Üniversitesi Kitaplık</h1>
        </div>
        
    </div>
                        <!--Login and Register-->
    <div class="Logreg">
        <div id="Login">

            <h1>GİRİŞ YAP</h1>
            <p>
                <asp:Label ID="KullaniciAdi" runat="server" Text="Kullanıcı Adı :"/>
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Sifre" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Şifre :"/>
                <asp:TextBox ID="TextBox1" TextMode="Password" runat="server"></asp:TextBox>
            </p>
            <p><asp:Button ID="Button1" CssClass="Buttons" runat="server" Text="Giriş" OnClick="Button1_Click" /></p>
            
        </div>
        <div id="Register">
           
            <h1>KAYIT OL</h1>
            <p>
                <asp:Label ID="DataAd" runat="server" Text="Adınız&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                <asp:Label ID="DataSoyad" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Soyadınız"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="TextBox3" CssClass="Texts" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox4" CssClass="Texts" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="DataSifre" runat="server" Text="Şifre&nbsp;&nbsp;"></asp:Label>
                <asp:Label ID="DataSıfretekrar" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Şifre Tekrar"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="TextBox5" TextMode="Password" CssClass="Texts" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox6" TextMode="Password"  CssClass="Texts" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="DataDogumyer" runat="server" Text="Doğum Yeriniz&nbsp;&nbsp;"></asp:Label>
                <asp:Label ID="DataDogumTarih" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Doğum Tarihiniz"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="TextBox7" CssClass="Texts" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox8" CssClass="Texts" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="DataMail" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mail Adresiniz&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                <asp:TextBox ID="TextBox9" CssClass="Texts" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="DataKullaniciAdi" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kullanıcı Adınız&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                <asp:TextBox ID="TextBox10" CssClass="Texts" runat="server"></asp:TextBox>
            </p>
            <p><asp:Label ID="DataFoto" runat="server" Text="Fotoğraf Ekleyin"></asp:Label></p>
            <p><asp:FileUpload ID="FileUpload1" runat="server" /></p>
            <p><asp:Button ID="Button2" CssClass="Buttons" runat="server" Text="Kaydol" OnClick="Button2_Click" /></p>
        </div>
    </div>
        
                        
        </form>
</body>
</html>
