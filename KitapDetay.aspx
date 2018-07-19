<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KitapDetay.aspx.cs" Inherits="KutuphaneVize.KitapDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kitap Detay</title>
    <style>
        body{
            margin:0;
            padding:0;
            text-align:center;
        }
        #header{
            height:400px;
            background-color:#8B8E91;
            position:relative;
            border:1px solid #000;
            border-right:none;
            border-left:none;
        }
        #Image1{
            width:180px;
            position:relative;
            height:270px;
            top:50px;
            border:1px solid #000;
        }
        .Labels{
            font-size:18px;
            color:#000;
        }
        #header p{
            width:200px;
            position:relative;
            bottom:150px;
            left:500px;
            text-align:left;
            color:#fff;
        }
        .Baslik{
            text-align:left;
            position:relative;
            right:100px;
            font-size:15px;
            padding-bottom:5px;
            color:#fff;
        }
        #Baslik{
            text-align:left;
            position:relative;
            right:100px;
            bottom:150px;

        }
        .Button {
                border-style: none;
            border-color: inherit;
            border-width: medium;
            height:40px;
                width:120px;
                position:relative;
                border-radius:15px;
                background-color:#85A300;
                color:#000;
        }
       
        .Texts{
                border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius:15px;
                padding:5px 5px;
                height:15px;
                position:relative;
        }
        #Alinti{
                background-color:#85A300;
                height:250px;
        }
        #Yorum{
                background-color:#8B8E91;
                height:250px;
        }
        #Puan{
                background-color:#85A300;
                height:250px;
        }
        #Button1{
            background-color:#85A300;
            position:relative;
            bottom:260px;
            width:200px;
        }
        #Button2{
            background-color:#8B8E91;
            position:relative;
            top:50px;
            right:80px;
            width:200px;
        }
        #Button3{
            background-color:#85A300;
            position:relative;
            top:50px;
            width:200px;
            right:80px;
        }
        #Button4{
            background-color:#8B8E91;
        }
        .Istatistikler{
            position:relative;
            bottom:350px;
            left:400px;
        }
        #TextBox2{
            position:relative;
            left:100px;
        }
        #TextBox3{
            position:relative;
            left:100px;
        }
        #Button5{
            background-color:#85A300;
            position:relative;
            top: -724px;
            left: -1px;
        }
        #Button6{
            background-color:#85A300;
            position:relative;
            bottom:400px;
            left:400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">

            <asp:Image ID="Image1" runat="server" />
            
            <p><asp:Label ID="Label1" CssClass="Labels" runat="server" Text="Label"></asp:Label></p>
            <p><asp:Label ID="Label2" CssClass="Labels" runat="server" Text="Label"></asp:Label></p>
            <p><asp:Label ID="Label3" CssClass="Labels" runat="server" Text="Label"></asp:Label></p>
            <p><asp:Label ID="Label4" CssClass="Labels" runat="server" Text="Label"></asp:Label></p>
            
            <div id="Baslik"> 
            <p class="Baslik">Kitap Adı :</p>
            <p class="Baslik">Kitap Yazarı :</p>
            <p class="Baslik">Sayfası :</p>
            <p class="Baslik">Yayınevi :</p>
            </div> 
            <asp:Button ID="Button6" runat="server" Text="Ayrıntı Göster" OnClick="Button6_Click" />
            <asp:Button ID="Button1" CssClass="Button" runat="server" Text="Okudum olarak İşaretle" OnClick="Button1_Click" />
            <div class="Istatistikler">
                <p>Kitabın Ortalama Puanı = <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></p>
                <p>Kitabın Okunma Sayısı = <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></p>
            </div>
            <asp:Button ID="Button5" runat="server" Text="Anasayfaya Dön" OnClick="Button5_Click" />
        </div>
        <div id="Content">
            
            <!-- Alıntı Yapma -->
            <div id="Alinti">
                <p>Sayfa No</p>
                <asp:TextBox ID="TextBox1" CssClass="Texts"  runat="server"></asp:TextBox>
                <p>Alıntı Cümle</p>
                <asp:TextBox ID="TextBox2" CssClass="Texts" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" CssClass="Button" runat="server" Text="Alinti Ekle" OnClick="Button2_Click" />
            </div>
            <!-- Yorum Yapma -->
            <div id="Yorum">
                <p>Yorum</p>
                <asp:TextBox ID="TextBox3" CssClass="Texts"  runat="server"></asp:TextBox>
                <asp:Button ID="Button3" CssClass="Button" runat="server" Text="Yorum Ekle" OnClick="Button3_Click" />
            </div>
            <!-- Puan Verme -->
            <div id="Puan">
                <p>Puan</p>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button4" CssClass="Button" runat="server" Text="Puan Ekle" OnClick="Button4_Click" />
            </div>
        </div>
        
    </form>
</body>
</html>
