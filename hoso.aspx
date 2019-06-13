<%@ Page Title="Management - hoso" Language="VB" MasterPageFile="~/masterPage/management2.master" AutoEventWireup="false" CodeFile="hoso.aspx.vb" Inherits="Quanly_hoso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Tên" HeaderText="Tên" SortExpression="Tên" />
            <asp:BoundField DataField="Số_thứ_tự" HeaderText="Số_thứ_tự" SortExpression="Số_thứ_tự" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Tên" HeaderText="Tên" SortExpression="Tên" />
            <asp:BoundField DataField="Số_thứ_tự" HeaderText="Số_thứ_tự" SortExpression="Số_thứ_tự" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteGrapConnectionString1 %>" DeleteCommand="DELETE FROM [tt] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tt] ([Id], [Tên], [Số thứ tự]) VALUES (@Id, @Tên, @Số_thứ_tự)" ProviderName="<%$ ConnectionStrings:SiteGrapConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Tên], [Số thứ tự] AS Số_thứ_tự FROM [tt]" UpdateCommand="UPDATE [tt] SET [Tên] = @Tên, [Số thứ tự] = @Số_thứ_tự WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Tên" Type="String" />
            <asp:Parameter Name="Số_thứ_tự" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Tên" Type="String" />
            <asp:Parameter Name="Số_thứ_tự" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

