<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="https://cdn.ckeditor.com/ckeditor5/12.4.0/classic/ckeditor.js"></script>
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center ml-auto">
      	<sec:authorize access="isAnonymous()">
	        <i class="bi bi-envelope d-flex align-items-center"><a href="${pageContext.request.contextPath}/common/join">join</a></i>
	        <i class="bi bi-phone d-flex align-items-center ms-4"><a href="${pageContext.request.contextPath}/common/customLogin">Login</a></i>
      	</sec:authorize>
      	<sec:authorize access="isAuthenticated()">
	        <i class="bi bi-phone d-flex align-items-center ms-4"><a href="${pageContext.request.contextPath}/common/customLogout">Logout</a></i>
      	</sec:authorize>
      	<i class="bi bi-phone d-flex align-items-center ms-4"><a href="${pageContext.request.contextPath}/board/register">Post regist</a></i>
      </div>
    </div>
  </section>
   <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="${pageContext.request.contextPath}/board/main">Portfolio<span>.</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>-->
	  <div class="col-lg-5">
            <form method="post">
            <div class="input-group">
              <input type="text" name="search" class="form-control">
              <div class="input-group-append">
              <input class="btn btn-primary" type="submit" value="search">
              </div>
            </div>  
            </form>
      </div>	
      <nav id="navbar" class="navbar" >
        <ul>
          <li><a class="nav-link scrollto active" href="${pageContext.request.contextPath}/board/main">Home</a></li>
          <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/board/project">Project</a></li>
          <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/board/image">Image</a></li>
          <li><a class="nav-link scrollto " href="${pageContext.request.contextPath}/board/prototype">Prototype</a></li>
          <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/board/person">Person</a></li>
          <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/board/moodboard">Mood Board</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->