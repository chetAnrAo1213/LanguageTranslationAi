<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Ai Translation</title>
     <%@ include file="BootStrapResources.jsp" %>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </head>
  <style>
  ::-webkit-scrollbar {
    width: 5px; /* Width of the vertical scrollbar */
    height: 5px; /* Height of the horizontal scrollbar */
}

/* Style for the track (background of the scrollbar) */
::-webkit-scrollbar-track {
    background: #f1f1f1; /* Light background color */
}

/* Style for the thumb (the draggable part of the scrollbar) */
::-webkit-scrollbar-thumb {
    background: #888; /* Gray color */
}

/* Hover effect for the thumb */
::-webkit-scrollbar-thumb:hover {
    background: #555; /* Darker gray on hover */
}
/* Prevent horizontal scroll */
body {
    overflow-x: hidden; /* Hide horizontal scrollbar */
    margin: 0; /* Remove margin to avoid extra space */
}

/* Make sure the page elements fit within the container */
html, body {
    width: 100%;
    height: 100%;
}

/* Ensure container elements don't overflow */
.container, .row, .col-sm-6 {
    max-width: 100%; /* Ensure no element exceeds the available width */
    box-sizing: border-box; /* Make sure padding is included within width */
}

/* Adjust the card layout */
.card {
    width: 100%; /* Ensure cards take up full width inside their container */
    box-sizing: border-box; /* Prevent cards from overflowing */
}

/* Adjust the modal width */


/* Prevent any element from pushing the page beyond its width */
.row {
    margin-left: 0;
    margin-right: 0;
    width: 100%;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .card-body {
        padding: 10px; /* Reduce padding on smaller screens */
    }
    .btn {
        font-size: 0.9rem; /* Smaller buttons on smaller screens */
    }
}



  </style>
<body style="background-color:#302f2f;">
	<%@ include file="BootStrapResources.jsp"%>
	<%@ include file="NavBar.jsp"%>
	<p></p>
	<p></p>
	<p></p>
	<div class="card  w-80" style="padding:17px;background-color:#302f2f;">
		<div class="card-header" style="padding:10px;background-color:#8f8d9e;color:#fff;">Translation</div>
		<div class="card-body"style="padding:10px;background-color:#fbd7fc;">
			<blockquote class="blockquote mb-0">
				<p>Translation is the process of converting text or speech from
					one language into another. It involves transferring the meaning of
					the original content into a different language while maintaining
					the intent, tone, and style of the original text.
				<p class="blockquote-footer">
					<cite title="Source Title">Eugene Nida</cite>
				</p>
			</blockquote>
		</div>
		<p></p>
		<div class="row">
		<div class="col-sm-6">
			<div class="card w-85">
				<div class="card-body" style="padding:17px;background-color:#d8e9ed;">
					<h5 class="card-title">Need Of Translation</h5>
					<p class="card-text">
					<h6>Cross-Cultural Communication</h6>
					Different languages and cultures, enabling people from diverse
					backgrounds to understand each other.
					</p>

					<a href="/HumanTranslate" class="btn btn-outline-info">Try
						Human Languages</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="card w-85">
				<div class="card-body"  style="padding:17px;background-color:#cbf2d6;">
					<h5 class="card-title">Impact of AI</h5>
					<p class="card-text">
					<h6>
						<li>Multilingual Accessibility</li>
						<li>Breaking Language Barriers</li>
						<li>Improved Speed and Efficiency</li>
						<li>Improved Quality of Machine Translation</li>
					</h6>
					</p>
					<a href="/SouthAsianTranslate" class="btn btn-outline-success">Try
						Asian Languages</a>
				</div>
			</div>
		</div>
	</div>
	</div>
	<p></p>
	<p></p>
	<p></p>
	
<div class="container-fluid details mt-4" style="padding: 10px;">
		<div class="card text-center">
			<div class="card-header" style="background-color:#dec6b8;">
				<ul class="nav nav-pills card-header-pills justify-content-center">
				
					<li class="nav-item" ><a class="nav-link "
						tabindex="-1" aria-disabled="true"><h5 style="color:#000;">AI Based Language Translation</h5></a></li>

				</ul>
			</div>
			<div
				class="card-body d-flex justify-content-center align-items-center w-100">
				<div class="me-3">
					<div class="card mb-3" style="max-width: 540px;">
						<div class="row g-0">
							<div class="col-md-4">
								<img
									src="https://static.vecteezy.com/system/resources/previews/006/662/139/non_2x/artificial-intelligence-ai-processor-chip-icon-symbol-for-graphic-design-logo-web-site-social-media-mobile-app-ui-illustration-free-vector.jpg"
									class="img-fluid rounded-start" alt="Ai Img">
							</div>
							<div class="col-md-8">
								<div class="card-body" >
									<h5 class="card-title">AI Models Usage</h5>
									<p class="card-text">Transforming Language Processing with AI
										by using the open source LLMs which are pretrained on huge amount of parameters.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="me-3">
					<div class="card" style="width: 18rem;">
						<img
							src="https://media.istockphoto.com/id/1455839652/vector/translate-vector-icon-translation-language-service-logo-translator-online-app-symbol.jpg?s=612x612&w=0&k=20&c=XpL_3-g7h9fTja5PSj1wec7hBm-OA2BF-1M43fGmITw="
							alt="...">
						<div class="card-body">
						<h5 class="card-title">Translation</h5>
							<p class="card-text">Breaking Language Barriers with Precision
							by adding the layers of AI into the Application.</p>
						</div>
					</div>
				</div>
				<div class="me-3">
					<div class="card mb-3" style="max-width: 540px;">
						<div class="row g-0">
							<div class="col-md-4">
								<img
									src="https://t4.ftcdn.net/jpg/03/39/09/99/360_F_339099984_R4HvOWAhrmfJELwxCR6gQuZTvITN8kLP.jpg"
									class="img-fluid rounded-start" alt="Ai Img">
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<h5 class="card-title">AI-Powered Language Tools</h5>
									<p class="card-text">With the integration of AI into the
									Application, we can utilize the flexibility it possess and handle Dynamic changes</p>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
<footer>
   <%@ include file="footer.jsp"%>
</footer>
</html>