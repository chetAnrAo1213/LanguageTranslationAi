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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.7/theme/abbott.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.7/theme/dracula.min.css">
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
    </style>
</head>
<body>
    <%@ include file="NavBar.jsp" %>
    <h1 class="text-center mt-3">Human Language Translation.</h1>


    <div class="container-fluid mt-4">
        <!-- First Row: Language Inputs -->
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="inputLanguage">Language You Entered:</label>
                    <input type="text" class="form-control" id="inputLanguage" name="inputLanguage" value="${usr.inputLanguage}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="outputLanguage">Language You Wish:</label>
                    <input type="text" class="form-control" id="outputLanguage" name="outputLanguage" value="${usr.outputLanguage}">
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
               
                 <div class="alert alert-danger d-flex align-items-center"
											role="alert">
						<div>
						     <strong>Caution: </strong>The Conversion process is being handled by the Gemma Model.
						      Sometimes this Models can't produce accurate results.
						     <code>Use with Caution.</code>
						</div>
					</div>
            </div>
        </div>

 
       

        <!-- Fourth Row: Output Code -->
        <div class="row output-container">
            <div class="col">
                <h6>Generated Translated Response:</h6>
                <textarea id="outputCode" class="form-control" disabled name="outputLanguage" > ${result}  </textarea>
            </div>
        </div>
    </div>
   <form action="/">
    <div class="row translate-btn">
        <div class="col text-center">
            <button type="submit" class="btn btn-outline-dark btn-lg">Translate Again</button>
        </div>
    </div>
</form>

    <!-- CodeMirror Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.7/codemirror.min.js"></script>
    
    <script>
        // Initialize CodeMirror Editors
        var inputEditor = CodeMirror.fromTextArea(document.getElementById('inputCode'), {
            lineNumbers: true,
            theme: 'dracula',
            readOnly: 'nocursor'
        });

        var outputEditor = CodeMirror.fromTextArea(document.getElementById('outputCode'), {
            lineNumbers: true,
            theme: 'abbott',
            readOnly: 'nocursor'
        });

        // Adjust CodeMirror width dynamically
        inputEditor.setSize("100%", "350px");
        outputEditor.setSize("100%", "350px");
    </script>
</body>
<footer>
   <%@ include file="footer.jsp"%>
</footer>
</html>
