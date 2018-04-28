<%@ Page Title="Quản lý hóa đơn" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="QuanLyHoaDon.aspx.cs" Inherits="QuanLyHoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" Runat="Server">
    <style>
        body {
            background-color: green;
        }
        table {
            background-color:white;
        }

        td {
            color:yellow;
        }

        a {
            color: yellow;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDe" Runat="Server">
    Quản lý hóa đơn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BillId" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="BillId" HeaderText="Mã hóa đơn" InsertVisible="False" ReadOnly="True" SortExpression="BillId" />
            <asp:BoundField DataField="CusId" HeaderText="Mã khách hàng" SortExpression="CusId" />
            <asp:BoundField DataField="ShipAddress" HeaderText="Địa chỉ ship" SortExpression="ShipAddress" />
            <asp:BoundField DataField="TotalPrice" HeaderText="Tổng hóa đơn" SortExpression="TotalPrice" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Bills] WHERE [BillId] = @BillId" InsertCommand="INSERT INTO [Bills] ([CusId], [ShipAddress], [TotalPrice]) VALUES (@CusId, @ShipAddress, @TotalPrice)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [BillId], [CusId], [ShipAddress], [TotalPrice] FROM [Bills]" UpdateCommand="UPDATE [Bills] SET [CusId] = @CusId, [ShipAddress] = @ShipAddress, [TotalPrice] = @TotalPrice WHERE [BillId] = @BillId">
            <DeleteParameters>
                <asp:Parameter Name="BillId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CusId" Type="Int32" />
                <asp:Parameter Name="ShipAddress" Type="String" />
                <asp:Parameter Name="TotalPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CusId" Type="Int32" />
                <asp:Parameter Name="ShipAddress" Type="String" />
                <asp:Parameter Name="TotalPrice" Type="Decimal" />
                <asp:Parameter Name="BillId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TieuDe2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="NoiDung2" Runat="Server">
</asp:Content>

