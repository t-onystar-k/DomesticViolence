
<!DOCTYPE html>
<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("/Regn.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Response.Redirect("/pocso.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        Response.Redirect("/legal.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs)
        Response.Redirect("/medical.aspx")
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        td, th {
            color: white;
            padding-bottom: 20px;
            padding-right: 20px;
            padding-left: 20px;
            padding-top: 20px;
        }
        .button {
            background-color:crimson;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration:solid;
            display: inline-block;
            font-size: 20px;
            margin: 4px 2px;
            cursor: pointer;
        }
        a{
            color:white;
        }
        .auto-style1 {
            height: 101px;
        }
        body
        {
            background-image: url("bg5.png");
            background-repeat: no-repeat, repeat;
            background-color: #cccccc;
            background-size: 100%;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            
                <center><table border="0">
                <tr>
                    <td class="auto-style1"><asp:Button ID="Button1" runat="server" Text="Domestic Violence" CssClass="button" OnClick="Button1_Click"/></td>
                    <td class="auto-style1"><asp:Button ID="Button2" runat="server" Text="POCSO" CssClass="button" OnClick="Button2_Click"/></td>
                    <td class="auto-style1"><asp:Button ID="Button3" runat="server" Text="Legal Help" CssClass="button" OnClick="Button3_Click"/></td>
                    <td class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Medical Help" CssClass="button" OnClick="Button4_Click"/></td>                    
                </tr>
            </table>
            </center>
                              <a href="Admins.aspx">Admin Login</a>
  
    </form>
</body>
</html>
