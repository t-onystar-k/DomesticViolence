﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="medical.aspx.vb" Inherits="DomesticViolence.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        h1 {
            color: darkblue;
            font-size: 50px;
        }

        td {
            color: darkblue;
            padding-bottom: 20px;
            padding-right: 20px;
            padding-left: 20px;
            padding-top: 20px;
        }

        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 20px 35px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        body {
            background-image: url("bg5.png");
            background-repeat: no-repeat, repeat;
            background-color: #cccccc;
            background-size: 200%;
        }
    </style>
    <title></title>
</head>
<body bgcolor="yellow">
    <form id="form1" runat="server">
        <div>
    <center>
        <h1>
            Medical Help
        </h1>
    </center>
    <table border="0">

        <tr>
            <td>NAME:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>AGE:</td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>PHONE NUMBER:</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td>LOCATION:</td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            

        </tr>

    </table>
    <center>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </center>
    </div>
    </form>

</body>
</html>
