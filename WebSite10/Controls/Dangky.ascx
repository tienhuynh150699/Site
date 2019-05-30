<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Dangky.ascx.vb" Inherits="Controls_Dangky" %>
<style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style8 {
        height: 23px;
    }
    .auto-style9 {
        height: 26px;
        width: 614px;
    }
    .auto-style10 {
        width: 614px;
    }
</style>
 <script type="text/javascript">
                function validatePhoneNumbers(source, args)
                {
                    var number = document.getElementById('<%= Number.ClientID %>');
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
<table class="auto-style5" runat="server" id="FormTable">
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Họ và tên</td>
        <td class="auto-style9">
            <asp:TextBox ID="Name" runat="server" Width="169px"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="errorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Email:</td>
        <td class="auto-style9">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="168px"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Xác nhận Email:</td>
        <td class="auto-style10">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email" Width="164px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Sđt cá nhân</td>
        <td class="auto-style9">
            <asp:TextBox ID="PhoneBusiness" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:CustomValidator ID="CustomValidator" runat="server" ClientValidationFunction="validatePhoneNumbers (là một phương thức JavaScript)" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập số điện thoại">*</asp:CustomValidator>
       
        </td>
    </tr>
    <tr>
        <td>Biển số xe</td>
        <td class="auto-style10">
            <asp:TextBox ID="Number" runat="server" Width="167px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="number" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập biển số xe">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="SendButton1" runat="server" Text="Xác nhận" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="False" />

