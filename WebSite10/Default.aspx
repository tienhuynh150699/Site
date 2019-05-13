<%@ Page Title="" Language="VB" MasterPageFile="~/masterPage/PhầnĐk.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        text-align: justify;
    }
    .auto-style5 {
        margin-left: 120px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style5">
    Hồ Sơ<br />
</p>
<p class="auto-style4">
    Họ Và Tên&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="HọVàTên" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; (Không sử dụng ký tự đặc biệt)</p>
<p class="auto-style4">
    Địa Chỉ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ĐịaChỉ" runat="server"></asp:TextBox>
</p>
<p class="auto-style4">
    CMND&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="CMND" runat="server"></asp:TextBox>
</p>
<p class="auto-style4">
    <asp:Label ID="Label1" runat="server" Text="SĐT"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="SĐT" runat="server"></asp:TextBox>
</p>
<p class="auto-style4">
    <asp:Button ID="SutmitButton1" runat="server" Text="Xóa TT" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SutmitButton" runat="server" Text="Xác Nhận " />
&nbsp;
</p>
    <p class="auto-style4">
        <a href="Web.aspx">Quay lại</a></p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

