<%@ Page Title="" Language="VB" MasterPageFile="~/masterPage/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Src="~/Controls/Dangky.ascx" TagPrefix="uc1" TagName="Dangky" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Dangky runat="server" ID="Dangky" />
</asp:Content>

