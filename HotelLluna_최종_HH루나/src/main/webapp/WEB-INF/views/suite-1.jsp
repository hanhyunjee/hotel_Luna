<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
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
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/dark.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/font-icons.css'/>" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/animate.css'/>" type="text/css" />
	<link rel="stylesheet"  href="<c:url value='/resources/css/magnific-popup.css'/>"  type="text/css" />
	<link rel="stylesheet" href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
	<script src="<c:url value='/resources/js/jquery.js'/>"> </script>
	<script src="<c:url value='/resources/js/plugins.js'/>"> </script>
    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna | Room - Family Suite</title>

</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

        <!-- Header
        ============================================= -->
        <header id="header" class="full-header">

            <div id="header-wrap">

                <div class="container clearfix">

                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

                   <!-- Logo
                    ============================================= -->
                    <div id="logo">
                        <a href= "<c:url value='/'/>" class="standard-logo" data-dark-logo="<c:url value='/resources/images/logo/mainlogo.png'/>"><img src="<c:url value='/resources/images/logo/mainlogo.png'/>" alt="Chocolat Logo"></a>
                        <a href="<c:url value='/'/>" class="retina-logo" data-dark-logo="<c:url value='/resources/images/logo/mainlogo.png' />"><img src="<c:url value='/resources/images/logo/mainlogo.png'/>" alt="Chocolat Logo"></a>                   
                    </div><!-- #logo end -->
                             

                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                        <ul class="">
                            <li ><a href="<c:url value="/hotel-About-Us"/>"><div>????????????</div></a>
                                        <ul>                                
                                    		<li><a href="<c:url value="/hotel-About-Us"/>"><div>????????????</div></a></li>
                                    		<li><a href="<c:url value="/Location"/>"><div>????????????</div></a></li>
                                    		<li><a href="<c:url value='/notice/NoticeList'/>"><div>????????????</div></a></li>
                                         </ul>                                                              
                            </li>
                            <li class="current"><a href="#" onclick="return false;"><div>??????</div></a>
                                <ul>
                                    <li><a href="<c:url value="/deluxe-1"/>"><div>?????????</div></a>
                                        <ul>
                                            <li><a href="<c:url value="/deluxe-1"/>"><div>????????? ??????</div></a></li>
                                            <li><a href="<c:url value="/deluxe-2"/>"><div>????????? ??????</div></a></li>
                                            
                                        </ul>
                                    </li>
                                    <li><a href="<c:url value="/suite-1"/>"><div>?????????</div></a>
                                        <ul>
                                            <li><a href="<c:url value="/suite-1"/>"><div>????????? ?????????</div></a></li>
                                            <li><a href="<c:url value="/suite-2"/>"><div>????????? ?????????</div></a></li>
                     
                                        </ul>
                                    </li>                                                                                                                                       
                                </ul>
                            </li>
                            <li><a href="<c:url value="/dining-1"/>"><div>?????????</div></a>
                                <ul>
                                    <li><a href="<c:url value="/dining-1"/>"><div>???????????? (??? ?????? ?????????)</div></a></li>
                                </ul>
                            </li>
                            <li><a href="#" onclick="return false;"><div>????????????</div></a>
                                <ul>
                                	<li><a href="<c:url value="/menu-item"/>"><div>????????? ????????? ??????</div></a></li>
                                	<li><a href="<c:url value="/menu-item2"/>"><div>?????? ????????? ?????????</div></a></li>
                            		<li><a href="<c:url value="/menu-item3"/>"><div>???????????? ?????????</div></a></li>
                                </ul>
                            </li>
                            <li><a href="<c:url value="/QnA/QnAList2"/>"><div>????????? ??????</div></a></li>
                            <c:choose>
	                            <c:when test="${m_id ne null}">
		                            <li><a href="<c:url value='/reservation/r'/>"><div>????????????</div></a></li>   
		                            <li><a href="<c:url value='/reservation/ReservationSelect'/>"><div>???????????? ??? ??????</div></a></li>
	                            </c:when>
	                           <c:otherwise>
		                            <li><a href="<c:url value='/member/LoginLogOut'/>"><div>????????????</div></a></li>   
		                            <li><a href="<c:url value='/member/LoginLogOut'/>"><div>???????????? ??? ??????</div></a></li>
	                           </c:otherwise>
                            </c:choose>
                            
                               <c:choose>
                               		<c:when test="${m_id eq null}">         
                           		 			<li><a href="<c:url value ='/member/LoginLogOut'/>"><div>?????????</div></a>
                           		 		<ul>
                                	    	<li><a href="<c:url value ='/member/LoginLogOut'/>"><div>?????????</div></a></li>
                                	   		<li><a href="<c:url value='/member/MemberInsert'/>"><div>????????????</div></a></li>
                                  	    </ul>                
                           				 </li>
                                  </c:when>     
                                  <c:otherwise>
                                   		 <li><a href="<c:url value='/member/Logout'/>"><div>????????????</div></a></li>
                                    </c:otherwise>
                            </c:choose>   
                        </ul> 
                    </nav><!-- #primary-menu end -->
                </div>
          </div>

        </header><!-- #header end -->    
        
        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="resources/images/logo/room.PNG"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <FONT SIZE="6" COLOR="white">Hotel Delluna | Suite Room</span></FONT>
                <ol class="breadcrumb">
                </ol>
            </div>

   	  </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap bgcolor-grey-light">

                <div class="container clearfix">

                    <div class="nobottommargin clearfix">

                        <div class="nobottommargin">

                            <div class="clearfix">

                                <h2>????????? ?????????(Family Suite)</h2>
                               
                              <p>
                              <c:choose>
	                              <c:when test="${m_id ne null}">
	                               		<a href="<c:url value='/reservation/r'/>" class="btn btn-primary" role="button">????????????</a>
	                               </c:when>
                               <c:otherwise>
                                    <a href="<c:url value='/member/LoginLogOut'/>" class="btn btn-primary" role="button">????????????</a>
                               </c:otherwise>
                              </c:choose>
                               <a href="<c:url value='/QnA/QnAList2'/>" class="btn btn-primary" role="button">????????????</a>
                                </p>
                               <div class="entry clearfix">
                                <div class="entry-image">
                                    <div class="fslider" data-arrows="false" data-lightbox="gallery">
                                        <div class="flexslider">
                                            <div class="slider-wrap">
                               <div class="slide"><a href="<c:url value="resources/images/logo/room-9.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="resources/images/logo/room-9.PNG"/>" alt=""></a></div>
                               <div class="slide"><a href="<c:url value="resources/images/logo/room-10.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="resources/images/logo/room-10.PNG"/>" alt=""></a></div>
                               <div class="slide"><a href="<c:url value="resources/images/logo/room-11.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="resources/images/logo/room-11.PNG"/>" alt=""></a></div>
                               <div class="slide"><a href="<c:url value="resources/images/logo/room-12.PNG"/>" data-lightbox="gallery-item"><img class="image_fade" src="<c:url value="resources/images/logo/room-12.PNG"/>" alt=""></a></div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>                 
                               </div>
                                <div class="topmargin-sm">
								<hr style="border: solid 1px navy;">
                                    <h3>????????????</h3><p> 
                                    ?????? ?????? : ???????????? 1??? + ???????????? 1??? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?????????/???????????? : 14:00 / 11:00<br>
                                    ?????? ???????????? : 4??? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?????? : ?????? ???
									<hr style="border: solid 1px navy;">
                              		<h3>?????????</h3><p> 
                                    &middot; ???????????? ???????????? ?????? ??????(?????? ???)<p>
                                    &middot; Spa & Garden ??????: ????????? ??????????????? ??? ?????????, ?????????<br>
                                    &middot; ??????(he:on) ?????? ?????????: ????????? ????????? ?????? ?????? ??? ?????????<br>
                                    &middot; ????????? ????????? ?????? ??????<br>
                                    &middot; ??? ?????? ????????? ?????? ????????? (??????, ????????????)
									<hr style="border: solid 1px navy;">
                              		<h3>????????????</h3><p> 
                                    <h6>?????? : 60" LED TV / ????????? / ????????? / ?????? / ????????? ????????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?????? : ??????(?????????) / ????????????(???????????????) / ?????? / ????????? / ?????? ?????? / ??????????????????<br>
                                    ?????? : ?????????,?????? TV?????? / ?????? ?????? 1??? 4??? / ?????? ???(Tea) ????????? ??????</h6>
                                    <hr style="border: solid 1px navy;">
                                  	
       

        </section><!-- #content end --> 

        <!-- Footer
        ============================================= -->
        <footer id="footer" class="footer">
        
            <div class="container">

                <!-- Footer Widgets
                ============================================= -->
                <div class="footer-widgets-wrap clearfix">

                    <div class="col_two_third">

                        <div class="widget clearfix">

                            <h3>(???)?????? ?????? <span>02-1544-1111</span></h3>
                            <p>63535, ????????????????????? ???????????? ??????????????? 72??????, ?????? ??????.</p>

                            <div class="line" style="margin: 30px 0;"></div>

                            <div class="col_half">
                                <div class="widget subscribe-widget clearfix">
                                    <h5>Email : hotelDelluna@hotelDelluna.co.kr
                                    <div id="widget-subscribe-form-result" data-notify-type="success" data-notify-msg=""></div>
                                    <form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
  								
                                    </form>
                                    <script type="text/javascript">
                                        $("#widget-subscribe-form").validate({
                                            submitHandler: function(form) {
                                                $(form).find('.input-group-addon').find('.icon-email2').removeClass('icon-email2').addClass('icon-line-loader icon-spin');
                                                $(form).ajaxSubmit({
                                                    target: '#widget-subscribe-form-result',
                                                    success: function() {
                                                        $(form).find('.input-group-addon').find('.icon-line-loader').removeClass('icon-line-loader icon-spin').addClass('icon-email2');
                                                        $('#widget-subscribe-form').find('.form-control').val('');
                                                        $('#widget-subscribe-form-result').attr('data-notify-msg', $('#widget-subscribe-form-result').html()).html('');
                                                        IGNITE.widget.notifications($('#widget-subscribe-form-result'));
                                                    }
                                                });
                                            }
                                        });
                                    </script>
                                </div>                            
                            </div>

                            <div class="col_half col_last">
                                <div class="widget clearfix">

                                    <div class="hidden-xs hidden-sm"><div class="clear" style="padding-top: 10px;"></div></div>

                                    <div class="col-md-6 bottommargin-sm">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="<c:url value='/'/>"><div>??????</div></a></li>
                                    		<li><a href="<c:url value='/notice/NoticeList'/>"><div>????????????</div></a></li>
                                    		<li><a href="<c:url value="/hotel-About-Us"/>"><div>????????????</div></a></li>
                                    		<li><a href="<c:url value="/Location"/>"><div>????????????</div></a></li>
                                            <li><a href="<c:url value="/QnA/QnAList2"/>"><div>????????? ??????</div></a></li>
                                			</ul>
                            			</div>
                                    </div>

                                    <div class="col-md-6 bottommargin-sm col_last">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    		<li><a href="<c:url value="/deluxe-1"/>"><div>?????? - ?????????</div></a></li>
                                    			<li><a href="<c:url value="/suite-1"/>"><div>?????? - ?????????</div></a></li>
                                    			<li><a href="<c:url value="/dining-1"/>"><div>?????????</div></a></li>
                                    			<li><a href="<c:url value='/reservation/r'/>"><div>????????????</div></a></li>
                                                <li><a href="<c:url value='/reservation/ReservationSelect'/>"><div>???????????? ??? ??????</div></a></li>
                                			</ul>
                            			</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col_one_third col_last">

                        <div class="widget clearfix">
                        <div class="fancy-title title-border">
                            <h4>Hours</h4>
                        </div>
                        <ul class="nobottommargin nobullets">
                            <li><strong>???????????????.</strong><br>00:00 ~ 24:00</li><br>
                            <li><strong>????????????(??????)??????.</strong><br>???????????? 09:00 ~ 18:00</li><p>??????????????? 00:00 ~ 24:00<br>
                            <li>???????????? ?????????<br> ????????? ????????? ?????????????????? ????????????.</li>
                        </ul>
                        </div>
                        
                        <div class="widget clearfix">
                        <div class="fancy-title title-border">
                            <h4>Address</h4>
                        </div>

                        <ul class="nobottommargin nobullets">
                            <li>63535, ????????????????????? </li>
                            <li>???????????? ??????????????? 72??????, ?????? ??????.</li>
                        </ul>
                        </div>                                                
                    </div>
                </div>
              <!-- .footer-widgets-wrap end -->

            </div>        

            <!-- Copyrights
            ============================================= -->
           <div id="copyrights">

                <div class="container clearfix">

                    <div class="col_half">
                        <img src="<c:url value='/resources/images/logo/footer-logo.png'/>" alt="" class="footer-logo standard-logo">
                        <img src="<c:url value='/resources/images/logo/footer-logo-large.png' />" alt="" class="footer-logo retina-logo">
                        Copyright &copy; 2022 Hotel Delluna. All Rights Reserved.
                    </div>

                    <div class="col_half col_last tright">
                        <div class="copyrights-menu copyright-links fright clearfix">
                            <a href="<c:url value='/notice/NoticeList'/>">????????????</a>
                             <a href="<c:url value="/hotel-About-Us"/>">????????????</a>
                              <a href="<c:url value="/deluxe-1"/>">??????</a>
                               <a href="<c:url value='/reservation/ReservationSelect'/>">???????????? ??? ??????</a>
                                <a href="<c:url value="/QnA/QnAList2"/>">????????? ??????</a>
                        </div>
                        
                        <div class="fright clearfix">
                            <a href="https://www.facebook.com/" class="social-icon si-small si-borderless nobottommargin si-facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>

                            <a href="https://twitter.com/explore" class="social-icon si-small si-borderless nobottommargin si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>
                            <a href="https://github.com/park002" class="social-icon si-small si-borderless nobottommargin si-github">
                                <i class="icon-github"></i>
                                <i class="icon-github"></i>
                            </a>

                            <a href="https://www.yahoo.com/" class="social-icon si-small si-borderless nobottommargin si-yahoo">
                                <i class="icon-yahoo"></i>
                                <i class="icon-yahoo"></i>
                            </a>
                        </div>
                    </div>

                </div>

            </div><!-- #copyrights end -->

        </footer><!-- #footer end -->

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
      <script type="text/javascript" src="<c:url value='/resources/js/functions.js'/>"></script>

</body>
</html>