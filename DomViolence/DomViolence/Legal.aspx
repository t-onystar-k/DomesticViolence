<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Legal.aspx.vb" Inherits="DomViolence.Legal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        h1 {
            color: white;
            font-size: 50px;
        }

        td {
            color: white;
            padding-bottom: 20px;
            padding-right: 20px;
            padding-left: 20px;
            padding-top: 20px;
        }

        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        .img-container {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            background-color: white;
            width: 15%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }
        body {
            background-image: url("bg1.png");
            background-repeat: no-repeat, repeat;
            background-color: #cccccc;
            background-size:100%;
        }
    </style>
    <meta charset="utf-8" />
    <title>Legal help</title>
</head>
<body>
    <div class="img-container">
        <img src="law.jpg" alt="Avatar" class="avatar">
    </div>
    <center>
        <h1>
            Legal Help Module
        </h1>

    </center>
    <table border="0">

        <tr>
            <td>NAME:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
            <td>AGE:</td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
            <td>PHONE NUMBER:</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>LOCATION:</td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
            <td> NAME OF ACCUSED:</td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>

    </table>
    <center>
        <asp:Button ID="Button1" runat="server" CssClass="button" Text="Button" />
    </center>

</body>
</html>
