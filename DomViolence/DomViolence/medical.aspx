<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="medical.aspx.vb" Inherits="DomViolence.WebForm2" %>

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

    <script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <center>
        <h1>
            Medical Help Registeration
        </h1>
    </center>
    <table border="0">
        <tr>
        <th><label> Name </label></th>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox></td>
            </tr>
        <tr>
            <th> Age: </th>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" onkeypress="return isNumber(event)" required></asp:TextBox>
            </td>
        </tr>

        <tr>
            <th>Address</th>
            <td><asp:TextBox ID="TextBox3" runat="server" required></asp:TextBox></td>
        </tr>
        <tr>
            <th>Phone Number:</th>
            <td>
                 <asp:TextBox ID="TextBox4" runat="server" onkeypress="return isNumber(event)" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>Psychological Assistance Required ? (yes/no)</th>
            <asp:TextBox ID="TextBox5" runat="server" required></asp:TextBox>
        </tr>

        </table>

        <center>
            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Button" />
        </center>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Psycological help required?" />
        </form>
</body>
</html>
