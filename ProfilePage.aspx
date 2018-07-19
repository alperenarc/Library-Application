<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="KutuphaneVize.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Page</title>
    <style>
        

        
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
           
                    /*Yazar and Kitap*/
            .Islemler{
                width:1100px;
                height:1200px;
                margin:0 auto;
                text-align:center;
                background-color:#999C9F;
            }
            .Listboxes{
                padding:10px;
                border:1px solid #000;
                margin:0 auto;
            }
            #Image1{
                width:200px;
                height:200px;
                border-radius:100px;
                position:relative;
                top:30px;
            }
            .Labels{
                position:relative;
                font-size:30px;
            }
           .OkunanKitaplar p{
               color:#85A300;
               font-size:20px;
               position:relative;
               top:20px;
               font-weight:bold;
           }
           #HyperLink1{
               position:relative;
               float:right;
               right:100px;
               color:#fff;
               font-size:20px;
               bottom:10px;
               text-decoration:none;
               border:1px solid #000;
           }
           #HyperLink2{
               position:relative;
               float:right;
               right:110px;
               color:#fff;
               font-size:20px;
               bottom:10px;
               text-decoration:none;
               border:1px solid #000;
           }
            
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            
                    <!--Menu-->
       <div id="NavBar">
            <div id="Menu">
               <h1>
                   Hoşgeldin
                   <asp:Label ID="Label1" CssClass="Labels" runat="server" Text="Label"></asp:Label>
                   <asp:Label ID="Label2" CssClass="Labels" runat="server" Text="Label"></asp:Label>
               </h1>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginRegisterPage.aspx">Çıkış Yap</asp:HyperLink> 
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HomePage.aspx">Anasayfaya Dön</asp:HyperLink> 
            </div>
        </div>
                    <!--Content-->

        <div class="Islemler">

            
            <asp:Image ID="Image1" runat="server" />

            <div class="OkunanKitaplar">

                
                <p>Okunan Kitaplar</p>
                <p><asp:GridView ID="GridView1" CssClass="Listboxes" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><!--okunan Kitaplar --></p>
                <p>Verilen Puanlar</p>
                <p><asp:GridView ID="GridView2" CssClass="Listboxes" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><!--Puan Kitaplar --></p>
                <p>Kitap Yorumları</p>
                <p><asp:GridView ID="GridView3" CssClass="Listboxes" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><!--Inceleme Kitaplar --></p>
                <p>Kitaplardan Alıntı</p>
                <p><asp:GridView ID="GridView4" CssClass="Listboxes" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><!--ALıntı Kitaplar --></p>
                <p>Gelen Mesajlar</p>
                <p><asp:GridView ID="GridView5" CssClass="Listboxes" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><!--mesaj Kitaplar --></p>
                
                
                
            </div>

        </div>
                
            
            
                
        
    </form>
</body>
</html>
