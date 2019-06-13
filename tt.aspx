<%@ Page Title="Management - tt" Language="VB" MasterPageFile="~/masterPage/management2.master" AutoEventWireup="false" CodeFile="tt.aspx.vb" Inherits="Quanly_tt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Tên" DataValueField="Id">
        <asp:ListItem Value="">Lựa chọn</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Tên" HeaderText="Tên" SortExpression="Tên" />
            <asp:BoundField DataField="Chức vụ" HeaderText="Chức vụ" SortExpression="Chức vụ" />
            <asp:BoundField DataField="Mã nhân viên" HeaderText="Mã nhân viên" SortExpression="Mã nhân viên" />
            <asp:CheckBoxField DataField="Giới tính" HeaderText="Giới tính" SortExpression="Giới tính" />
            <asp:BoundField DataField="CreateDateTime" HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" />
        </Columns>
    </asp:GridView>
    <a href="AddEdit.aspx"> Thêm TT mới</a><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SiteGrapConnectionString1 %>" SelectCommand="SELECT * FROM [hoso] WHERE ([Mã nhân viên] = @Mã_nhân_viên)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Mã_nhân_viên" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteGrapConnectionString1 %>" SelectCommand="SELECT [Id], [Tên] FROM [tt] ORDER BY [Số thứ tự]"></asp:SqlDataSource>
    </asp:Content>

