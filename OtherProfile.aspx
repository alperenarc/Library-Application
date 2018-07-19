<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtherProfile.aspx.cs" Inherits="KutuphaneVize.başkasınınprofili" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profil</title>
    <style>
        #Bilgiler{
            background-color:#999C9F;
            position:relative;
            width:1200px;
            height:800px;
            margin:0 auto;
            padding:0;
            bottom:30px;
            
        }
        body{
             margin:0px;
             padding:0px;
             text-align:center;
        }
        #NavBar{
             height: 150px;
             border-bottom: 1px solid #000;
             background-color: #85A300;
        }
        #Image1{
            width:100px;
            height:100px;
            border:none;
            border-radius:200px;
            margin-right:20px;
            position:relative;
            top:10px;
        }
        .Labels{
            text-align:center;
            font-size:25px;
            color:#000;
            position:relative;
            bottom:25px;
        }
        #Menu{
            position:relative;
            margin:0 auto;
            width:300px;
        }
        .Grids{
            position:relative;
            text-align:center;
            margin:0 auto;
        }
        .Content{
            position:relative;
            width:1200px;
            height:700px;
            margin:0 auto;
            padding:0;
        }
        .Islemler{
            position:relative;
            float:right;
            bottom:50px;
        }
        p{
            text-align:center;
            color:#85A300;
            font-size:30px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
                                         <!--Menu-->
    <div id="NavBar">
       <div id="Menu">
           
           <p>
               <asp:Image ID="Image1" runat="server" />
               <asp:Label ID="Label1" CssClass="Labels" runat="server" Text="Label"></asp:Label>
               <asp:Label ID="Label2" CssClass="Labels" runat="server" Text="Label"></asp:Label>
           </p>
           
        </div>
        <div id="Islemler">
            <asp:Button ID="Button1" runat="server" Text="Mesaj Gönder" OnClick="Button1_Click" />
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/HomePage.aspx" runat="server">Anasayfaya Dön</asp:HyperLink>
        </div>
       
    </div>
        <div class="Content">
            <div id="Bilgiler">
                <p>Okuduğu Kitaplar</p>
                <p><asp:GridView ID="GridView1" CssClass="Grids" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
                <p>Yaptığı İncelemeler</p>
                <p><asp:GridView ID="GridView2" CssClass="Grids" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
                <p>Yaptığı Yorumlar</p>
                <p><asp:GridView ID="GridView3" CssClass="Grids" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
                <p>Veridiği Puanlar</p>
                <p><asp:GridView ID="GridView4" CssClass="Grids" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
                
            </div>

        </div>
        
        
    </form>
</body>
</html>
