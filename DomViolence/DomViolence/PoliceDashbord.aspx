
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url("bg6.jpg");
        }
        h1
        {
            font-family:'Times New Roman', Times, serif;
            color:indianred;
            background-color:papayawhip;

            font-size:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <h1>Police Department Dashboard</h1>
        </center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="nameofaccused" HeaderText="nameofaccused" SortExpression="nameofaccused" />
                <asp:BoundField DataField="desc" HeaderText="desc" SortExpression="desc" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [pocso]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [complaints]"></asp:SqlDataSource>
    </form>
</body>
</html>
