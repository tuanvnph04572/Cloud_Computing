<%@ Page Title="Trang chủ" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TieuDe" runat="Server">
    Những dòng sản phẩm mà chúng tôi có
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDung" runat="Server">
    <div id="slide" style="width: 100%;color: #000000 ">
        <marquee onmouseover="this.stop();" onmouseout="this.start();">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="product" style="width: 20%;height:200px;float: left;text-align: center; cursor: pointer;">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Content/Images/Categories/" + Eval("Img") %>' style="width: 80%;height: 80%"/>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CateName") %>' />
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CateId], [CateName], [Img] FROM [Categories]"></asp:SqlDataSource></marquee>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="TieuDe2" runat="Server">
    Một số dòng xe tay ga
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="NoiDung2" runat="Server">
    <div id="Div1" style="width: 100%;color: #000000">
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <div class="product" style="width: 30%; float: left; text-align: center; cursor: pointer;">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Content/Images/Products/" + Eval("Img") %>' Style="width: 80%;" />
                    <br />
                    Tên sản phẩm: <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    Giá sản phẩm: <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' />
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT P.ProductId, C.CateName, P.ProductName, P.Quantity, P.Price, P.Img FROM Products AS P INNER JOIN Categories AS C ON P.CateId = C.CateId WHERE C.CateId = 2"></asp:SqlDataSource>
    </div>
</asp:Content>
