
Partial Class Web
    Inherits BasePage

    Protected Sub sutmitbutton_Click(sender As Object, e As EventArgs) Handles sutmitbutton.Click
        Result.Text = "Cảm ơn bạn đã sử dụng dịch vụ Grap " & ĐăngKý.Text
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
