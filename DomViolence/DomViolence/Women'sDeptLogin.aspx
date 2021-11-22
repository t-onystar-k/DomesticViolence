
<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        If TextBox1.Text = "women" And TextBox2.Text = "wom123" Then
            Response.Redirect("/women'sdeptdashbord.aspx")
        End If

    End Sub
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0px;
            display: inline-block;
            border: 2px solid black;
            box-sizing: border-box;
        }

        .button
            {
            background-color: dodgerblue;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            button:hover {
                opacity: 0.8;
            }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: orangered;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }
    </style>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <h1>Women's Welfare Centre Login</h1>
    

    <div class="container">
        <label for="uname"><b>Username</b></label>
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <label for="psw"><b>Password</b></label>
        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>

        <asp:Button ID="Button3" runat="server"  CssClass="button" Text="LOGIN" OnClick="Button3_Click"/>

        <label>
            <asp:CheckBox ID="CheckBox1" runat="server" Text=" " />Remember me
        </label>

    </div>
    <div class="container" style="background-color:#f1f1f1">
        <asp:Button ID="Button1" runat="server" CssClass="cancelbtn" Text="Cancel" />

        <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
    </form>

</body>
</html>