<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <jsp:include page="../includes/head.jsp"></jsp:include>
</head>
<body>
<!-- ======= Top Bar ======= -->
  <!-- ======= Header ======= -->
  <jsp:include page="../includes/header.jsp"/>
  
  
    <!-- ======= Prototype Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">
        <div id="projectDIV" class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">
		<c:forEach items="${project}" var="board" varStatus="vs">
			<c:if test="${vs.index < 24 }">
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
          	</c:if>
		</c:forEach> 
      </div>
    </section><!-- End Prototype Section -->
   <!-- List Modal-->
</div>
<script src="${pageContext.request.contextPath}/resources/js/project.js"></script>
    <script type="text/javascript">
    console.log(BoardService);

    var bno = '${board.bno}';
    var $div = $("#projectDIV");

    showList();
    function showList(lastRno, amount) {
        replyService.getList({bno:bno, lastRno:lastRno, amount:amount},
         function(data) {
            console.log(data)
             if(!data) {
                 return;
             }

             if(data.length == 0) {
                $("#btnShowMore").text("댓글이 없습니다.").prop("disabled", true);
                return;
             }

             var str ="";
             for(var i in data) {
                 str +=' <li class="list-group-item" data-rno="'+data[i].rno+'">'
                 str +='    <div class="clearfix">'
                 str +='        <div class="float-left text-dark font-weight-bold">'+data[i].replyer+'</div>'
                 str +='            <div class="float-right">'+replyService.displayTime(data[i].replyDate)+'</div>'
                 str +='        </div>'
                 str +='        <div>'+data[i].reply+'</div>'
                 str +='</li>'
             }
             $("#btnShowMore").text("더보기").prop("disableed", false);
             $ul.append(str);
           }
        )
    }        
         
         var $div = $(".portfolio-info");
         
         //모달내용이 뜨는 위치, 버튼
         $div.on("click", "button", function() {
             var bno = $(this).data("bno");
             console.log(bno);
             projectService.get(bno, function(data) {
            	 console.log(data);
            	 console.log(data.content);
	             $("#myModal").find(".modal-body").html(data.content).end().modal("show");// ;
             })
             /* projectService.get(bno, function(data) {
		     	//모달 내용
		     	$("#myModal").data("bno", data.bno).modal("show");
             }); */
         })
    </script>
    
    
    <!-- ======= Footer ======= -->
  <jsp:include page="../includes/footer.jsp"/>
  <!-- End Footer -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
    	<style>
    	.modal-body img {max-width: 100% !important; height:auto !important;}
    	</style>
        <div class="modal-content">
            <div class="modal-body">
            
            </div>
        </div>
    </div>
</div>
  <jsp:include page="../includes/foot.jsp" />
</body>

</html>