<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%@ include file="BootStrapResources.jsp"%>

	
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<style>
footer {
	background-image: url('https://greatcontent.com/wp-content/uploads/2022/03/Translation.png');
	background-size: cover;
	background-position: center;
	height: 600px;
	font-weight: bold;
	color: black;
}

.text-reset:hover {
	background-color: #cfbed4;
	padding: 2px;
	border-radius: 2px;
}

footer .container {
	max-width: 1140px;
}

.footer-section {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.footer-section div {
	margin-bottom: 20px;
}

.social-icons a {
	margin-right: 10px;
}

footer .divider {
	border-bottom: 1px solid white;
	margin: 15px 0;
}
</style>
</head>
<body>

<footer class="text-center text-lg-start bg-body-tertiary text-muted">
	<!-- Social networks section -->
	<section class="d-flex justify-content-center justify-content-lg-between p-3 border-bottom">
		<div class="me-3 d-none d-lg-block" style="color:black;font-weight:600;">
			<span><h6><u>Get connected with us on social networks:</u></h6></span>
		</div>
		<div>
			<!-- Social icons -->
			<%@ include file="socials.jsp"%>
		</div>
	</section>

	<!-- Main footer section -->
	<section class="container text-md-start mt-3" style="background-color: transparent;">
		<div class="footer-section row" style="background-color: transparent;">
			<!-- Column 1 -->
			<div class="col-md-3 col-lg-4 col-xl-3 mb-4" style="color:black;">
				<h6 class="text-uppercase fw-bold">C-Garage</h6>
				<hr class="divider">
				<p>We offer a sneak peek into how students can kickstart their projects. Our Community helps beginners with ideas and guidance for creating simple projects from the start.</p>
			</div>

			<!-- Column 2 -->
			<div class="col-md-2 col-lg-2 col-xl-2 mb-4" style="color:black;">
				<h6 class="text-uppercase fw-bold">Applications</h6>
				<hr class="divider">
				<p><a href="#!" class="text-reset">Billing System</a></p>
				<p><a href="#!" class="text-reset">Blogs</a></p>
				<p><a href="#!" class="text-reset">Tutorials</a></p>
				<p><a href="#!" class="text-reset">Some Other Projects</a></p>
			</div>

			<!-- Column 3 -->
			<div class="col-md-3 col-lg-2 col-xl-2 mb-4" style="color:black;">
				<h6 class="text-uppercase fw-bold">Quick links</h6>
				<hr class="divider">
				<p><a href="#!" class="text-reset">About Us</a></p>
				<p><a href="#!" class="text-reset">Settings</a></p>
				<p><a href="#!" class="text-reset">Privacy Policy</a></p>
				<p><a href="#!" class="text-reset">Help</a></p>
			</div>
		</div>
	</section>

	<!-- Copyright section -->
	<div class="text-center p-2" style="background-color: white;">
		© 2024 Copyright: <a class="text-reset fw-bold" href="#">C-Garage</a>
	</div>
</footer>

</body>
</html>