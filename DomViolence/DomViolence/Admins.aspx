
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("/Women'sDeptLogin.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Response.Redirect("/ChildWelfareLogin.aspx")

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        Response.Redirect("/LegalDeptLogin.aspx")

    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs)
        Response.Redirect("/MedicalLogin.aspx")
    End Sub
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
            background-color:dodgerblue;
        }
        h1{
            color:white;
            font-family:'Comic Sans MS';
            font-size:30px;
        }
        .button {
            background-color:indigo;
            font-family:'Comic Sans MS';
            width:100%;
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
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Admin Login </h1>
            <asp:Button ID="Button1" runat="server" Text="Women's Department" CssClass="button" OnClick="Button1_Click" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Child Welfare Department" CssClass="button" OnClick="Button2_Click" />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Legal Help" CssClass="button" OnClick="Button3_Click" />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Medical Department" CssClass="button" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
