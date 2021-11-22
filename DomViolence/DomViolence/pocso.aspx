<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pocso.aspx.vb" Inherits="DomViolence.pocso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .column {
            float: left;
            width: 37%;
            padding: 10px;
            height: 524px;
        }

        h1 {
            color: aquamarine;
            font-size: 50px;
        }

        h2 {
            color: aquamarine;
        }

        td,th {
            color: white;
            padding-bottom: 20px;
            padding-right: 20px;
            padding-left: 20px;
            padding-top: 20px;
        }

        input[type=submit] {
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
            background-image: url("bg3.png");
            background-repeat: no-repeat, repeat;
            background-color: #cccccc;
            background-size: 100%;
        }
    </style>
    <meta charset="utf-8" />
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
<body bgcolor="orange">
    <form id="form1" runat="server">
    <div class="column">
        
            <h2> Complaint Details</h2>
            <table border="0">
                <tr>
                    <th><label> Name </label></th>
                    <td><asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox></td>
                </tr>
                <tr>
                    <th> Age: </th>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" onkeypress="return isNumber(event)" required></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <th>Address</th>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Phone Number:</th>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" onkeypress="return isNumber(event)" required></asp:TextBox>
                    </td>

                </tr>
            </table>
    </div>
    <div class="column">
        <h2>Details about the culprit</h2>
        <table border="0">
            <tr>
                <th><label>Culprit Name:</label></th>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <th><label>Description:</label></th>
                <td><asp:TextBox ID="TextBox6" runat="server" required></asp:TextBox></td>
            </tr>
        </table>

    </div>
    <br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br />
    <center>
    <asp:Button ID="Button1" runat="server" Text="Submit" />
   </center>
 </form>   
</body>
</html>
