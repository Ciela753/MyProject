<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://cdn.ckeditor.com/4.16.2/standard-all/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/4.16.2/standard/config.js"></script>
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
          <div class="col">
            <form action="${pageContext.request.contextPath}/board/register" method="post" class="php-email-form">
              <div class="form-group">
                <input class="form-control" name="title" id="subject" placeholder="Title" required value="Project Title">
              </div>
              <div class="form-group">
                <input class="form-control" name="id" id="id" value="<sec:authentication property='principal.username'/>" readonly>
              </div>
              <div class="form-group">
	               <label for="content1" class="text-dark">Content</label>
	               <textarea rows="10" class="form-control" id="content1" name="content"></textarea>
	           </div>
              			<script>
              			 CKEDITOR.replace('content1', {
                   	      toolbar: [{
                   	          name: 'document',
                   	          items: ['Print']
                   	        },
                   	        {
                   	          name: 'clipboard',
                   	          items: ['Undo', 'Redo']
                   	        },
                   	        {
                   	          name: 'styles',
                   	          items: ['Format', 'Font', 'FontSize']
                   	        },
                   	        {
                   	          name: 'colors',
                   	          items: ['TextColor', 'BGColor']
                   	        },
                   	        {
                   	          name: 'align',
                   	          items: ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']
                   	        },
                   	        '/',
                   	        {
                   	          name: 'basicstyles',
                   	          items: ['Bold', 'Italic', 'Underline', 'Strike', 'RemoveFormat', 'CopyFormatting']
                   	        },
                   	        {
                   	          name: 'links',
                   	          items: ['Link', 'Unlink']
                   	        },
                   	        {
                   	          name: 'paragraph',
                   	          items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote']
                   	        },
                   	        {
                   	          name: 'insert',
                   	          items: ['Image', 'Table']
                   	        },
                   	        {
                   	          name: 'tools',
                   	          items: ['Maximize']
                   	        },
                   	        {
                   	          name: 'editing',
                   	          items: ['Scayt']
                   	        }
                   	      ],

                   	      extraAllowedContent: 'h3{clear};h2{line-height};h2 h3{margin-left,margin-top}',

                   	      // Adding drag and drop image upload.
                   	      extraPlugins: 'print,format,font,colorbutton,justify,uploadimage',
                   	      uploadUrl: '/ckupload.json?command=file&type=Files&responseType=json',

                   	      // Configure your file manager integration. This example uses CKFinder 3 for PHP.
                   	      /* filebrowserBrowseUrl: '/apps/ckfinder/3.4.5/ckfinder.html',
                   	      filebrowserImageBrowseUrl: '/apps/ckfinder/3.4.5/ckfinder.html?type=Images',
                   	      filebrowserUploadUrl: '/apps/ckfinder/3.4.5/core/connector/php/connector.php?command=QuickUpload&type=Files', */
                   	      filebrowserImageUploadUrl: '/ckupload.json?command=QuickUpload&type=Images&responseType=json',

                   	      height: 560,

                   	      removeDialogTabs: 'image:advanced;link:advanced',
                   	      removeButtons: 'PasteFromWord'
                   	    });
	                       </script>
	                       <div class="form-group">
                				<!-- <input class="form-control" name="category" id="subject" placeholder="Category" required> -->
                				<select  class="form-control" name="category" id="subject" placeholder="Category" required>
                					<option value="project">project</option>    				
                					<option value="prototype">prototype</option>    				
                					<option value="image">image</option>    				
                				</select>
              				</div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit" id="btnReg">Register Post</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
<script>
	/* function */
	$("#btnReg").click(function() {
		//console.log($(this).closest("form").serializeArray());
		//event.preventDefault();
	})
</script>
  <jsp:include page="../includes/footer.jsp" />
  <jsp:include page="../includes/foot.jsp" />
</body>

</html>