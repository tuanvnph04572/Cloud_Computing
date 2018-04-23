<%@ Page Title="Quản lý khách hàng" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="QuanLyKhachHang.aspx.cs" Inherits="QuanLyKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDe" Runat="Server">
    Quản lý khách hàng
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="CusId" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="CusId" HeaderText="Mã khách hàng" InsertVisible="False" ReadOnly="True" SortExpression="CusId" />
            <asp:BoundField DataField="Name" HeaderText="Tên khách hàng" SortExpression="Name" />
            <asp:BoundField DataField="Sex" HeaderText="Giới tính" SortExpression="Sex" />
            <asp:BoundField DataField="Address" HeaderText="Địa chỉ" SortExpression="Address" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Customers] WHERE [CusId] = @CusId" InsertCommand="INSERT INTO [Customers] ([Name], [Sex], [Address]) VALUES (@Name, @Sex, @Address)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CusId], [Name], [Sex], [Address] FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [Sex] = @Sex, [Address] = @Address WHERE [CusId] = @CusId">
            <DeleteParameters>
                <asp:Parameter Name="CusId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="CusId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TieuDe2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="NoiDung2" Runat="Server">
</asp:Content>

