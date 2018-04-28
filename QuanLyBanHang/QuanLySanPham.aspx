<%@ Page Title="Quản lý sản phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="QuanLySanPham.aspx.cs" Inherits="QuanLySanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" Runat="Server">
    <style>
        
        
        h2 {
        color: green;
        }
        td {
        color: green;
        }
        a {
        
        color:green;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDe" Runat="Server">
    Quản lý sản phẩm
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="ProductId" HeaderText="Mã sản phẩm" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
            <asp:BoundField DataField="CateId" HeaderText="Mã danh mục" SortExpression="CateId" />
            <asp:BoundField DataField="ProductName" HeaderText="Tên sản phẩm" SortExpression="ProductName" />
            <asp:BoundField DataField="Quantity" HeaderText="Số lượng" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Giá" SortExpression="Price" />
            <asp:BoundField DataField="Img" HeaderText="Đường dẫn hình ảnh" SortExpression="Img" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Products] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Products] ([CateId], [ProductName], [Quantity], [Price], [Img]) VALUES (@CateId, @ProductName, @Quantity, @Price, @Img)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ProductId], [CateId], [ProductName], [Quantity], [Price], [Img] FROM [Products]" UpdateCommand="UPDATE [Products] SET [CateId] = @CateId, [ProductName] = @ProductName, [Quantity] = @Quantity, [Price] = @Price, [Img] = @Img WHERE [ProductId] = @ProductId">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CateId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CateId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Img" Type="String" />
                <asp:Parameter Name="ProductId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TieuDe2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="NoiDung2" Runat="Server">
</asp:Content>

