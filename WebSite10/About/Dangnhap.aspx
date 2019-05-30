<%@ Page Title="" Language="VB" MasterPageFile="~/masterPage/MasterPage.master" AutoEventWireup="false" CodeFile="Dangnhap.aspx.vb" Inherits="About_Dangnhap" %>

<%@ Register Src="~/Controls/Dangnhap.ascx" TagPrefix="uc1" TagName="Dangnhap" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Dangnhap runat="server" ID="Dangnhap" />
</asp:Content>

