Imports System.Data.SqlClient
Public Class pocso
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim constring As String = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"
        con = New SqlConnection(constring)
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "INSERT INTO pocso(victim-name,victim-age,victim-address,victim-phone,culprit-name,desc)values(@victim-name,@victim-age,@victim-address,@victim-phone,@culprit-name,@desc)"
        Dim paraname As New SqlParameter("@victim-name", SqlDbType.VarChar, 50)
        paraname.Value = TextBox1.Text
        Dim paraage As New SqlParameter("@victim-age", SqlDbType.Int, 4)
        paraage.Value = TextBox2.Text
        Dim paraphone As New SqlParameter("@victim-phone", SqlDbType.VarChar, 15)
        paraphone.Value = TextBox4.Text
        Dim paraloc As New SqlParameter("@victim-address", SqlDbType.VarChar, 50)
        paraloc.Value = TextBox3.Text
        Dim paraacc As New SqlParameter("@culprit-name", SqlDbType.VarChar, 50)
        paraacc.Value = TextBox5.Text
        Dim paradesc As New SqlParameter("@desc", SqlDbType.VarChar, 500)
        paradesc.Value = TextBox6.Text

        cmd.Parameters.Add(paraname)
        cmd.Parameters.Add(paraage)
        cmd.Parameters.Add(paraphone)
        cmd.Parameters.Add(paraloc)
        cmd.Parameters.Add(paraacc)
        cmd.Parameters.Add(paradesc)

        Dim da As New SqlDataAdapter
        da.InsertCommand = cmd
        da.InsertCommand.ExecuteNonQuery()
        MsgBox("Application Submitted succesfully.")
    End Sub
End Class