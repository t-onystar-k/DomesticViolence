<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="mental.aspx.vb" Inherits="DomViolence.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        table
        {
            width:100%;
            height:100%;
        }
        h1 {
            color: darkred;
            font-size: 50px;
        }

        td {
            color: darkred;
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
        body {
            background-image: url("bg4.png");
            background-repeat: no-repeat, repeat;
            background-color: #cccccc;
            background-size: 200%;
        }
        .text-class{
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0px;
            display: inline-block;
            border: 2px solid black;
            box-sizing: border-box;
        }
    </style>
    <title></title>
</head>
<body>
    <center>
        <h1>
            Mental Health
        </h1>
    </center>
    <table border="0">
        <tr>
        <th><label> Firstname </label></th>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <th><label> Middlename: </label></th>
        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <th><label> Lastname: </label></th>
        <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th> Age: </th>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <th>House Name:</th>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th>Area/Place/Locality:</th>
            <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th>Landmark</th>
            <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th>Phone Number:</th>
            <td>
                 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>

        </tr>

        </table>

        <center>
            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Button" />
        </center>
</body>
</html>
