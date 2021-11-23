
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Submit10.Click
        Dim constring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"
        con1 = New SqlConnection(constring)
        con1.Open()
        cmd1.Connection = con1
        cmd1.CommandText = "INSERT INTO medical(name,age,phone,address)values(@name,@age,@phone,@add) "
        Dim paraname As New SqlParameter("@name", SqlDbType.VarChar, 50)
        paraname.Value = TextBox1.Text
        Dim paraage As New SqlParameter("@age", SqlDbType.Int, 4)
        paraage.Value = TextBox2.Text
        Dim paraloc As New SqlParameter("@add", SqlDbType.VarChar, 50)
        paraloc.Value = TextBox3.Text
        Dim paraphone As New SqlParameter("@phone", SqlDbType.VarChar, 15)
        paraloc.Value = TextBox4.Text


        cmd1.Parameters.Add(paraname)
        cmd1.Parameters.Add(paraage)
        cmd1.Parameters.Add(paraphone)
        cmd1.Parameters.Add(paraloc)

        Dim da1 As New SqlDataAdapter
        da1.InsertCommand = cmd1
        da1.InsertCommand.ExecuteNonQuery()
        MsgBox("Application Submitted succesfully.")
    End Sub
End Class