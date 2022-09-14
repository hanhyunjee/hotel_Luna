<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html dir="ltr" lang="UTF-8">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />
    <!-- Stylesheets
    ============================================= -->
	<link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/images/favicon/favicon-16x16.png' />">
	<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/images/favicon/favicon-32x32.png'/>">
	<link href="http://fonts.googleapis.com/css?family=PT+Sans:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<!-- <link rel="stylesheet" href="css/bootstrap.css" type="text/css" /> -->
	      <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/dark.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/font-icons.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/animate.css'/>" type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/magnific-popup.css'/>"  type="text/css" />
	<link rel="stylesheet"href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
	   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	   <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
    <!-- External JavaScripts
    ============================================= -->
       <script src="<c:url value='/resources/js/jquery.js'/>"> </script>
<!-- <script type="text/javascript" src="js/plugins.js"></script> -->
       <script src="<c:url value='/resources/js/plugins.js'/>"> </script>
    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna</title>

</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">


        <!-- Page Title
        ============================================= -->
        <!-- Contact Form & Map Overlay Section
        ============================================= -->
      <section id="page-title" class="page-title-parallax"
style="background-image: url('<c:url value="/resources/images/hotel-about/main.jpg"/>'); padding: 120px 0;"
	data-stellar-background-ratio="0.3">

            <div class="container clearfix" style="border-width:3px;">
                <h1>예약 조회/취소</h1>
                <ol class="breadcrumb">
                    <li><a href="<c:url value="/"/>">홈</a></li>
                    <li><a href="<c:url value="/hotel-About-Us"/>">호텔소개</a></li>
                    <li class="active">예약 조회/취소</li>
                </ol>
            </div>

   	  </section><!-- #page-title end -->
   	  <p>
            <div class="container clearfix">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey">

                    <div class="fancy-title title-dotted-border">
                        <h3>예약 조회 및 취소</h3>
                    </div>
                    <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
   				 <c:if test="${duplicateFind>=1 }">
         		<script>
         			alert('현재 선택하신 방은 이미 예약된 방입니다 죄송합니다. 다른 날짜를 택하여 주십시오');
         		 location.href="${pageContext.request.contextPath}/reservation/r";
         		</script>
         		</c:if>
         		
                    <!-- Contact Form
                    ============================================= -->
                    <form method="post">
					<input type="hidden" name="reservation_number" id="reservation_number" value="${dto.reservation_number}">
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">예약번호</label><br>
							<div class="well well-sm"><c:out value="${dto.reservation_number}" /></div>
						</div>

						 <div class="col-md-6">
							<label for="template-contactform-name">룸 번호</label><br>
							<div class="well well-sm"><c:out value="${dto.room_type}"/></div>
						</div> 
					</div>
					
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">아이디</label><br>
							<div class="well well-sm"><c:out value="${dto.m_id}" /></div>
						</div> 

						<div class="col-md-6">
							<label for="template-contactform-name">예약날짜</label><br>
							
							<div class="well well-sm">
							<c:out value="${dto.reservation_data_in}"/> ~ <c:out value="${dto.reservation_data_out}"/>
							<%-- <fmt:formatDate value="${dto.reservation_data_in}" pattern="yyyy-MM-dd"/> ~ 
							 <fmt:formatDate value="${dto.reservation_data_out}" pattern="yyyy-MM-dd"/> --%>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">성인</label><br>
							<div class="well well-sm"><c:out value="${dto.adult}" /></div>
						</div>

						<div class="col-md-6">
							<label for="template-contactform-name">어린이</label><br>
							<div class="well well-sm"><c:out value="${dto.child}" /></div>
						</div>
					</div>
					
					<div class="col_full">
							<label for="template-contactform-name">가격</label><br>
							<div class="well well-sm"><fmt:formatNumber value="${dto.price}" pattern="#,###" /></div>
					</div>
					
					<div class="col_full">
							<label for="template-contactform-name">결제 확인</label><br>
							<div class="well well-sm">결제를 진행해 주세요</div>
					</div>
	
                        <div class="clearfix" style=" text-align:center;" >
                                <button type="button" id="pay" class="button button-medium button-reveal button-3d button-rounded tright nomargin" style="color:black; ">
                                <span >결제하기</span> <i class="icon-angle-right"></i></button>
                                <button type="submit" formaction="<c:url value='/reservation/ReservationCancel' />" class="button button-medium button-reveal button-3d button-rounded tright nomargin" style="color:black;">
                                <span>예약취소</span> <i class="icon-angle-right"></i></button></div>
                        </form>
                        
                        <script>
                        $("#pay").click(function(){
                        	alert('결제가 완료되었습니다 감사합니다');
	                    	 location.href="${pageContext.request.contextPath}/reservation/ReservationPay?number=${dto.reservation_number}";
	                     });
                        </script>

                    <script type="text/javascript">
                        $("#template-contactform").validate({
                            submitHandler: function(form) {
                                $('.form-process').fadeIn();
                                $(form).ajaxSubmit({
                                    target: '#contact-form-result',
                                    success: function() {
                                        $('.form-process').fadeOut();
                                        $('#template-contactform').find('.sm-form-control').val('');
                                        $('#contact-form-result').attr('data-notify-msg', $('#contact-form-result').html()).html('');
                                        IGNITE.widget.notifications($('#contact-form-result'));
                                    }
                                });
                            }
                        });
                    </script>
                    
             
                    <div class="line"></div>

                    <!-- Contact Info
                    ============================================= -->
                 

                    <!-- Twitter
                    ============================================= -->
                  
                        <script type="text/javascript">

                            jQuery(document).ready(function($){
                                $.getJSON('include/twitter/tweets.php?username=envato&count=3', function(tweets){
                                    $("#twitter-scroller .slider-wrap").html(sm_format_twitter3(tweets));
                                });
                            });

                        </script>

                    </div><!-- Twitter End -->

                </div><!-- Contact Form Overlay End -->

            </div>
                    <script type="text/javascript">

                        jQuery(document).ready(function($) {

                            var ocTeam = $("#oc-team-list");

                            ocTeam.owlCarousel({
                                responsive:{
                                    0:{ items:1 },
                                    600:{ items:1 },
                                    1000:{ items:2 }
                                },
                                margin: 30,
                                nav: false,
                                dots:true
                            });

                        });

                    </script>       
                    <br>             

<%@ include file="/WEB-INF/views/footer.jsp" %>
    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
 <script type="text/javascript" src="<c:url value='/resources/js/functions.js'/>"></script>

</body>
</html>