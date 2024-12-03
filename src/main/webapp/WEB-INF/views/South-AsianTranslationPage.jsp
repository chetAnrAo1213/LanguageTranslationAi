<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Translation Page</title>
    <%@ include file="BootStrapResources.jsp" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.7/codemirror.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.7/theme/shadowfox.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.7/theme/dracula.min.css">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <style>

        /* General container adjustments */
        .container-fluid {
            padding-left: 15px;
            padding-right: 15px;
        }
/* Style for the scrollbar */
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


        /* Textarea styles */
        .CodeMirror {
            height: 350px !important; /* Consistent height */
            width: 100%; /* Full width within column */
        }

        /* Select dropdown adjustments */
        #modelSelect {
            max-width: 80%; /* Smaller width for the dropdown */
        }

        /* Button styling for central alignment */
        .translate-btn {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
            width:100%;
        }

        /* Output textarea styling */
        .output-container {
            margin-top: 20px;
        }

        h6 {
            margin-bottom: 10px; /* Spacing below headings */
        }

        #lang
        {
           background-color:#f7e6eb;
           padding:17px;
        }
        /* Loader Styles */
.loader {
  width: 50px;
  padding: 8px;
  aspect-ratio: 1;
  border-radius: 50%;
  background: #25b09b;
  --_m: 
    conic-gradient(#0000 10%,#000),
    linear-gradient(#000 0 0) content-box;
  -webkit-mask: var(--_m);
          mask: var(--_m);
  -webkit-mask-composite: source-out;
          mask-composite: subtract;
  animation: l3 1s infinite linear;
}

@keyframes l3 {
  to {
    transform: rotate(1turn);
  }
}
        
    </style>
</head>
<body >
    <%@ include file="NavBar.jsp" %>
    
      <div class="container-fluid details mt-4" style="padding:10px;">
		<div class="card text-center">
			<div class="card-header">
				<ul class="nav nav-pills card-header-pills justify-content-center">
					<li class="nav-item"><a class="nav-link"
						href="https://gtelocalize.com/asian-languages-origin-and-overview/" target="_blank">Web Sites</a></li>
					<li class="nav-item"><a class="nav-link"
						href="https://guide.wisc.edu/undergraduate/letters-science/asian-languages-cultures/asian-languages-cultures-bs/asian-languages-cultures-bs_text.pdf"
						target="_blank">Free Resources</a></li>
					<li class="nav-item"><a class="nav-link disabled"
						tabindex="-1" aria-disabled="true"><h5>South Asian
								Language Translation</h5></a></li>
					<li class="nav-item"><a class="nav-link"
						href="https://theconversation.com/global/topics/asian-languages-2782"
						target="_blank">Read Articles</a>
					<li class="nav-item"><a class="nav-link"
						href="https://www.britannica.com/place/Asia/Languages"
						target="_blank">Types</a></li>
				</ul>
			</div>
			<div
				class="card-body d-flex justify-content-center align-items-center w-100">
				<div class="me-3">
					<img alt="braces"
						src="https://clipart-library.com/img/1451634.jpg"
						height="100px" width="100px">
				</div>
				<div class="me-3">

					<h5 class="card-title">Know More About Asian Languages</h5>
					<p class="card-text">the grammar, the Vocabulary, the and the
						Semantics.</p>
					<a href="https://www.nationsonline.org/oneworld/asian_languages.htm" target="_blank"
						class="btn btn-outline-success">Try Now!</a>
				</div>
				<div class="me-3">
					<img alt=""
						src="https://arabicreadingcourse.com/images/isolated-letters/jiim.png"
						height="100px" width="100px">
				</div>
			</div>
		</div>
	</div>
    
	<form action="/HumanConvert" method="post">
    <div class="container-fluid mt-4" id="lang">
    
        <div class="row">
        
            <div class="col-md-6">
                <div class="form-group">
                    <label for="inputLanguage"><strong>Language You Entered:</strong></label>
                    <input type="text" class="form-control" id="inputLanguage" name="inputLanguage" placeholder="Try Hindi" value="${usr.inputLanguage}" >
                </div>
            </div>
            
            
            <div class="col-md-6">
                <div class="form-group">
                    <label for="outputLanguage"><strong>Language You Wish:</strong></label>
                    <input type="text" class="form-control" id="outputLanguage" name="outputLanguage" placeholder="Try Chineese" value="${usr.outputLanguage}">
                </div>
            </div>
        </div>

        <!-- Second Row: Input Code and Model Selection -->
			<div class="row mt-4">
				<!-- Input Code (Wider Area) -->
				<div class="col-md-8">
					<h6>Paste the Un-Translated Language:</h6>
					<textarea id="inputCode" class="form-control" name="inputCode">${usr.inputCode}</textarea>
				</div>
				<!-- Model Selection (Smaller Area) -->

				<div class="col-md-4">
					<div class="alert alert-warning d-flex align-items-center"
						role="alert">
						<div>
							<strong>Note: </strong>The Translation process will be done by 
							default model, which is Gemma2.
						</div>
					</div>
					
					
				
					<!-- Loader -->
					<div class="alert alert-primary d-flex align-items-center"
						role="alert">
						<div>
						     <strong>Info: </strong>This is an Offline Model and might take few 
						      seconds to generate response for your request.<strong>The Smaller the content is 
						      the better results Are.</strong>
						</div>
					</div>
					
					<div class="alert alert-danger d-flex align-items-center"
						role="alert">
						<div>
						     <strong>Caution: </strong>Models tend to Mislead and make Mistakes.
						     <code>Use with Caution.</code>
						</div>
					</div>
				</div>

			</div>

			<!-- Third Row: Translate Button -->
        <div class="row translate-btn">
            <div class="col text-center">
      <button id="translateBtn" type="submit" class="btn btn-outline-dark btn-lg" onclick="showLoader()">
    <span id="buttonText">Get Translation Result</span>
    <span id="spinner" class="loader" style="display: none; margin-left: 10px;">This Might Take Few Seconds</span>
</button>

    </div>
        </div>

        
    </div>
</form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.7/codemirror.min.js"></script>
    
    <script>
       
        var inputEditor = CodeMirror.fromTextArea(document.getElementById('inputCode'), {
            lineNumbers: true,
            theme: 'shadowfox',
        });
        inputEditor.setSize("100%", "350px");

        function showLoader() {
            const spinner = document.getElementById('spinner');
            const buttonText = document.getElementById('buttonText');
            
            spinner.style.display = 'inline-block'; // Show loader within the button
            buttonText.style.display = 'none'; // Hide the button text
        }

    </script>
</body>
<footer>
   <%@ include file="footer.jsp"%>
</footer>
</html>
