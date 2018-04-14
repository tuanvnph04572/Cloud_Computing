﻿<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<form id="form1" runat="server">
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Nhóm 8 &copy; <%: DateTime.Now.Year %></title>
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
		<aside id="fh5co-aside" role="complementary" class="border js-fullheight">

			<h1 id="fh5co-logo"><a href="Default.aspx"><asp:Image ID="Image1" ImageUrl="~/Images/logo.png" Width="100px" runat="server" /></a></h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li><a href="Default.aspx">Trang chủ</a></li>
					<li><a href="QuanLyLoaiSanPham.aspx">Quản lý loại sản phẩm</a></li>
					<li><a href="QuanLySanPham.aspx">Quản lý sản phẩm</a></li>
					<li  class="fh5co-active"><a href="QuanLyKhachHang.aspx">Quản lý khách hàng</a></li>
					<li><a href="QuanLyhoadon.aspx">Quản lý hóa đơn</a></li>
					<li><a href="ChiTietHoaDon.aspx">Quản lý chi tiết hóa đơn</a></li>
					<li><a href="Contact.aspx">Liên hệ</a></li>
				</ul>
			</nav>

			<div class="fh5co-footer">
				<p><small>&copy; Nhóm 8 - <%: DateTime.Now.Year %></span> <span>Cloud Computing</span> </small></p>
				<ul>
					<li><a href="https://www.facebook.com/"><i class="icon-facebook"></i></a></li>
					<li><a href="https://twitter.com/?lang=vi"><i class="icon-twitter"></i></a></li>
					<li><a href="https://www.instagram.com/"><i class="icon-instagram"></i></a></li>
				</ul>
			</div>

		</aside>

		<div id="fh5co-main">

			<div class="fh5co-narrow-content">
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Xem nhiều ...</span></h2>
				<div class="row animate-box" data-animate-effect="fadeInLeft">
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="#">
							<img src="Images/BMWS1000RR.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<h3 class="fh5co-work-title">BMW S1000RR</h3>
						</a>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="#">
							<img src="Images/z1000.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<h3 class="fh5co-work-title">Kawasaki Z1000</h3>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="#">
							<img src="Images/h2r.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<h3 class="fh5co-work-title">Kawasaki H2r</h3>
						</a>
					</div>
					
					<div class="clearfix visible-md-block"></div>
					
				</div>
			</div>
			
			<div class="fh5co-narrow-content">

                <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CusId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="CusId" HeaderText="Mã khách hàng" InsertVisible="False" ReadOnly="True" SortExpression="CusId" />
                        <asp:BoundField DataField="Name" HeaderText="Tên khách hàng" SortExpression="Name" />
                        <asp:BoundField DataField="Sex" HeaderText="Giới tính" SortExpression="Sex" />
                        <asp:BoundField DataField="Address" HeaderText="Địa chỉ" SortExpression="Address" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
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



			</div>
			


			<div class="fh5co-narrow-content">
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Đây là những điều chúng tôi thích làm</span></h2>
				<div class="row">
					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-strategy"></i>
							</div>
							<div class="fh5co-text">
								<h3>CHIỂN LƯỢC</h3>
								<p>Chiến lược của chúng tôi là chắp cánh cho những người đam mê với tốc độ. </p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-telescope"></i>
							</div>
							<div class="fh5co-text">
								<h3>KHÁM PHÁ</h3>
								<p>Chúng tôi sẽ khám phá ra những công nghệ mới và truyền chúng đến với quý vị. </p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-circle-compass"></i>
							</div>
							<div class="fh5co-text">
								<h3>PHƯƠNG HƯỚNG</h3>
								<p>Phương hướng bắt kịp những dòng xe và mang chúng về Việt Nam sớm nhất. </p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-tools-2"></i>
							</div>
							<div class="fh5co-text">
								<h3>CHUYÊN MÔN</h3>
								<p>Đội ngũ chuyên môn kinh nghiệm lâu năm, sẽ giải quyết tất cả những vấn đề bạn gặp phải. </p>
							</div>
						</div>
					</div>

				</div>
			</div>

			

            <div class="fh5co-narrow-content">
				<div class="row">
					<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
						<h1 class="fh5co-heading-colored">Hãy bắt đầu đam mê của bạn!</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
						<p class="fh5co-lead">""Live to ride and ride to live… you don’t stop riding because you get old, you get old because you stop riding". - "Sống để chạy xe, chạy xe để sống. Đừng dừng lại khi bạn có tuổi, bạn sẽ già nếu dừng chạy xe".</p>
						<p><a href="Product.aspx" class="btn btn-primary btn-outline">Get Started</a></p>
					</div>
					<div class="col-md-7 col-md-push-1">
						<div class="row">
							<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
								<p>"You start the game with a full pot of luck and an empty pot of experience. The objective is to fill the pot of experience before you empty the pot of luck". - "Người ta thường bắt đầu cuộc chơi bằng may mắn nhưng thiếu kinh nghiệm. Mục tiêu của bạn là gom đầy kinh nghiệm trước khi may mắn ra đi".</p>
							</div>
							<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
								<p>Evel Knievel -"The older I get, the faster I was. There are old bikers and there are bold bikers, but there are no old, bold bikers". - "Tôi càng già, chạy xe càng nhanh. Có những biker già, cũng có những biker liều lĩnh nhưng không có biker nào vừa già vừa liều lĩnh cả".</p>
							</div>
						</div>
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

