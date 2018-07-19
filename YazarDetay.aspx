<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YazarDetay.aspx.cs" Inherits="KutuphaneVize.YazarDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yazar Detay</title>
    <style>
        body{
            margin:0;
            padding:0;
            text-align:center;
        }
        #Header{
            height:400px;
            background-color:#8B8E91;
            position:relative;
            border:1px solid #000;
            border-right:none;
            border-left:none;
        }
        #Image1{
            width:180px;
            height:180px;
            position:relative;
            top:200px;
            left:200px;
            border:1px solid #000;
        }
        .Labels{
            font-size:18px;
            color:#000;
        }
        #Header p{
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
            top:0px;
            padding-bottom:5px;
            color:#fff;
        }
        #Baslik{
            text-align:left;
            position:relative;
            right:100px;
            bottom:320px;

        }
        #GridView1{
            position:relative;
            bottom:250px;
            left:1000px;
            color:#fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Header">
            <p><asp:Image ID="Image1" runat="server" /></p>
            <p><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
            <p><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
            <p><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Eserleri" HeaderText="Eserleri" SortExpression="Eserleri" />
                </Columns>
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KütüphaneConnectionString %>" SelectCommand="SELECT [Eserleri] FROM [YazarlarTable] WHERE ([YazarAdiSoyadi] = @YazarAdiSoyadi)">
                <SelectParameters>
                    <asp:SessionParameter Name="YazarAdiSoyadi" SessionField="YazarAdi" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <div id="Baslik"> 
            <p class="Baslik">Yazar Adı :</p>
            <p class="Baslik">Doğum Tarihi</p>
            <p class="Baslik">Ölüm Tarihi :</p>
            </div> 
        </div>
    </form>
</body>
</html>
