<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="KutuphaneVize.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
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
           
                    /*Yazar and Kitap*/
            .Islemler{
                width:1100px;
                height:500px;
                margin:0 auto;
            }
            .Islemler p{
                text-align:center;
            }
            .Yazar{
                float:left;
                background-color:#999C9F;
                width:549px;
                height:100%;
                margin:0 auto;
                border-right:1px solid #000;
                border-left:1px solid #000;
                border-bottom:1px solid #000;
            } 
            
            .Kitap{
                float:left;
                background-color:#999C9F;
                width:548px;
                height:100%;
                border-right:1px solid #000;
                border-bottom:1px solid #000;
            }
            #DüzenleSil{
                float:left;
                background-color:#999C9F;
                width:1097.5px;
                height:100%;
                border:1px solid #000;
                border-top:none;
            }
            #DüzenleSil h1{
                color:#85A300;
            }
            .Kitap h1{
                color:#85A300;
            }
            .Yazar h1{
                color:#85A300;
            }

            .Textboxes{
                border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius:15px;
                padding:5px 5px;
                height:15px;
                position:relative;
                float:right;
                right:120px;
            top: 0px;
        }
            .Textboxes2{
                border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius:15px;
                padding:5px 5px;
                height:25px;
                width:150px;
                position:relative;
                float:right;
                right:120px;
            top: 0px;
        }
            #FileUpload1{
                position:relative;
                margin-left:30px;
                margin:10px;
            }
            .Button{
                border-style: none;
                height:40px;
                width:120px;
                position:relative;
                bottom:10px;
                border-radius:15px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
                    <!--Menu-->
       <div id="NavBar">
            <div id="Menu">
               <h1>Erciyes Üniversitesi Kitaplık</h1>
            </div>
        </div>
                    <!--Content-->

        <div class="Islemler">
            <div class="Yazar">

                <h1>Yazar Ekle</h1>
                <p><asp:Label ID="Label1" CssClass="Labels" runat="server" Text="Adı Soyadı"></asp:Label><asp:TextBox ID="TextBox1" CssClass="Textboxes" runat="server"></asp:TextBox></p>
                <p><asp:Label ID="Label3" runat="server" Text="Doğum Tarihi"><asp:TextBox ID="TextBox3" CssClass="Textboxes" runat="server"></asp:TextBox></asp:Label></p>
                <p><asp:Label ID="Label4" runat="server" Text="Ölüm Tarihi"><asp:TextBox ID="TextBox4" CssClass="Textboxes" runat="server"></asp:TextBox></asp:Label></p>
                <p><asp:Label ID="Label5" runat="server" Text="Eserleri"><asp:TextBox ID="TextBox5" CssClass="Textboxes" runat="server"></asp:TextBox></asp:Label></p>
                <p><asp:Label ID="Label6" runat="server" Text="Fotoğrafı"></asp:Label><asp:FileUpload ID="FileUpload1" runat="server" /></p>
                <asp:Button class="Button" runat="server" Text="Kaydet" OnClick="Button1_Click" />
            </div>
            <div class="Kitap">
                <h1>Kitap Ekle</h1>
                <p><asp:Label ID="Label7" CssClass="Labels" runat="server" Text="Yazar Adı"></asp:Label><asp:DropDownList ID="DropDownList1" CssClass="Textboxes2" runat="server"></asp:DropDownList></p>
                <p><asp:Label ID="Label8" CssClass="Labels" runat="server" Text="Kitap Adı"></asp:Label><asp:TextBox ID="TextBox7" CssClass="Textboxes" runat="server"></asp:TextBox></p>
                <p><asp:Label ID="Label9" CssClass="Labels" runat="server" Text="Sayfası"></asp:Label><asp:TextBox ID="TextBox8" CssClass="Textboxes" runat="server"></asp:TextBox></p>
                <p><asp:Label ID="Label10" CssClass="Labels" runat="server" Text="Yayınevi"></asp:Label><asp:TextBox ID="TextBox9" CssClass="Textboxes" runat="server"></asp:TextBox></p>
                <p><asp:Label ID="Label2" runat="server" Text="Fotoğrafı"></asp:Label><asp:FileUpload ID="FileUpload2" runat="server" /></p>
                <asp:Button class="Button" runat="server" Text="Kaydet" OnClick="Button2_Click" />
            </div>
            <div id="DüzenleSil" >
                <h1>Kitap Düzenle / Sil</h1>
                <asp:GridView ID="GridView1" AlternatingRowStyle-CssClass="GridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="KitapId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="KitapId" HeaderText="KitapId" InsertVisible="False" ReadOnly="True" SortExpression="KitapId" />
                        <asp:BoundField DataField="YazarId" HeaderText="YazarId" SortExpression="YazarId" />
                        <asp:BoundField DataField="KitapAdi" HeaderText="KitapAdi" SortExpression="KitapAdi" />
                        <asp:BoundField DataField="Sayfasi" HeaderText="Sayfasi" SortExpression="Sayfasi" />
                        <asp:BoundField DataField="YayinEvi" HeaderText="YayinEvi" SortExpression="YayinEvi" />
                        <asp:BoundField DataField="KitapFoto" HeaderText="KitapFoto" SortExpression="KitapFoto" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KütüphaneConnectionString %>" DeleteCommand="DELETE FROM [KitaplarTable] WHERE [KitapId] = @KitapId" InsertCommand="INSERT INTO [KitaplarTable] ([YazarId], [KitapAdi], [Sayfasi], [YayinEvi], [KitapFoto]) VALUES (@YazarId, @KitapAdi, @Sayfasi, @YayinEvi, @KitapFoto)" SelectCommand="SELECT * FROM [KitaplarTable]" UpdateCommand="UPDATE [KitaplarTable] SET [YazarId] = @YazarId, [KitapAdi] = @KitapAdi, [Sayfasi] = @Sayfasi, [YayinEvi] = @YayinEvi, [KitapFoto] = @KitapFoto WHERE [KitapId] = @KitapId">
                    <DeleteParameters>
                        <asp:Parameter Name="KitapId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="YazarId" Type="String" />
                        <asp:Parameter Name="KitapAdi" Type="String" />
                        <asp:Parameter Name="Sayfasi" Type="Int32" />
                        <asp:Parameter Name="YayinEvi" Type="String" />
                        <asp:Parameter Name="KitapFoto" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="YazarId" Type="String" />
                        <asp:Parameter Name="KitapAdi" Type="String" />
                        <asp:Parameter Name="Sayfasi" Type="Int32" />
                        <asp:Parameter Name="YayinEvi" Type="String" />
                        <asp:Parameter Name="KitapFoto" Type="String" />
                        <asp:Parameter Name="KitapId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <h1>Yazar Düzenle / Sil</h1>
                <asp:GridView ID="GridView2" AlternatingRowStyle-CssClass="GridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="YazarAdiSoyadi" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="YazarAdiSoyadi" HeaderText="YazarAdiSoyadi" ReadOnly="True" SortExpression="YazarAdiSoyadi" />
                        <asp:BoundField DataField="DogumTarihi" HeaderText="DogumTarihi" SortExpression="DogumTarihi" />
                        <asp:BoundField DataField="OlumTarihi" HeaderText="OlumTarihi" SortExpression="OlumTarihi" />
                        <asp:BoundField DataField="Eserleri" HeaderText="Eserleri" SortExpression="Eserleri" />
                        <asp:BoundField DataField="YazarFoto" HeaderText="YazarFoto" SortExpression="YazarFoto" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KütüphaneConnectionString %>" DeleteCommand="DELETE FROM [YazarlarTable] WHERE [YazarAdiSoyadi] = @YazarAdiSoyadi" InsertCommand="INSERT INTO [YazarlarTable] ([YazarAdiSoyadi], [DogumTarihi], [OlumTarihi], [Eserleri], [YazarFoto]) VALUES (@YazarAdiSoyadi, @DogumTarihi, @OlumTarihi, @Eserleri, @YazarFoto)" SelectCommand="SELECT * FROM [YazarlarTable]" UpdateCommand="UPDATE [YazarlarTable] SET [DogumTarihi] = @DogumTarihi, [OlumTarihi] = @OlumTarihi, [Eserleri] = @Eserleri, [YazarFoto] = @YazarFoto WHERE [YazarAdiSoyadi] = @YazarAdiSoyadi">
                    <DeleteParameters>
                        <asp:Parameter Name="YazarAdiSoyadi" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="YazarAdiSoyadi" Type="String" />
                        <asp:Parameter Name="DogumTarihi" Type="String" />
                        <asp:Parameter Name="OlumTarihi" Type="String" />
                        <asp:Parameter Name="Eserleri" Type="String" />
                        <asp:Parameter Name="YazarFoto" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="DogumTarihi" Type="String" />
                        <asp:Parameter Name="OlumTarihi" Type="String" />
                        <asp:Parameter Name="Eserleri" Type="String" />
                        <asp:Parameter Name="YazarFoto" Type="String" />
                        <asp:Parameter Name="YazarAdiSoyadi" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            
                
            
            
                
        </div>
        
    </form>
</body>
</html>
