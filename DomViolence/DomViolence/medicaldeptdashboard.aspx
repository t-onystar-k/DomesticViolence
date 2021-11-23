<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="medicaldeptdashboard.aspx.vb" Inherits="DomViolence.medicaldeptdashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
                body{
               background-color:lightskyblue;

        }
        h1{
            background-color:mediumvioletred;
            font-size:50px;
            color:cadetblue;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h1>
            Medical Department Dashboard
        </h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="isMental" HeaderText="isMental" SortExpression="isMental" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [medical]"></asp:SqlDataSource>
    </form>
</body>
</html>
