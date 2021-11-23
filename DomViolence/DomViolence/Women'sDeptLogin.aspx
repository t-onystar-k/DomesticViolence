
<!DOCTYPE html>
<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim uname = "admin"
        Dim pass = "admin"

        If TextBox1.Text <> uname Then
            MsgBox("Invalid credentials")
        ElseIf TextBox2.Text <> pass Then
            MsgBox("Invalid credentials")
        Else
            MsgBox("Logged in")
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
		#chk:checked ~ .login label{
	transform: scale(1);	
}
        body{
	        margin: 0;
	        padding: 0;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        min-height: 100vh;
	        font-family: 'Jost', sans-serif;
	        background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
}
        .main{
	        width: 800px;
	        height: 500px;
	        background: red;
	        overflow: hidden;
	        background: url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
	        border-radius: 10px;
	        box-shadow: 5px 20px 50px #000;
}

            button:hover {
                opacity: 0.8;
            }

        
        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }
        label{
	    color: #fff;
	    font-size: 2.3em;
	    justify-content: center;
	    display: flex;
	    margin: 60px;
	    font-weight: bold;
	    cursor: pointer;
	    transition: .5s ease-in-out;
        }
            #chk {
                display: none;
            }
            .button{
	        width: 60%;
	        height: 40px;
	        margin: 10px auto;
	        justify-content: center;
	        display: block;
	        color: #fff;
	        background: #573b8a;
	        font-size: 1em;
	        font-weight: bold;
	        margin-top: 20px;
	        outline: none;
	        border: none;
	        border-radius: 5px;
	        transition: .2s ease-in;
	        cursor: pointer;
            }
        button:hover{
    	background: #6d44b8;
        }
        .login{
	    height: 460px;
	    background: #eee;
	    border-radius: 60% / 10%;
	    transform: translateY(-180px);
	    transition: .8s ease-in-out;
        }
    .login label{
	    color: #573b8a;
	    transform: scale(.6);
        }

    </style>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1></h1>
	   <label for="chk">Womens Department Login</label>
<div class="main">  	
		<label for="chk">Womens Department Login</label>
			<div class="login">
				
					
				<br />
				<br />
				<br />
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" required></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="password" type="password" required></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Login" OnClick="Button1_Click" />
				
			</div>
	</div>
       </form>
</body>

</html>