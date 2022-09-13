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

                        <h3>문의게시판 | Q&A</h3>

                        <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>

                    <form class="nobottommargin" id="template-contactform"  <%-- action="<c:url value='/QnA/WriteModifiy?q_no=${dto.q_no}&q_date=${dto.q_date}'/>" --%> method="post">
                            <div class="form-process"></div>
                               <div class="col_one_third">
                                <label for="template-contactform-name">No <c:out value="${dto.q_no}"/><small>*</small></label>
                            </div>
                            
                               <div class="col_one_third">
                                 <label for="template-contactform-name">작성일 <small>*</small></label>
                                 <fmt:formatDate value="${dto.q_date}" pattern="yyyy-MM-dd" />
                              </div>
                         		 
                            <div class="col_one_third">
                                <label for="template-contactform-name">작성자 <small>*</small></label>
                               <c:out value="${dto.q_writer}"/>
                            </div>
                            
                              <font id="RemoveFont" color="red" size="2"> </font>
                                    
                           
                            	<%-- <c:when test="${m_id ne null}">
                            		<div class="clear"></div>
                            		<div class="col_two_third" id="Content_title">
                                		<label for="template-contactform-subject">제목 <small>*</small></label>
                                		<input type="text" id="template-contactform-subject" name="q_title" value="<c:out value="${dto.q_title}"/>"  class="required sm-form-control"  maxlength="40" />
                            		</div>
		                            <div class="clear"></div>
		                            <div class="col_full" id="Content_detail">
		                                <label for="template-contactform-message">내용 <small>*</small></label>
		                                <textarea class="required sm-form-control" id="template-contactform-message" name="q_detail" rows="15" cols="30" ><c:out value='${dto.q_detail}'/></textarea>
		                            </div>
		                       </c:when> --%>
                          
                             <div class="clear"></div>
                            <div class="col_two_third" id="Content_title">
                                <label for="template-contactform-subject">제목 <small>*</small></label>
                                <input type="text" id="template-contactform-subject" name="q_title" value="<c:out value="${dto.q_title}"/>"  class="required sm-form-control"  readonly maxlength="40" />
                            </div>
                            <div class="clear"></div>
                            <div class="col_full" id="Content_detail">
                                <label for="template-contactform-message">내용 <small>*</small></label>
                                <textarea class="required sm-form-control" id="template-contactform-message" name="q_detail" rows="15" cols="30" readonly><c:out value='${dto.q_detail}'/></textarea>
                            </div>
                            
                            
			 
                            <!-- <div class="col_full hidden">
                                <input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
                            </div> -->
  							
                            <div class="col_full">
                               <!--  <button class="btn button nomargin"  id="template-contactform-submit" name="template-contactform-submit" value="submit">작성</button> -->
                             	<c:if test="${m_id == dto.q_writer}">
                               		<input type="button"  class="btn button nomargin"  id="ContentModify" value="수정"/>
                                 	<button type="button" class="btn button nomargin"  id="ContentRemove" onclick="QnADelete()" >삭제</button>
                                 	
                                 	<button type="button" class="btn button nomargin" id="Modify" style="display: none" value="수정하기" onclick="QnAModify()">수정하기</button>
                                 	<button type="button" class="btn button nomargin" id="Cancel" style="display: none" value="취소">취소</button>
                                </c:if> 
                                    <button type="button"  class="btn button nomargin"  id="QnAList" onclick="location.href='<c:url value="/QnA/QnAList2"/>'">글 목록</button>
                            </div>
                        </form>
          
	             		<script>
	             			$("#ContentModify").click(function(event){
	             				$("#template-contactform-subject").attr("readonly", false);
	             				$("#template-contactform-message").attr("readonly", false);
	             				$("#ContentModify").hide();
	             				$("#ContentRemove").hide();
	             				$("#QnAList").hide();
	             				
	             				$("#Modify").css("display" ,"inline-block");
	             				$("#Cancel").css("display" ,"inline-block");
	             			})       
	             			
	             			function QnAModify() {
	             				var modify_title = $("#template-contactform-subject").val();
	             				var modify_detail = $("#template-contactform-message").val();
	             				
              						if(confirm('정말 수정 하시겠습니까?')) {
              							$.ajax({
              								type:'POST',
              								url:'<c:url value="/QnA/QnAModify"/>',
              								data: {
              									"q_no" : "${dto.q_no}",
              									"q_title" : modify_title,
              									"q_detail" : modify_detail
              								},
              								success:function(data){
              									alert("수정이 완료되었습니다.");
              									//var url = "/HH/QnA/QnAList2";
              									var url = '<c:url value="/QnA/QnAList2"/>';
              									location.replace(url);
              									
              								}//success
              							}); //ajax
              						} //if
              						else return false;
              					}
	             			
              					function QnADelete() {
              						if(confirm('정말 삭제 하시겠습니까?')) {
              							$.ajax({
              								type:'GET',
              								url:'<c:url value="/QnA/QnADelete"/>',
              								data: {"q_no" : "${dto.q_no}"},
              								success:function(result){
              									$("#Content_title").hide();
              									$("#Content_detail").hide();
              									$("#ContentModify").hide();
              									$("#ContentRemove").hide();
              									$("#RemoveFont").html("NO."+result+"<br>정상적으로 삭제되었습니다.");              								
              								}//success
              							}); //ajax
              						} //if
              						else return false;
              					}//function NoticeDelete
            		   </script>
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