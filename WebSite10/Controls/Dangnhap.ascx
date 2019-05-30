<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Dangnhap.ascx.vb" Inherits="Controls_Dangnhap" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>

<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td>Tên đăng nhập</td>
        <td>
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập tên đăng nhập">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Mật khẩu</td>
        <td class="auto-style2">
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePassword (là một phương thức JavaScript)" ControlToValidate="Password" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập mật khẩu">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td>Xác nhận mật khẩu</td>
        <td>
            <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Xác nhận" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin vui lòng nhập đủ thong tin" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="False" />

