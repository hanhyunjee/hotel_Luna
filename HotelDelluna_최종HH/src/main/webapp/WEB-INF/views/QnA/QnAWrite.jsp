<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="UTF-8">
<%@ include file="/WEB-INF/views/header.jsp" %>

<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />

    <!-- Stylesheets 고객의소리
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
	<title>Hotel Delluna  | Notice</title>

</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

        
        <!-- Page Title 배경
        ============================================= -->
        

          

        <!-- #page-title end -->        

        <!-- Google Map
        ============================================= -->
      
        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="section content-wrap notopmargin nobottommargin bgcolor-grey">

                <div class="container clearfix">

                    <!-- Postcontent
                    ============================================= -->
                    <div class="postcontent nobottommargin">

                        <h3>글 작성</h3>

                        <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>

                   <!--      <form class="nobottommargin" id="template-contactform" name="template-contactform" action="sendemail.jsp" method="post"> -->
                    <form class="nobottommargin" id="template-contactform"  action="<c:url value='/QnA/Write'/>" method="post">

                            <div class="form-process"></div>

<                             <div class="col_one_third">
                                <label for="template-contactform-name">작성자 <small>*</small></label>
                                <input type="text" id="template-contactform-name" name="q_writer" value="${m_id}" class="sm-form-control required" readonly="readonly"/>
                            </div> 

                      <!--       <div class="col_one_third">
                                <label for="template-contactform-email">이메일 <small>*</small></label>
                                <input type="email" id="template-contactform-email" name="template-contactform-email" value="" class="required email sm-form-control" disabled />
                            </div> -->

                         

                            <div class="clear"></div>

                            <div class="col_two_third">
                                <label for="template-contactform-subject">제목 <small>*</small></label>
                                <input type="text" id="template-contactform-subject" name="q_title"  class="required sm-form-control"   maxlength="40" placeholder="제목을 입력해주세요" required="required"/>
                            </div>

                            <!-- <div class="col_one_third col_last">
                                <label for="template-contactform-service">질문유형</label>
                                <select id="template-contactform-service" name="template-contactform-service" class="sm-form-control">
                                    <option value="">-- Select One --</option>
                                    <option value="Customer Service">고객 서비스</option>
                                    <option value="Manager">매니저</option>
                                    <option value="Advertising">Advertising</option>
                                    <option value="Marketing">Marketing</option>
                                </select>
                            </div> -->

                            <div class="clear"></div>

                            <div class="col_full">
                                <label for="template-contactform-message">작성 <small>*</small></label>
                                <textarea class="required sm-form-control" id="template-contactform-message" name="q_detail" rows="15" cols="30" placeholder="글을 작성해주세요" required="required" ></textarea>
                            </div>

                            <!-- <div class="col_full hidden">
                                <input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
                            </div> -->


                            <div class="col_full">
                               <!--  <button class="btn button nomargin"  id="template-contactform-submit" name="template-contactform-submit" value="submit">작성</button> -->
                               <button class="btn button nomargin"  id="template-contactform-submit" value="submit">작성</button>
                            </div>

                        </form>

                      <!--   <script type="text/javascript">

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

                        </script> -->

                    </div><!-- .postcontent end -->
				
                    <!-- Sidebar
                    ============================================= -->
                    <div class="sidebar col_last nobottommargin">

                        <address>
                            <strong>Address:</strong><br>
                           63535, 제주특별자치도 서귀포시 중문관광로 72번길, 호텔 루나.
                        </address>
                        <strong>Phone:</strong> (341) 457 432678<br>
                        <strong>Fax:</strong> (341) 457 538478<br>
                     
                        <div class="widget noborder notoppadding">
                        	<a href="https://www.facebook.com/" class="social-icon si-light si-small si-facebook">
                            	<i class="icon-facebook"></i>
                                <i class="icon-facebook"></i></a>
                            <a href="https://twitter.com/?lang=ko" class="social-icon si-light si-small si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i></a>
                            <a href="https://www.pinterest.co.kr/" class="social-icon si-light si-small si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i></a>
                            <a href="https://plus.google.com/" class="social-icon si-light si-small si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i></a>
                            <a href="https://www.moakt.com/ko" class="social-icon si-light si-small si-email3">
                                <i class="icon-email3"></i>
                                <i class="icon-email3"></i></a>
                        </div>                        

                    </div><!-- .sidebar end -->

                </div>

            </div>

        </section><!-- #content end -->

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