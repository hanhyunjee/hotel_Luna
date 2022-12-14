	<%@ page language="java" contentType="text/html; charset=UTF-8"
	  pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<!DOCTYPE html>
	<%@ include file="/WEB-INF/views/header.jsp" %>
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
		<link rel="stylesheet"href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
		<link rel="stylesheet"  type="text/css" href="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.css" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<script src="<c:url value='/resources/js/jquery.js'/>"> </script>
		<script src="<c:url value='/resources/js/plugins.js'/>"> </script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/date-fns/1.29.0/date_fns.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>  
		<!-- Document Title
		    ============================================= -->
		<title>Hotel Delluna</title>
		<!-- google-font  
			====================================================
			 -->
		<style>
		@import
			url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap&subset=korean')
			;
		</style>
		<style>
		html,
		body {
		  min-height: 100vh;
		  font-size: 14px;
		  font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell,
		    Fira Sans, Droid Sans, Helvetica Neue, sans-serif;
		  line-height: 18px;
		  font-weight: 400;
		  -webkit-font-smoothing: antialiased;
		  padding: 10px;
		}
		.align-right {
		  text-align: right;
		}
		h1 {
		  font-size: 1.8em;
		  line-height: 1.5em;
		}
		.datepicker-container {
		  margin-bottom: 30px;
		}
		
		#datepicker-button-trigger {
		  background: #008489;
		  border: 1px solid #008489;
		  color: white;
		  padding: 6px 10px;
		  border-radius: 4px;
		  font-size: 15px;
		  font-weight: bold;
		  text-align: center;
		  min-width: 200px;
		}
		input {
		  padding: 6px 10px;
		  border: 1px solid rgba(0, 0, 0, 0.2);
		}
		.inline-with-input {
		  width: 300px;
		}
		.inline-with-input input {
		  width: 100%;
		}
		</style>      
	</head>
	
	<!--  -->
	<body class="stretched">
	
		<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">
	
	<!-- Page Title
	      ============================================= -->
	<section id="page-title" class="page-title-parallax"
		style="background-image: url('<c:url value="/resources/images/hotel-about/main.jpg"/>'); padding: 120px 0;"
		data-stellar-background-ratio="0.3">
	
		<div class="container clearfix">
			<h1>?????? ?????? ??????</h1>
			<ol class="breadcrumb">
				<li><a href="index.html">???</a></li>
				<li class="active">?????? ?????? ??????</li>
			</ol>
		</div>
	
	</section>
	<!-- #page-title end -->
	
	<c:if test="${confirmation_payment eq '1'}"> 
	         			<script>
	         	 alert('?????? ???????????? ?????? ???????????? ????????? ????????? ?????? ?????? ??? ?????? ?????? ???????????? ????????????.');
	         	 location.href="${pageContext.request.contextPath}/reservation/ReservationSelect"; 
	         		</script>
	         		</c:if>
	   <c:if test ="${confirmation_payment eq '0'}">
	         <script>
	        	alert(' ?????? ????????? ?????? ?????? ?????? ???????????? ?????? ?????? ?????? ??? ?????? ???????????? ???????????? ???????????????');
		        location.href="${pageContext.request.contextPath}/reservation/ReservationSelect"; 
	         </script>
	   </c:if>      		
	
	<!-- Content
	      ============================================= -->
	<form action="<c:url value="/reservation/reservation1" />" method="post">
	<%-- <script src="<c:url value="/resources/js/moment.js" />"></script> --%>
	      <input id="dateOne" name="reservation_data_in" type="hidden">
	      <input id="dateTwo" name="reservation_data_out" type="hidden">
	<section id="content">
		<div class="content-wrap bgcolor-grey-li2ght">
			<div class="container clearfix">
				<!-- Post Content
	          ============================================= -->
	<div>
		<!-- Posts
	              ============================================= -->
	<div id="posts">
		<div class="entry clearfix">
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> ???????????? & ?????? ???????????? </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
						<div class="row">
						<div class="col-md-3">
						
							<!-- ???????????? --><!-- ???????????? --><!-- ???????????? --><!-- ???????????? --><!-- ???????????? --><!-- ???????????? --><!-- ???????????? -->
			<div id="app" class="app" :class="{'align-right': alignRight}">
			 <div  class="datepicker-container with-button">
		        <div class="datepicker-trigger">
		          <button id="datepicker-button-trigger" >
		            {{ formatDates(buttonDateOne, buttonDateTwo) || '????????? ????????? ?????????' }}
		          </button>
		          <airbnb-style-datepicker
		            :trigger-element-id="'datepicker-button-trigger'"
		            :mode="'range'"
		            :date-one="buttonDateOne"
		            :date-two="buttonDateTwo"
		            :min-date="'2020-04-18'"
		            :fullscreen-mobile="true"
		            :months-to-show="2"
		            :offset-y="10"
		            :trigger="trigger"
		            v-on:date-one-selected="function(val) { buttonDateOne = val }"
		            v-on:date-two-selected="function(val) { buttonDateTwo = val }"
		            v-on:closed="onClosed"
		            v-on:previous-month="onMonthChange"
		            v-on:next-month="onMonthChange"
		          ></airbnb-style-datepicker>
		        </div>
		      </div>
		    </div><!-- ????????? --><!-- ????????? --><!-- ????????? --><!-- ????????? --><!-- ????????? --><!-- ????????? --><!-- ????????? --><!-- ????????? --><!-- ????????? --><!-- ????????? -->
				    </div>
	
				    <div class="col-md-3">
					<select class="form-control" name="room_type" >
					  <option value="1">????????? ??????</option>
					  <option value="2">????????? ??????</option>
					  <option value="3">????????? ?????????</option>
					  <option value="4">????????? ?????????</option>
					</select>
					</div>
					
						<div class="col-md-3">
					
					<select class="form-control" name="adult" >
					  <option value="1">?????? 1</option>
					  <option value="2">?????? 2</option>
					  <option value="3">?????? 3</option>
					</select>
					</div>
					
					<div class="col-md-3">
		
					<select class="form-control" name="child" >
					  <option value="1">????????? 1</option>
					  <option value="2">????????? 2</option>
					  <option value="3">????????? 3</option>
					</select>
					</div>
					</div>
				</div>
			</div>
		</div>
		
	</div><!-- ???????????? ??? -->
	<div style="float:right">
				<input class="btn btn-dark" type="submit" value="????????????" >
				</div>
			</div>
		</div>
	
	</div>
	<!-- .sidebar end -->
			</div>
		</div>
	</section>
	</form>
	
	<!-- #content end -->
	<script src="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.js"></script>
	   <script>
	    var datepickerOptions = {}
	    Vue.use(window.AirbnbStyleDatepicker, datepickerOptions)
	
	    var app = new Vue({
	      el: '#app',
	      data: {
	        dateFormat: 'YYYY??? MM??? D???',
	        inputDateOne: '',
	        inputDateTwo: '',
	        buttonDateOne: '',
	        buttonDateTwo: '',
	        inlineDateOne: '',
	        sundayDateOne: '',
	        sundayFirst: false,
	        alignRight: false,
	        trigger: false,
	      },
	      methods: {
	        formatDates: function(dateOne, dateTwo) {
	          var formattedDates = ''
	          if (dateOne) {
	            formattedDates =  dateFns.format(dateOne, this.dateFormat)
	          }
	          if (dateTwo) {
	            formattedDates += ' - ' + dateFns.format(dateTwo, this.dateFormat)
	          }
	          return formattedDates
	        },
	        onClosed: function() {
	          var datesStr = this.formatDates(this.inputDateOne, this.inputDateTwo)
	          console.log('Dates Selected: ' + datesStr)
	          this.trigger = false
	          $('#dateOne').val(this.buttonDateOne);
	          $('#dateTwo').val(this.buttonDateTwo);
	          if(this.buttonDateOne=="" || this.buttonDateTwo ==""){
	            	alert("????????? ????????? ?????????.");
	          }else{
	          alert("???????????? ????????? "+this.buttonDateOne+"~"+this.buttonDateTwo+"?????????.");
	          }
	        },
	        toggleAlign: function() {
	          this.alignRight = !this.alignRight
	        },
	        triggerDatepicker: function() {
	          this.trigger = !this.trigger
	        },
	        onMonthChange: function(dates) {
	          console.log('months changed', dates)
	        },
	        login: function(dateOne, dateTwo){
	      	  console.log(this.dateOne, this.dateTwo)
	        },
	      },
	    })
	    
	    function printTime() {
	
	        var clock = document.getElementById("clock");// ????????? ?????? ??????
	        var now = new Date();// ????????????
	        var nowTime = "'" + now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate() + "'";
	        clock.innerHTML = nowTime;// ??????????????? ??????
	}
		window.onload = function() {// ???????????? ???????????? ??????
		printTime();
		}
	  </script>
	
<%@ include file="/WEB-INF/views/footer.jsp" %>	
	</div>
	<!-- #wrapper end -->
	
	<!-- Go To Top
	   ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>
	
	<!-- Footer Scripts
	   ============================================= -->
	<script type="text/javascript" src="<c:url value='/resources/js/functions.js'/>"></script>
	
	</body>
	</html>