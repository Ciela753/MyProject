<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <style>
  html #hero {height: 35vh}
  </style>
  <jsp:include page="../includes/head.jsp"></jsp:include>
</head>
<body>
<!-- ======= Top Bar ======= -->
  <!-- ======= Header ======= -->
  <jsp:include page="../includes/header.jsp"/>
  
  <!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <h1 class="text-center">Welcome to <span>Portfolio</span></h1>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <div class="input-group mb-3">
  				<input type="text" class="form-control" placeholder="Creative Search...">
  				<div class="input-group-append">
    				<button class="btn btn-primary" type="submit">Search</button>
  				</div>
			</div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Hero -->
	<!-- ======= Footer ======= -->
 <!-- End Footer -->
  <!-- ======= Prototype Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">
        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">
		<c:forEach items="${project}" var="board" varStatus="vs">
			<div class="col-lg-4 col-md-6 portfolio-item filter-app">
				<style> img { width:360px} </style>
            	<c:out value="${board.content}" escapeXml="false"/>
            <div class="portfolio-info">
              <h4><c:out value="${board.title}"/>${board.bno}</h4>
              <p><c:out value="${board.id}"/></p>
              <button class="my-button" data-bno="${board.bno}">details</button>
              <a href="assets/img/portfolio/portfolio-1.jpg"  data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>
		</c:forEach>
      </div>
    </section><!-- End Prototype Section --><!-- End #main -->

  <!-- ======= Footer ======= -->
  <jsp:include page="../includes/footer.jsp"/>
  <!-- End Footer -->

  <jsp:include page="../includes/foot.jsp" />
<script>
</script>
</body>

</html>