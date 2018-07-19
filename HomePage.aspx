<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="KutuphaneVize.HomePage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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
            #Menu ul li{
                list-style: none;
                position: relative;
                margin: 0 auto;
                width: 500px;
                bottom:10px;
            left: 0px;
        }
            #Menu ul li a{
                text-decoration: none;
                float: left;
                padding: 15px 30px;
                color:#fff;
            }
            #Menu ul li a:hover{
                color:	#343A40;
            }
            .Search{
                width: 200px;
                position: relative;
                margin: 0 auto;
                padding:5px 15px;
                border-radius: 20px;
                border: 1px solid #000;
            }
            #Content{
                width:1200px;
                margin:0 auto;
            }
            #LeftMenu{
                width:400px;
                position:relative;
                float:left;
                background-color:#999C9F;
                border:1px solid #000;
                border-top:none;
                height:800px;
            }
            #RightContent{
                border-right: 1px solid #000;
                border-bottom: 1px solid #000;
                width:797px;
                position:relative;
                float:left;
                background-color:#999C9F;
                height:800px;
                
        }
            .aramalar{
                height:200px;
                position:relative;

            }
            #LeftMenu p{
                text-align:center;
                font-weight:bold;
                font-size:15px;
                color:#000;
            }
            .Grids{
                position:relative;
                margin:0 auto;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                                 <!--Menu-->
    <div id="NavBar">
        <h1 style="color:#fff; position:relative; top:10px;">Erciyes Üniversitesi Kitaplık</h1>
       <div id="Menu">
            <ul>
                <li><a href="LoginRegisterPage.aspx">Çıkış Yap</a></li>
                <li><a href="Kitaplar.aspx">Kitaplar</a></li>
                <li><a href="Yazarlar.aspx">Yazarlar</a></li>
                <li><a href="/ProfilePage.aspx">Profilim</a></li>
            </ul>
        </div>
        <%--<input type="text" id="Search" placeholder="Ne Aramıştınız ?"/>--%>
    </div>
                                <!--Content-->
        <div id="Content">
            <div id="LeftMenu">
                <p>Kullanıcı Arama</p>
                <div id="KullaniciArama" class="aramalar">
                <asp:TextBox ID="TextBox1" AutoPostBack="true" CssClass="Search" runat="server"  ></asp:TextBox>
        <asp:GridView ID="GridView1" CssClass="Grids" runat="server" AutoGenerateColumns="False" DataKeyNames="KullaniciAdi" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="KullaniciAdi" HeaderText="KullaniciAdi" ReadOnly="True" SortExpression="KullaniciAdi"></asp:BoundField>
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

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:KütüphaneConnectionString %>' SelectCommand="SELECT [KullaniciAdi] FROM [KullaniciTable] WHERE ([KullaniciAdi] LIKE '%' + @KullaniciAdi + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="KullaniciAdi" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
                </div>
                <p>Kitap Arama</p>
                <div id="KitapArama"  class="aramalar">
                <asp:TextBox ID="TextBox2" AutoPostBack="true" CssClass="Search" runat="server"></asp:TextBox>
                <asp:GridView ID="GridView2" CssClass="Grids" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="KitapAdi" HeaderText="KitapAdi" SortExpression="KitapAdi" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KütüphaneConnectionString %>" SelectCommand="SELECT [KitapAdi] FROM [KitaplarTable] WHERE ([KitapAdi] LIKE '%' + @KitapAdi + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" DefaultValue="Kitap Adi" Name="KitapAdi" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    </div>
                <p>Yazar Arama</p>
                <div id="YazarArama" class="aramalar">
                    <asp:TextBox ID="TextBox3" AutoPostBack="true" CssClass="Search" runat="server"></asp:TextBox>
                    <asp:GridView ID="GridView3" CssClass="Grids" runat="server" AutoGenerateColumns="False" DataKeyNames="YazarAdiSoyadi" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="YazarAdiSoyadi" HeaderText="YazarAdiSoyadi" ReadOnly="True" SortExpression="YazarAdiSoyadi" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:KütüphaneConnectionString %>" SelectCommand="SELECT [YazarAdiSoyadi] FROM [YazarlarTable] WHERE ([YazarAdiSoyadi] LIKE '%' + @YazarAdiSoyadi + '%')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox3" DefaultValue="Yazar Adı" Name="YazarAdiSoyadi" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div id="RightContent">

                <p>Kullanıcı Öneri Bir Aynı Kitaplara Aynı Puanları Veren Kullanıcılar</p>
                <asp:GridView ID="GridView4" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <p>Kullanıcı Öneri İki  Verdiği puanlardan aynı kitaplara aynı puanları veren kullanıcılar</p>
                <asp:GridView ID="GridView5" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <p>Kullanıcı Öneri Üç  Kullanıcı Öneri 1 ve Kullanıcı Öneri 2 den gelen kullanıcıların okuduğu ama giriş yapmış kullanıcının okumadığı kitaplar</p>
                <asp:GridView ID="GridView6" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>




            </div>
            
        </div>
    </form>
    
</body>
</html>
