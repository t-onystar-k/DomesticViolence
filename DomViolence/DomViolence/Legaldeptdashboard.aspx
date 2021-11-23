<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Legaldeptdashboard.aspx.vb" Inherits="DomViolence.Legaldeptdashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
               background-color:blueviolet;

        }
        h1{
            background-color:palevioletred;
            font-size:50px;
            color:aliceblue;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <center><h1>Legal Department Dashboard</h1></center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="accused-name" HeaderText="accused-name" SortExpression="accused-name" />
                <asp:BoundField DataField="desc" HeaderText="desc" SortExpression="desc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [legal]"></asp:SqlDataSource>
    </form>
</body>
</html>
