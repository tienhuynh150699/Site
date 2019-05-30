Imports System.IO
Partial Class Controls_Dangnhap
    Inherits System.Web.UI.UserControl


    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        If Not String.IsNullOrEmpty(Password.Text) OrElse
               Not String.IsNullOrEmpty(ConfirmPassword.Text) Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim fileName As String = Server.MapPath("~/App_Data/TextFile.txt")
        ' Đọc nội dung từ Text.txt và gắn vào chuỗi MessageBody
        Dim MessageBody As String = File.ReadAllText(fileName)
        MessageBody = MessageBody.Replace("##Name##", Name.Text)
        MessageBody = MessageBody.Replace("##Password##", Password.Text)
        MessageBody = MessageBody.Replace("##ConfirmPassword##", ConfirmPassword.Text)
        ' Hiển thị Label
        Message.Visible = True
        ' Gắn nội dung từ Text.txt vào Label
        Message.Text = MessageBody
        ' Ẩn bảng
        FormTable.Visible = False
    End Sub
End Class
