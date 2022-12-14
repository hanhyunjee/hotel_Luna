<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
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
	<link rel="stylesheet"href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
	<link rel="stylesheet"  type="text/css" href="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
       <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
	   <script type="text/javascript" src="<c:url value='/resources/js/jquery.js'/>"></script>
   <script type="text/javascript" src="<c:url value='/resources/js/plugins.js'/>"></script>

    <!-- Document Title
    ============================================= -->
   <title>Hotel Delluna | Notice </title>
<!-- <script language="JavaScript" src="script.js"></script> -->

<style>
   form{
      margin: 0 auto;
      width: 400px;
   }
   table{
      margin: 0 auto;
      width: 1300px;
      border-top: 1px solid black;
      border-collapse: collapse;
   }
   hr{
      margin: 0 auto;
      width: 1100px;
   }
     th, td {
       border-bottom: 1px solid black;
       padding: 18px;
       text-align: center;
      }
</style>
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
                    </div>

                    <!-- Primary Navigation
                    ============================================= -->
                   <nav id="primary-menu">

                        <ul class="">
                            <li class="current"><a href="<c:url value="/hotel-About-Us"/>"><div>????????????</div></a>
                                        <ul>                                
                                    		<li><a href="<c:url value="/hotel-About-Us"/>"><div>????????????</div></a></li>
                                    		<li><a href="<c:url value="/Location"/>"><div>????????????</div></a></li>
                                    		<li><a href="<c:url value='/notice/NoticeList'/>"><div>????????????</div></a></li>
                                         </ul>                                                              
                            </li>
                            <li><a href="#" onclick="return false;"><div>??????</div></a>
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
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="/resources/images/logo/room.PNG"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <FONT SIZE="6" COLOR="white">Hotel Delluna | QnA </span></FONT>
                <ol class="breadcrumb">
                </ol>
            </div><br>
        </section><!-- #page-title end -->


<br>

<form action="<c:url value='/QnA/QnAList2'/>">

     
     	<c:if test="${m_id ne null}">
            	<button type="button" class="well well-sm" onclick="location.href='<c:url value='/QnA/QnAWrite'/>'" 
            	value="??? ??????" style="border-radius: 10px;">??? ??????</button>
    	</c:if> 
   		 
       <select name="Search" class="btn btn-secondary" >
	       <option value="SearchSearch"<c:out value="${Search eq 'SearchSearch' ? 'selected':''}"/>>  ?????????</option>
		  <option value="TitleSearch"<c:out value="${Search eq 'TitleSearch' ? 'selected' : ''}"/>>??????</option>
	      <option value="ContentSearch"<c:out value="${Search eq 'ContentSearch' ? 'selected' : ''}"/>>??????</option> 
   </select>
   
		<input type="text" class="well well-sm" name="Searchtext" id="Searchtext" size="30" placeholder="????????? ?????? ???????????????" 
			 value="<c:out value="${Searchtext}"/>">&nbsp;
		
   		<button  value="??????" class="well well-sm">?????? </button>
</form>
<br>

<!-- ---------------------------------------------------------------------------------------------------- -->
<!-- ????????? ?????????  -->

		<script>
		//http://localhost:8090/HH/notice/NoticeList?curPage=2&Search=Search&
		function page1(curPage) {
		 <%--/* /* 	 location.href="?curPage="+curPage+"&Search=${Search}"+"&Searchtext=${Searchtext}" 
		 	 location.href="<c:url value='/notice/NoticeList?curPage='+${}/>"
			 location.href='<c:url value="?curPage='+curPage+'">
						<c:param name="Search">${Search}</c:param>
						<c:if test="${!empty Searchtext}"><c:param name="Searchtext">${Searchtext}</c:param></c:if>
					</c:url>'
				 	
					 
			location.href='?curPage='+curPage+'&Search=${Search}&Searchtext=${Searchtext}'; 
		 	 <%-- /*  location.href="<c:url value='/notice/NoticeList?curPage='+curPage/>" */  --%>
		}
		
		
		$(document).on('click', 'a[href="#"]', function(e){
			e.preventDefault();
		});
		
		
		</script>
		<table>
			<tr>
			<th>NO</th>
			<th>??????</th>
			<th>?????????</th>
			<th>?????????</th>
			</tr>
			
		<c:forEach items="${list}" var="QnAList"> 
			<tr>
				      <td><c:out value="${QnAList.q_no}"/> </td>
				   <td> <a href ="<c:url value='/QnA/QnAContent?q_no=${QnAList.q_no}'/>">
				   			<c:out value="${QnAList.q_title}"/> </a></td>
				      <td> <fmt:formatDate value="${QnAList.q_date}" pattern="yyyy-MM-dd"/></td>
				      <td><c:out value="${QnAList.q_count}"/> </td>
		      </tr>
		</c:forEach>
	      </table>
	      <br>
	  <!--     <a href="#" onclick="page(2)">asasdasdda </a> -->
	<!-- //http://localhost:8090/HH/notice/NoticeList?curPage=2&Search=Search& -->
	 <!--  //http://locatlhost:8090/HH/notice/noticeList?curPage=1&Search=Search -->
	 <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  -->
	 <script>
	 function list(page) {
		location.href="${pageContext.request.contextPath}/notice/NoticeList?curPage="+page+
				"&Search=${Search}&Searchtext=${Searchtext}"
	}
	 </script>
