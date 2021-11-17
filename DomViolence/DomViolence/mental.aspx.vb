Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim constring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"
        con = New SqlConnection(constring)
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "INSERT INTO medical(name,age,phone,address)values(@name,@age,@phone,@add) "
        Dim paraname As New SqlParameter("@name", SqlDbType.VarChar, 50)
        paraname.Value = TextBox1.Text
        Dim paraage As New SqlParameter("@age", SqlDbType.Int, 4)
        paraage.Value = TextBox2.Text
        Dim paraloc As New SqlParameter("@add", SqlDbType.VarChar, 50)
        paraloc.Value = TextBox3.Text
        Dim paraphone As New SqlParameter("@phone", SqlDbType.VarChar, 15)
        paraloc.Value = TextBox4.Text


        cmd.Parameters.Add(paraname)
        cmd.Parameters.Add(paraage)
        cmd.Parameters.Add(paraphone)
        cmd.Parameters.Add(paraloc)

        Dim da As New SqlDataAdapter
        da.InsertCommand = cmd
        da.InsertCommand.ExecuteNonQuery()
        MsgBox("Application Submitted succesfully.")
    End Sub
End Class