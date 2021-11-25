<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../includes/head.jsp"></jsp:include>
</head>
<body>
  <!-- ======= Top Bar ======= -->
  <!-- ======= Header ======= -->
  <jsp:include page="../includes/header.jsp"/>
  <!-- End Header -->

  
  <main id="main" data-aos="fade-up">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Inner Page</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Inner Page</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
      
        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-6">
          <h6>${error}</h6>
           <h6>${logout}</h6>
            <form action="/customLogout" method="post">             
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
              <div class="text-center"><input type="submit">Log Out</input></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <jsp:include page="../includes/footer.jsp" />
  <jsp:include page="../includes/foot.jsp" />
</body>

</html>