<c:if test="${1<page.curBlock}">
<a href="#" onclick="list(1)">[??????]</a>
</c:if>

<c:if test="${1<page.curBlock}">
<a href="#" onclick="list(${page.prevPage})">[??????]</a>
</c:if>

<c:forEach begin="${page.blockBegin}" end="${page.blockEnd}" var="num"> 
<c:choose>
<c:when test="${num eq page.curPage}">
	<span style="color:red">${num}</span>&nbsp
</c:when>
<c:otherwise>
	<a href="#" onclick="list(${num})">${num}</a>
</c:otherwise>
</c:choose>
</c:forEach>

	 <c:if test="${page.curBlock <=page.totBlock}">
	 <a href="#" onclick="list(${page.nextPage})">[??????]</a>
	  </c:if>
	  
	  <c:if test="${page.curBlock<=page.totPage}">
	  <a href="#" onclick="list(${page.totPage})">[???] </a>
	  </c:if>
	  
	
 <%-- 	<div id="paging" style="text-align:center"> 
		  <c:if test="${1<page.curBlock}">
		<a href="<c:url value="?">
					<c:param name="curPage">1</c:param>
					<c:param name="Search">${Search}</c:param>
					<c:if test="${!empty Searchtext}"><c:param name="Searchtext">${Searchtext}</c:param></c:if>
				</c:url>">??????</a> 
		 </c:if>
		      <c:if test="${1<page.curBlock}">
		        <a href="<c:url value="?">
					<c:param name="curPage">${page.prevPage}</c:param>
					<c:param name="Search">${Search}</c:param>
					<c:if test="${!empty Searchtext}"><c:param name="Searchtext">${Searchtext}</c:param></c:if>
				</c:url>">??????</a>
		       </c:if>
				
		      <c:forEach begin="${page.blockBegin}"  end="${page.blockEnd}" var="num">
			      <c:choose> 
			      <c:when test="${num eq page.curPage}">
			         	    <span style="color: red">${num}</span>&nbsp;
			      </c:when>
			      <c:otherwise>
			         <a href="<c:url value="?">
					<c:param name="curPage">${num}</c:param>
					<c:param name="Search">${Search}</c:param>
					<c:if test="${!empty Searchtext}"><c:param name="Searchtext">${Searchtext}</c:param></c:if>
				</c:url>">${num}</a>  &nbsp;
			      </c:otherwise>
			      </c:choose>
		  </c:forEach>
		       <c:if test="${page.curBlock<=page.totBlock}">
		    		<a href="<c:url value="?">
					<c:param name="curPage">${page.nextPage}</c:param>
					<c:param name="Search">${Search}</c:param>
					<c:if test="${!empty Searchtext}">
					<c:param name="Searchtext">${Searchtext}</c:param></c:if>
				</c:url>">??????</a>
		     </c:if>
		     <c:if test="${page.curBlock <=page.totPage}">
	  	        <a href="<c:url value="?"> 
					<c:param name="curPage">${page.totPage}</c:param>
					<c:param name="Search">${Search}</c:param>
					<c:if test="${!empty Searchtext}"><c:param name="Searchtext">${Searchtext}</c:param></c:if>
				</c:url>"> ??? </a>
		     </c:if>
   </div> --%>
    
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
                            <div class="col_half">
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