<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">AI Translation</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a></li>
            <li class="nav-item"><a class="nav-link" href="/HumanTranslate">Human Languages</a></li>
			<li class="nav-item"><a class="nav-link" href="/ProgrammingTranslate">ProgrammingLanguages</a></li>
			<li class="nav-item"><a class="nav-link" href="/SouthAsianTranslate">South-AsianLanguages</a></li>
			<li class="nav-item"><a class="nav-link" href="/ScripturesTranslate">Scriptures</a></li>
		</ul>
		<%@ include file="ModelInfo.jsp"%>
  </div>
</nav>