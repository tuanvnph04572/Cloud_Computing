<%@ Page Title="Chi tiết hóa đơn" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ChiTietHoaDon.aspx.cs" Inherits="ChiTietHoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" Runat="Server">
    <style>
        h2, table {
            color: red !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDe" Runat="Server">
    Quản lý chi tiết hóa đơn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="DetailsId" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="BillId" HeaderText="Mã hóa đơn" SortExpression="BillId" />
            <asp:BoundField DataField="DetailsId" HeaderText="Mã chi tiết" InsertVisible="False" ReadOnly="True" SortExpression="DetailsId" />
            <asp:BoundField DataField="ProductId" HeaderText="Mã sản phẩm" SortExpression="ProductId" />
            <asp:BoundField DataField="Quantity" HeaderText="Số lượng" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Giá" SortExpression="Price" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [BillDetails] WHERE [DetailsId] = @DetailsId" InsertCommand="INSERT INTO [BillDetails] ([BillId], [ProductId], [Quantity], [Price]) VALUES (@BillId, @ProductId, @Quantity, @Price)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DetailsId], [BillId], [ProductId], [Quantity], [Price] FROM [BillDetails]" UpdateCommand="UPDATE [BillDetails] SET [BillId] = @BillId, [ProductId] = @ProductId, [Quantity] = @Quantity, [Price] = @Price WHERE [DetailsId] = @DetailsId">
            <DeleteParameters>
                <asp:Parameter Name="DetailsId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BillId" Type="Int32" />
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BillId" Type="Int32" />
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="DetailsId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TieuDe2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="NoiDung2" Runat="Server">
</asp:Content>

