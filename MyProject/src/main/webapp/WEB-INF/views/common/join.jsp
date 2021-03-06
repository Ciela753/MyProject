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
          <div class="col-lg-6 mx-auto">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="row">
                <div class="col form-group">
                  <input type="text" name="id" class="form-control" id="name" placeholder="Your ID" required>
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="password" id="subject" placeholder="Password" required>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="password-confirm" id="subject" placeholder="Password Confirm" required>
              </div>             
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Join</button></div>
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