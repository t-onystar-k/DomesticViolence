<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Regn.aspx.vb" Inherits="DomViolence.Regn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <style>
        h1{
            font-size:40px;
            color:lavenderblush;
        }
        td {
            color: antiquewhite;
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
            background-image: url("bg2.png");
            background-repeat: no-repeat, repeat;
            background-color: #cccccc;
            background-size: 100%;
        }
        #TextArea1 {
            width: 422px;
            height: 77px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>Women's Complaint Portal</h1></center>

    <table border="0">

        <tr>
            <td>NAME:</td>
            <td> 
                <asp:TextBox ID="TextBox1" runat="server" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>AGE:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>PHONE NUMBER:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>LOCATION:</td>
            <td>
                <textarea id="TextArea1"></textarea>
            </td>
        </tr>
        <tr>
            <td> NAME OF ACCUSED:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="426px"></asp:TextBox>
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