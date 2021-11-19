
<!DOCTYPE html>

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

        button {
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
    <h1>Legal Department Login</h1>
    

    <div class="container">
        <label for="uname"><b>Username</b></label>
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <label for="psw"><b>Password</b></label>
        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>

        <button type="submit">Login</button>
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