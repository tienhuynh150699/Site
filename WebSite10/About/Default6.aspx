<%@ Page Title="tt" Language="VB" MasterPageFile="~/masterPage/MasterPage.master" AutoEventWireup="false" CodeFile="Default6.aspx.vb" Inherits="About_Default" ValidateRequest="false " %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="uc1" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ContactForm runat="server" ID="ContactForm" />
</asp:Content>

