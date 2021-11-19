
<!DOCTYPE html>
<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        
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
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 15px;
            margin: 4px 2px;
            cursor: pointer;
        }
        a{
            color:white;
        }
        .auto-style1 {
            height: 101px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#003366" Height="200px">
            <center><table border="0">
                <tr>
                    <td class="auto-style1"><asp:Button ID="Button1" runat="server" Text="Domestic Violence" CssClass="button" OnClick="Button1_Click"/></td>
                    <td class="auto-style1"><asp:Button ID="Button2" runat="server" Text="POCSO" CssClass="button"/></td>
                    <td class="auto-style1"><asp:Button ID="Button3" runat="server" Text="Legal Help" CssClass="button"/></td>
                    <td class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Medical Help" CssClass="button"/></td>                    
                </tr>
            </table>
            </center>
            <a href="Admins.aspx"> Admins login </a>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCFF" Height="800px">
        </asp:Panel>
    </form>
</body>
</html>
