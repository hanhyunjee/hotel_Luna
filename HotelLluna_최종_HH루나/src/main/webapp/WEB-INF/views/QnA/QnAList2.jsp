<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="qnaList"  value="${qnasMap.qnaList}"  />
<c:set var="section"  value="${qnasMap.section}"  />
<c:set var="pageNum"  value="${qnasMap.pageNum}"  />
<c:set var="totalQnA"  value="${qnasMap.totalQnA}"  />
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<%@ include file="/WEB-INF/views/header.jsp" %>
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
   <title>Hotel Luna | QnA </title>
<!-- <script language="JavaScript" src="script.js"></script> -->

<style>
	.cls2{text-align:center; font-size:30px;}

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

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax" style="background-image: url('<c:url value="/resources/images/logo/room.PNG"/>'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <FONT SIZE="6" COLOR="white">Hotel Luna | QnA </span></FONT>
                <ol class="breadcrumb">
                </ol>
            </div><br>
        </section><!-- #page-title end -->


<br>

<form action="<c:url value='/QnA/QnAList2'/>">

     
     	<c:if test="${m_id ne null}">
            	<button type="button" class="well well-sm" onclick="location.href='<c:url value='/QnA/QnAWrite'/>'" 
            	value="글 작성" style="border-radius: 10px;">글 작성</button>
    	</c:if> 
   		 
       <select name="Search" class="btn btn-secondary" >
	       <option value="SearchSearch"<c:out value="${Search eq 'SearchSearch' ? 'selected':''}"/>>  글번호</option>
		  <option value="TitleSearch"<c:out value="${Search eq 'TitleSearch' ? 'selected' : ''}"/>>제목</option>
	      <option value="ContentSearch"<c:out value="${Search eq 'ContentSearch' ? 'selected' : ''}"/>>내용</option> 
   </select>
   
		<input type="text" class="well well-sm" name="Searchtext" id="Searchtext" size="30" placeholder="검색을 통해 찾아보세요" 
			 value="<c:out value="${Searchtext}"/>">&nbsp;
		
   		<button  value="검색" class="well well-sm">검색 </button>
</form>
<br>

<!-- ---------------------------------------------------------------------------------------------------- -->
<!-- 게시글 없을때  -->

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
     			<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
  			</tr>
  			
			<c:choose>
			  <c:when test="${qnaList ==null }" >
			    <tr  height="10">
			      <td colspan="4">
			         <p align="center">
			            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
			        </p>
			      </td>  
			    </tr>
			  </c:when>
			  <c:when test="${qnaList !=null }" >
			    <c:forEach  var="qna" items="${qnaList }">
			     <tr align="center">
				 <td><c:out value="${qna.q_no}"/> </td>
				  <td><c:out value="${qna.q_writer}"/> </td> 
				 <td> <a href ="<c:url value='/QnA/QnAContent?q_no=${qna.q_no}'/>">
				   			<c:out value="${qna.q_title}"/> </a></td>
				 <td> <fmt:formatDate value="${qna.q_date}" pattern="yyyy-MM-dd"/></td>
				      <td><c:out value="${qna.q_count}"/> </td>
				</tr>
				
			    </c:forEach>
			     </c:when>
			</c:choose>
		</table>


<!--  기웅씨 추가 -->
<div class="cls2">
 <c:if test="${totalQnA != null }" >
      <c:choose>
        <c:when test="${totalQnA >100 }">  <!-- 글 개수가 100 초과인경우 -->
	      <c:forEach   var="page" begin="1" end="10" step="1" >
	         <c:if test="${section >1 && page==1 }">
	          <a href="<c:url value='/QnA/QnAList2?section=${section-1}&pageNum=${(section-1)*10 +1 }'/>">&nbsp; pre </a>
	         </c:if>
	          <a href="<c:url value='/QnA/QnAList2?section=${section}&pageNum=${page}'/>">${(section-1)*10 +page } </a>
	         <c:if test="${page ==10 }">
	          <a href="<c:url value='/QnA/QnAList2?section=${section+1}&pageNum=${section*10+1}'/>">&nbsp; next</a>
	         </c:if>
	      </c:forEach>
        </c:when>
        <c:when test="${totalQnA ==100 }" >  <!--등록된 글 개수가 100개인경우  -->
	      <c:forEach   var="page" begin="1" end="10" step="1" >
	        <a class="no-uline"  href="#">${page } </a>
	      </c:forEach>
        </c:when>
        
        <c:when test="${totalQnA< 100 }" >   <!--등록된 글 개수가 100개 미만인 경우  -->
	      <c:forEach   var="page" begin="1" end="${totalQnA/10 +1}" step="1" >
	         <c:choose>
	           <c:when test="${page==pageNum }">
	            <a class="sel-page"  href="<c:url value='/QnA/QnAList2?section=${section}&pageNum=${page}'/>">${page } </a>
	          </c:when>
	          <c:otherwise>
	            <a class="no-uline"  href="<c:url value='/QnA/QnAList2?section=${section}&pageNum=${page}'/>">${page } </a>
	          </c:otherwise>
	        </c:choose>
	      </c:forEach>
        </c:when>
      </c:choose>
    </c:if>
</div>
	      <br>
	      
<!-- 여기까지 기웅씨 추가 -->	

    
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