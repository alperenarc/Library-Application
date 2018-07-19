<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kitaplar.aspx.cs" Inherits="KutuphaneVize.Kitaplar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kitaplar</title>
    <style>
        body{
            margin:0;
            padding:0;
            text-align:center;

        }
        .Content{
            height:600px;
            background-color:#85A300;
        }
        #GridView1{
            position:relative;
            margin:0 auto;
        }
        #GridView2{
            position:relative;
            margin:0 auto;
        }
        #Label1{
            color:#fff;
            font-size:20px;
            }
        #Label2{
            color:#fff;
            font-size:20px;
        
        }
        #Button1{
            border-radius:20px;
            width:200px;
            height:50px;
            background-color:#999C9F;
            border:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Content">
            <p><asp:Label ID="Label1" runat="server" Text="Okunma Sayısına Göre Sıralama "></asp:Label></p>
            <p><asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView></p>
            <p><asp:Label ID="Label2" runat="server" Text="Puan Ortalamasına Göre Sıralama"></asp:Label></p>
            <p><asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView></p>
            <asp:Button ID="Button1" runat="server" Text="Anasayfaya Dön" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
