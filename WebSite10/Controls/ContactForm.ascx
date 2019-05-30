<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 28px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style5 {
        width: 265px;
    }
    .auto-style6 {
        height: 23px;
        width: 265px;
    }
</style>
<script type="text/javascript">
                function validatePhoneNumbers(source, args)
                {
                    var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
                    var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
                    if (phoneHome.value != '' || phoneBusiness.value != '')
                    {
                        args.IsValid = true;
                    }
                    {
                        args.IsValid = false;
                    }
                }
                </script>
<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td class="auto-style2" colspan="3">
            <h1>Phản hồi về tài xế:</h1>
        </td>
    </tr>
    <tr>
        <td>Tên</td>
        <td class="auto-style5">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name ">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Địa chỉ Email&nbsp;</td>
        <td class="auto-style5">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Xác nhận địa chỉ Email</td>
        <td class="auto-style5">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Số điện thoại cá nhân</td>
        <td class="auto-style5">
            <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers (là một phương thức JavaScript)" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập số điện thoại cở quan hay cá nhân">*</asp:CustomValidator>
            
        </td>
    </tr>
    <tr>
        <td>số điện thoại cơ quan</td>
        <td class="auto-style5">
            <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Ý kiến phản hồi&nbsp;</td>
        <td class="auto-style5">
            <asp:TextBox ID="Comments" runat="server" Height="76px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập chú thích">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style6">
            <asp:Button ID="SendButton" runat="server" Text="Send" />
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="False" />
