
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<form id="form1" runat="server">
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Group 6 - INF205</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>

	<div id="fh5co-page">

		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
		<aside id="fh5co-aside" role="complementary" class="border">

			<h1 id="fh5co-logo"><a href="Default.aspx"><img src="images/logo.png" alt="Free HTML5 Bootstrap Website Template"></a></h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li><a href="Default.aspx">TRANG CHỦ</a></li>
					<li><a href="Product.aspx">SẢN PHẨM</a></li>
					<li class="fh5co-active"><a href="Manage.aspx">QUẢN LÝ</a></li>
					<li><a href="Contact.aspx">LIÊN HỆ</a></li>
				</ul>
			</nav>

			<div class="fh5co-footer">
				<p><small>&copy; FPT Polytechnic - 2017</span> <span>Designed by Group 6 - INF205 </span> </small></p>
				<ul>
					<li><a href="https://www.facebook.com/"><i class="icon-facebook"></i></a></li>
					<li><a href="https://twitter.com/?lang=vi"><i class="icon-twitter"></i></a></li>
					<li><a href="https://www.instagram.com/"><i class="icon-instagram"></i></a></li>
				</ul>
			</div>

		</aside>

		<div id="fh5co-main">

			<div class="fh5co-narrow-content">
				<div class="row">
					<div class="col-md-5">
						<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Sản phẩm</span></h2>
                            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
                                <Fields>
                                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                                    <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                                    <asp:BoundField DataField="LoaiSanPham_MaLSP" HeaderText="LoaiSanPham_MaLSP" SortExpression="LoaiSanPham_MaLSP" />
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                                </Fields>
                        </asp:DetailsView>
						
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QLBH.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuong], [LoaiSanPham_MaLSP]) VALUES (@MaSP, @TenSP, @Gia, @MoTa, @SoLuong, @LoaiSanPham_MaLSP)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaSP], [TenSP], [Gia], [MoTa], [SoLuong], [LoaiSanPham_MaLSP] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa, [SoLuong] = @SoLuong, [LoaiSanPham_MaLSP] = @LoaiSanPham_MaLSP WHERE [MaSP] = @MaSP">
                            <DeleteParameters>
                                <asp:Parameter Name="MaSP" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="MaSP" Type="String" />
                                <asp:Parameter Name="TenSP" Type="String" />
                                <asp:Parameter Name="Gia" Type="String" />
                                <asp:Parameter Name="MoTa" Type="String" />
                                <asp:Parameter Name="SoLuong" Type="Int32" />
                                <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TenSP" Type="String" />
                                <asp:Parameter Name="Gia" Type="String" />
                                <asp:Parameter Name="MoTa" Type="String" />
                                <asp:Parameter Name="SoLuong" Type="Int32" />
                                <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                                <asp:Parameter Name="MaSP" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
						
					</div>
					
				</div>
				
			</div>

			<div class="fh5co-narrow-content">
				<div class="row">
					<div class="col-md-5">
						<a href="Manage.aspx"><h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Khách hàng</span></h2></a>
						<a href="Hoadon.aspx"><h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Hóa đơn</span></h2></a>
						<a href="Loaisanpham.aspx"><h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Loại sản phẩm</span></h2></a>
						<a href="Sanpham.aspx"><h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Sản phẩm</span></h2></a>
                        <a href="Chitiethoadon.aspx"><h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Chi tiết hóa đơn</span></h2></a>
					</div>
					
				</div>
				
			</div>

			

			


		</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>

</form>


