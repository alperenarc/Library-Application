<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mesaj.aspx.cs" Inherits="KutuphaneVize.Mesaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mesaj Gönder</title>
    <style>
        body{
            margin:0;
            padding:0;
            text-align:center;
            background-color:#272829;
        }
        .Inputs{
            width:300px;
            border-radius:20px;
            padding:5px;
            height:20px;
            border:1px solid #000;
            font-size:15px;
            font-weight:600;
        }
        #TextBox3{
            height:80px;
        }
        #Button1{
            width:100px;
            border-radius:20px;
            padding:5px;
            height:30px;
            border:1px solid #000;
            font-size:15px;
            font-weight:600;
        }
        span{
            text-align:center;
            color:#000;
            font-size:19px;
        }
        .Content{
            background-color:#8B8E91;
            width:500px;
            height:450px;
            position:relative;
            margin:0 auto;
            top:100px;
            border-radius:20px;
            padding-top:50px;
        }
        .color{
            background-color:#444547;
            height:700px;
            width:900px;
            margin:0 auto;
            position:relative;
            top:10px;
            border-radius:30px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="color">
            <div class="Content">
                <span>Başlık</span><p><asp:TextBox ID="TextBox1" CssClass="Inputs" runat="server"></asp:TextBox></p>
                <span>Tarih</span><p><asp:TextBox ID="TextBox2" CssClass="Inputs" runat="server"></asp:TextBox></p>
                <span>Mesaj</span><p><asp:TextBox ID="TextBox3" CssClass="Inputs" runat="server" TextMode="MultiLine"></asp:TextBox></p>
                <p><asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" /></p>
            </div> 
        </div>
    </form>
</body>
</html>
