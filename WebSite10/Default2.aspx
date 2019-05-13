<%@ Page Title="" Language="VB" MasterPageFile="~/masterPage/PhầnXe.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 275px;
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Text="Xe 2 chỗ" />
                <img alt="" class="auto-style8" src="../Img/Grap/12.png" /></td>
                        <td class="auto-style7">
                            <br />
                            <br />
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Text="Xe 4 chỗ" />
                <img alt="" class="auto-style7" src="../Img/Grap/123.jpg" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                <asp:Button ID="Button3" runat="server" Text="Xe 7 chỗ" />
                            <br />
                            <br />
                <img src="../Img/Grap/1234.jpg" class="auto-style12" /></td>
                        <td class="auto-style7">
                            <br />
                            <br />
                            <br />
                <asp:Button ID="Button4" runat="server" Text="Vận chuyển hàng hóa"></asp:Button>
                <img src="../Img/Grap/VC.jpg" class="auto-style11" /></td>
                    </tr>
                </table>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <a href="Web.aspx"><strong>Quay lại </strong></a></p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
</asp:Content>

