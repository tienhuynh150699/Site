Imports System.IO
Partial Class Controls_Dangky
    Inherits System.Web.UI.UserControl

    Protected Sub CustomValidator_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator.ServerValidate
        If Not String.IsNullOrEmpty(Number.Text) OrElse
                Not String.IsNullOrEmpty(PhoneBusiness.Text) Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub
    Protected Sub SendButton1_Click(sender As Object, e As EventArgs) Handles SendButton1.Click
        If Page.IsValid Then
            Dim fileName As String = Server.MapPath("~/App_Data/Text.txt")
            ' Đọc nội dung từ Text.txt và gắn vào chuỗi MessageBody
            Dim MessageBody As String = File.ReadAllText(fileName)
            MessageBody = MessageBody.Replace("##Name##", Name.Text)
            MessageBody = MessageBody.Replace("##Email##", EmailAddress.Text)
            MessageBody = MessageBody.Replace("##PhoneBusiness##", PhoneBusiness.Text)
            MessageBody = MessageBody.Replace("##Number##", Number.Text)
            ' Hiển thị Label
            Message.Visible = True
            ' Gắn nội dung từ Text.txt vào Label
            Message.Text = MessageBody
            ' Ẩn bảng
            FormTable.Visible = False
        End If
    End Sub
End Class
