<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="UTF-8">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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
                            <li><a href="<c:url value="/hotel-About-Us"/>"><div>????????????</div></a>
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
                           		 			<li  class="current"><a href="<c:url value ='/member/LoginLogOut'/>"><div>?????????</div></a>
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
        <!-- Contact Form & Map Overlay Section
        ============================================= -->
      <section id="page-title" class="page-title-parallax"
style="background-image: url('<c:url value="/resources/images/hotel-about/main.jpg"/>'); padding: 120px 0;"
	data-stellar-background-ratio="0.3">

            <div class="container clearfix" style="border-width:3px;">
                <h1>Sign Up</h1>
                 <!--???/????????????/???????????? ?????????  -->
                <ol class="breadcrumb">
                    <li><a href="<c:url value="/"/>">???</a></li>
                    <li><a href="<c:url value="/member/LoginLogOut"/>">?????????</a></li>
                    <li class="active">????????????</li>
                </ol>
            </div>

   	  </section><!-- #page-title end -->
   	  <p>
            <div class="container clearfix">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey">

                    <div class="fancy-title title-dotted-border">
                        <h3>Sign Up</h3>
                    </div>
                    <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
         		
                    <!-- Contact Form
                    ============================================= -->
                    <script>
              
                 var Check = false;
                 
                    function duplicate(){
                    	$.ajax({
                           type : 'POST',
                           url: '${pageContext.request.contextPath}/member/duplicate',
                    	   data : {
                    		   "m_id" : $('#m_id').val()
                    	   },
                    	   success : function(result) {
                    		    if(result==1) { //int???  ???????????? ?????? ??? ???.
                    		    	  $("#OK").html('?????? ????????? ID ?????????.')
                    		    	  Check = true;
                    		    }
                    		    else if(result==0){
                    		    	  $("#OK").html('???????????? ID?????????!')
                    		    	  Check = false;
                    		    }
                    		    else if($.trim(result) == -1){
                    		    	$("#OK").html('????????? ???????????????,????????????,?????? ?????? ??????, ?????? ?????? 5-12??? ????????? ????????????!')
                    		    	Check = false;
                    		     }
                    	     }
                    	 });
                      }
                    
                    $(function(){ 
                    $("#m_password2").keyup(function(){
                    	if($("#m_password").val() == $("#m_password2").val()) {
                    		$("#PasswordCheck").html('??????????????? ???????????????')
                    			 $('#m_password').change(function() {
                    					$("#PasswordCheck").html('??????????????? ???????????? ????????????.')
			                  })
                    	}
                    	else{
                    		$("#PasswordCheck").html('??????????????? ???????????? ????????????.')
                    	}
                    });
                });
                    
                    function beforeSubmit() {
                    	if ($("#sample2_postcode").val() =="" || null) {
                    		alert('???????????? ????????? ??????????????????')
                    		return false;
                    	}
                    	
                    	if(Check) { 
                    	 if($("#PasswordCheck").text() == '??????????????? ???????????????') {
                    		 alert('????????? ?????????????????????');
                    		 return true;
                    	 }
                    	 else {
                    		 alert("Password ??? ??????????????????")
                    		return false;
                    	 }
                    	}
                    	else {
                    		alert('ID ??????????????? ????????????')
                    		 $("#OK").html('?????? ????????? ????????????!!')
                    		 return false;
                    	}
                    }
                    $(function(){ 
                    	$("#m_id").change(function(){    
                    		Check = false;
                    	});
                    });
                    
                    </script>
                    
                    <form name="form1" method="post" action="<c:url value='/member/family' />"  onsubmit="return beforeSubmit()">
					<%-- <input type="hidden" name="reservation_number" id="reservation_number" value="${reservation_number}"> --%>
					
					<div class="row">
				
						<div class="col-md-6">
							<label for="template-contactform-name">?????????
							<button type="button"  class="btn btn-link" id="duplicateCheck" onclick="duplicate()"> ????????????</button>
							</label>
						<input type="text" class="well well-sm" name="m_id" id="m_id" size="85" placeholder="ID" required="required" maxlength="12">
						</div>
						<font id="OK" size="1" color="red">    </font> 
					</div>
	        	
					<!-- 	<span id="ERROR"></span> -->
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">????????????</label>
							<br>
							<input type="password" class="well well-sm" id="m_password" size="85" placeholder="Password" required="required" maxlength="15"> 
						</div> 
					</div>
					
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">???????????? ?????? </label> <font id="PasswordCheck" size="2" color="red"> </font>
							<br>
							<input type="password" class="well well-sm" name="m_password" id="m_password2" size="85" placeholder="Password Check" required="required" maxlength="15"> 
						</div> 
					</div>
					
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">????????????
								<button type="button"  class="btn btn-link" onclick="sample2_execDaumPostcode()"> ???????????? ??????</button>
							</label><br>
							<input type="text" class="well well-sm" name="m_zip1" id="sample2_postcode" size="35" placeholder="ex) 19xxx"  readonly="readonly">
						</div>

						<div class="col-md-6">
							<label for="template-contactform-name">????????????</label><br>
							 <input type="text" class="well well-sm" name="m_zip2" id="sample2_address" size="35" placeholder="????????????"  required="required">
						</div>
					</div>
					
					<div class="row">
					
					<div class="col-md-6">
							<label for="template-contactform-name">???,???,???</label><br>
							 <input type="text" class="well well-sm"  id="sample2_extraAddress" size="35" placeholder="???,???,???"  required="required">
						</div>
						
						<div class="col-md-6">
							<label for="template-contactform-name">????????????</label><br>
							<input type="text" class="well well-sm" name="m_zip3" id="sample2_detailAddress" size="35" placeholder="????????????" required="required">
						</div>
						
					</div>
					
					
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">??????</label><br>
							<input type="text" class="well well-sm" name="m_name" id="" size="35" placeholder="Name" required="required">
						</div>

						<div class="col-md-6">
							<label for="template-contactform-name">????????????</label><br>
							 <input type="text" class="well well-sm" name="m_tel" id="" size="35" placeholder="Tel" required="required">
						</div>
					</div>
					
					 
						  <div class="col_full">
							<label for="template-contactform-name">E-mail</label>
							<br>
							<input type="email" class="well well-sm" name="m_userEmail" id="m_userEmail" size="85"  placeholder="Email" required="required">
					 </div>
				
	
                        <div class="clearfix" style=" text-align:center;" >
                                <button class="button button-medium button-reveal button-3d button-rounded tright nomargin" style="color:black;">
                                <span>Submit</span> <i class="icon-angle-right"></i></button></div>
                        </form>
                        
										<!-- iOS????????? position:fixed ????????? ??????, ???????????? ???????????? ?????? position:absolute ?????? ???????????? top,left??? ?????? ?????? -->
					<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="?????? ??????">
					</div>
					
					<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
					    // ???????????? ?????? ????????? ?????? element
					    var element_layer = document.getElementById('layer');
					
					    function closeDaumPostcode() {
					        // iframe??? ?????? element??? ???????????? ??????.
					        element_layer.style.display = 'none';
					    }
					
					    function sample2_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
					
					                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
					                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
					                var addr = ''; // ?????? ??????
					                var extraAddr = ''; // ???????????? ??????
					
					                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
					                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
					                    addr = data.roadAddress;
					                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
					                    addr = data.jibunAddress;
					                }
					
					                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
					                if(data.userSelectedType === 'R'){
					                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
					                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
					                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
					                        extraAddr += data.bname;
					                    }
					                    // ???????????? ??????, ??????????????? ?????? ????????????.
					                    if(data.buildingName !== '' && data.apartment === 'Y'){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
					                    if(extraAddr !== ''){
					                        extraAddr = ' (' + extraAddr + ')';
					                    }
					                    // ????????? ??????????????? ?????? ????????? ?????????.
					                    document.getElementById("sample2_extraAddress").value = extraAddr;
					                
					                } else {
					                    document.getElementById("sample2_extraAddress").value = '';
					                }
					
					                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
					                document.getElementById('sample2_postcode').value = data.zonecode;
					                document.getElementById("sample2_address").value = addr;
					                // ????????? ???????????? ????????? ????????????.
					                document.getElementById("sample2_detailAddress").focus();
					
					                // iframe??? ?????? element??? ???????????? ??????.
					                // (autoClose:false ????????? ???????????????, ?????? ????????? ???????????? ???????????? ???????????? ?????????.)
					                element_layer.style.display = 'none';
					            },
					            width : '100%',
					            height : '100%',
					            maxSuggestItems : 5
					        }).embed(element_layer);
					
					        // iframe??? ?????? element??? ????????? ??????.
					        element_layer.style.display = 'block';
					
					        // iframe??? ?????? element??? ????????? ????????? ???????????? ???????????????.
					        initLayerPosition();
					    }
					
					    // ??????????????? ?????? ????????? ?????? ???????????? ???????????? ?????????????????? ???????????????
					    // resize????????????, orientationchange???????????? ???????????? ?????? ?????????????????? ?????? ????????? ?????? ?????? ????????????,
					    // ?????? element_layer??? top,left?????? ????????? ????????? ?????????.
					    function initLayerPosition(){
					        var width = 300; //???????????????????????? ????????? element??? width
					        var height = 400; //???????????????????????? ????????? element??? height
					        var borderWidth = 5; //???????????? ???????????? border??? ??????
					
					        // ????????? ????????? ????????? ?????? element??? ?????????.
					        element_layer.style.width = width + 'px';
					        element_layer.style.height = height + 'px';
					        element_layer.style.border = borderWidth + 'px solid';
					        // ???????????? ????????? ?????? ????????? ?????? ?????? ???????????? ????????? ??? ??? ????????? ????????? ????????????.
					        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
					        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
					    }
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
                          

                            <div class="line" style="margin: 30px 0;"></div>

                            <div class="col_half">
                                <div class="widget subscribe-widget clearfix">
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

                         <b>???????????????</b>
                         <br>00:00 ~ 24:00<br>
                         <br>
                        <ul class="nobottommargin nobullets">
                            <li><strong>???????????? (??????) </strong> </li>
                            
                            09:00 ~ 18:00<br><br>
                              ???????????? ?????????<br>
                              ????????? ????????? ?????????????????? ????????????.
                        </ul>
                        </div>
                        
                        <div class="widget clearfix">
                        <div class="fancy-title title-border">
                            <h4>Address</h4>
                        </div>

                        <ul class="nobottommargin nobullets">
                             <li>63535, ?????????????????????</li>
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