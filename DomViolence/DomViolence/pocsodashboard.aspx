<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pocsodashboard.aspx.vb" Inherits="DomViolence.pocsodashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
                body{
               background-color:powderblue;

        }
        h1{
            background-color:mistyrose;
            font-size:50px;
            color:indianred;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Child Welfare Department Dashboard</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="victim-name" HeaderText="victim-name" SortExpression="victim-name" />
                <asp:BoundField DataField="victim-age" HeaderText="victim-age" SortExpression="victim-age" />
                <asp:BoundField DataField="victim-address" HeaderText="victim-address" SortExpression="victim-address" />
                <asp:BoundField DataField="victim-phone" HeaderText="victim-phone" SortExpression="victim-phone" />
                <asp:BoundField DataField="culprit-name" HeaderText="culprit-name" SortExpression="culprit-name" />
                <asp:BoundField DataField="desc" HeaderText="desc" SortExpression="desc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [pocso]"></asp:SqlDataSource>
    </form>
</body>
</html>
