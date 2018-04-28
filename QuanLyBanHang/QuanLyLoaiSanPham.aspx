<%@ Page Title="Quản lý loại sản phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="QuanLyLoaiSanPham.aspx.cs" Inherits="QuanLyLoaiSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="Server">
    <style>h2{
color: violet;
}</style>
        <style>a{
color: violet;
}</style>
        <style>td{
color: violet;
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDe" runat="Server">
    Quản lý loại sản phẩm
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDung" runat="Server">
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AutoGenerateRows="False">
            <Fields>
                <asp:BoundField DataField="CateId" HeaderText="ID" />
                <asp:BoundField DataField="CateName" HeaderText="Tên loại" />
                <asp:BoundField DataField="Img" HeaderText="Đường dẫn hình ảnh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" DeleteText="Xóa" EditText="Sửa" NewText="Thêm mới" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Categories] WHERE [CateId] = @CateId" InsertCommand="INSERT INTO [Categories] ([CateName], [Img]) VALUES (@CateName, @Img)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CateId], [CateName], [Img] FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [CateName] = @CateName, [Img] = @Img WHERE [CateId] = @CateId">
            <DeleteParameters>
                <asp:Parameter Name="CateId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CateName" Type="String" />
                <asp:Parameter Name="Img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CateName" Type="String" />
                <asp:Parameter Name="Img" Type="String" />
                <asp:Parameter Name="CateId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TieuDe2" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="NoiDung2" runat="Server">
</asp:Content>

