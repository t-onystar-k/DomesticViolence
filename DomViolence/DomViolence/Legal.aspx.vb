Imports System.Data.SqlClient
Public Class Legal
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MsgBox("SUbmitted")
        Dim constring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"
        con = New SqlConnection(constring)
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "INSERT INTO legal(name,age,phone,address,accused-name,desc)values(@name,@age,@phone,@address,@acc-name,@desc) "
        Dim paraname As New SqlParameter("@name", SqlDbType.VarChar, 50)
        paraname.Value = TextBox1.Text
        Dim paraage As New SqlParameter("@age", SqlDbType.Int, 4)
        paraage.Value = TextBox2.Text
        Dim paraphone As New SqlParameter("@phone", SqlDbType.VarChar, 15)
        paraphone.Value = TextBox3.Text
        Dim paraloc As New SqlParameter("@location", SqlDbType.VarChar, 50)
        paraloc.Value = TextBox5.Text
        Dim paraacc As New SqlParameter("@nameofacc", SqlDbType.VarChar, 50)
        paraacc.Value = TextBox4.Text

        cmd.Parameters.Add(paraname)
        cmd.Parameters.Add(paraage)
        cmd.Parameters.Add(paraphone)
        cmd.Parameters.Add(paraloc)
        cmd.Parameters.Add(paraacc)

        Dim da As New SqlDataAdapter
        da.InsertCommand = cmd
        da.InsertCommand.ExecuteNonQuery()
        MsgBox("Application Submitted succesfully.")
    End Sub
End Class