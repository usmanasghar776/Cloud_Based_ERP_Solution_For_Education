﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OTeaching.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Education</title>
	<meta charset="UTF-8"/>
	<meta name="description" content="WebUni Education Template"/>
	<meta name="keywords" content="webuni, education, creative, html"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet"/>

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
   <div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 text-black-50">
					<nav class="main-menu">
						<ul>
							<li class="text-black-50"><a href="Default.aspx">Home</a></li>
							<li class="text-black-50"><a href="#">About us</a></li>
							<li class="text-black-50"><a href="#">Contact</a></li>
                            <li class="text-black-50"><a href="Login.aspx">Login</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
            <!-- Hero section -->
    <section class="hero-section set-bg" data-setbg="img/login.png">
		<div class="container">
			<div class="hero-text text-black">
				<h2>Select Your Role</h2>
                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Student" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" class="btn btn-secondary" Text="Teacher" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="Admin" OnClick="Button3_Click" />
			</div>
		</div>
	</section>
        </div>
        <footer class="footer-section">
		<div class="footer-bottom">
				<ul class="footer-menu">
					<li><a href="#">Terms & Conditions</a></li>
					<li><a href="#">Register</a></li>
					<li><a href="#">Privacy</a></li>
				</ul>
				<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
			</div>
	</footer> 
    </form>
</body>
    	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</html>
