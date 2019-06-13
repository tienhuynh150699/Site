<%@ Page Title="Management – Insert and Update Reviews" Language="VB" MasterPageFile="~/masterPage/management2.master" AutoEventWireup="false" CodeFile="AddEdit.aspx.vb" Inherits="Quanly_AddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:TemplateField HeaderText="Tên" SortExpression="Tên">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tên") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Textbox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tên") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Textbox1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tên") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Chức_vụ" SortExpression="Chức_vụ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Chức_vụ") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Textbox2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Chức_vụ") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Textbox2" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Chức_vụ") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã_nhân_viên" SortExpression="Mã_nhân_viên">
                <EditItemTemplate>
                   <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GenresDataSource" DataTextField="Tên" DataValueField="Id" SelectedValue='<%# Bind("Mã_nhân_viên") %>'></asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GenresDataSource" DataTextField="Tên" DataValueField="Id" SelectedValue='<%# Bind("Mã_nhân_viên") %>'></asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Mã_nhân_viên") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Giới_tính" HeaderText="Giới_tính" SortExpression="Giới_tính" />
            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" Visible="False" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteGrapConnectionString1 %>" DeleteCommand="DELETE FROM [hoso] WHERE [Id] = @Id" InsertCommand="INSERT INTO [hoso] ([Id], [Tên], [Chức vụ], [Mã nhân viên], [Giới tính], [UpdateDateTime]) VALUES (@Id, @Tên, @Chức_vụ, @Mã_nhân_viên, @Giới_tính, @UpdateDateTime)" SelectCommand="SELECT [Id], [Tên], [Chức vụ] AS Chức_vụ, [Mã nhân viên] AS Mã_nhân_viên, [Giới tính] AS Giới_tính, [UpdateDateTime] FROM [hoso] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [hoso] SET [Tên] = @Tên, [Chức vụ] = @Chức_vụ, [Mã nhân viên] = @Mã_nhân_viên, [Giới tính] = @Giới_tính, [UpdateDateTime] = @UpdateDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Tên" Type="String" />
            <asp:Parameter Name="Chức_vụ" Type="String" />
            <asp:Parameter Name="Mã_nhân_viên" Type="Int32" />
            <asp:Parameter Name="Giới_tính" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Tên" Type="String" />
            <asp:Parameter Name="Chức_vụ" Type="String" />
            <asp:Parameter Name="Mã_nhân_viên" Type="Int32" />
            <asp:Parameter Name="Giới_tính" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="GenresDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:SiteGrapConnectionString1 %>" SelectCommand="SELECT [Tên], [Id] FROM [tt] ORDER BY [Số thứ tự]"></asp:SqlDataSource>
</asp:Content>

