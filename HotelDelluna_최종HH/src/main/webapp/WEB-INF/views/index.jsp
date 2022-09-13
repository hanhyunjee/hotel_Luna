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
	<link rel="stylesheet" href="<c:url value='/resources/css/responsive.css'/>"  type="text/css" />
	<link rel="stylesheet"  type="text/css" href="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.css" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<script src="<c:url value='/resources/js/jquery.js'/>"> </script>
	<script src="<c:url value='/resources/js/plugins.js'/>"> </script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="<c:url value='/resources/include/rs-plugin/js/jquery.themepunch.tools.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/include/rs-plugin/js/jquery.themepunch.revolution.min.js' />"></script>
	
 
	
    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/include/rs-plugin/css/settings.css'/>" media="screen" />

    <!-- Document Title
    ============================================= -->
	<title>Hotel Luna</title>

    <style>

        .revo-slider-emphasis-text {
            font-size: 70px;
            font-weight: 700;
            letter-spacing: 0px;
            padding: 15px 20px;
            border-top: 2px solid #FFF;
            border-bottom: 2px solid #FFF;
        }

        .revo-slider-desc-text {
            font-size: 26px;
            width: 650px;
            text-align: center;
            line-height: 1.5;
        }

        .revo-slider-caps-text {
            font-size: 30px;
            font-weight: 400;
        }
		
		.tparrows.preview2 .tp-arr-titleholder {
			text-transform: uppercase;
			font-weight:bold;
		}

    </style>
</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">
    

        <section id="slider" class="slider-parallax revoslider-wrap clearfix">

            <!--
            #################################
                - Revolution Slider -
            #################################
            -->
            <div class="tp-banner-container">
                <div class="tp-banner" >
                	<ul>    
                    
                    <!-- 메인 슬라이드 부분  -->
                    <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="" data-saveperformance="off" data-title="">
                        <img src="<c:url value='/resources/images/logo/mainslide.jpg'/>" alt="" data-bgposition="left top" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-bgfit="130" data-bgfitend="100" data-bgpositionend="right bottom">

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                        data-x="340"
                        data-y="235"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1000"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 3; color:#FFF"></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder uppercase"
                        data-x="190"
                        data-y="280"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1200"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 3; color:#FFF"><span style="color:#EAAF22"></span></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-desc-text"
                        data-x="200"
                        data-y="390"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1400"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 3; width: 750px; max-width: 750px; white-space: normal; color:#FFF"></div>
                    </li>
                    <!-- END SLIDE  -->
                    
                    <!-- SLIDE  -->
                    <li data-transition="slideup" data-slotamount="1" data-masterspeed="1000" data-thumb="" data-fstransition="fade" data-fsmasterspeed="1000" data-fsslotamount="7" data-saveperformance="off"  data-title="">
                        <img src="<c:url value='/resources/images/logo/mainslide2.jpg'/>" alt="" data-bgposition="left top" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-bgfit="130" data-bgfitend="100" data-bgpositionend="right bottom">

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text"
                        data-x="200"
                        data-y="170"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1200"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 11; color: #222;"></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder uppercase"
                        data-x="197"
                        data-y="210"
                        data-customin="x:5;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:5;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1400"
                        data-easing="easeOutQuad"
                        data-splitin="chars"
                        data-splitout="none"
                        data-elementdelay="0.1"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 11; font-size: 56px; color: #222;"></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-desc-text tleft"
                        data-x="200"
                        data-y="310"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800"
                        data-start="1600"
                        data-easing="easeOutQuad"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0.01"
                        data-endelementdelay="0.1"
                        data-endspeed="1000"
                        data-endeasing="Power4.easeIn" style="z-index: 11; max-width: 550px; white-space: normal; color: #222;"></div>

                    </li>
                    <!-- END SLIDE  -->
                   
                    <!-- SLIDE  -->
                    <li data-transition="slideup" data-slotamount="1" data-masterspeed="1500" data-thumb="" data-delay="10000" data-saveperformance="off"  data-title="">
                    <img src="<c:url value='/resources/images/logo/mainslide3.jpg' />" alt="" data-bgposition="left top" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-bgfit="130" data-bgfitend="100" data-bgpositionend="right bottom">

                    <div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                    data-x="200"
                    data-y="200"
                    data-customin="x:-200;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                    data-speed="800"
                    data-start="1500"
                    data-easing="easeOutQuad"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.1"
                    data-endspeed="1000"
                    data-endeasing="Power4.easeIn" style="z-index: 3; color: #FFF;"></div>

                    <div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
                    data-x="197"
                    data-y="240"
                    data-customin="x:10;y:0;z:0;rotationY:120;rotationZ:0;scaleX:0.8;scaleY:0.8;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 50%;"
                    data-speed="300"
                    data-start="1700"
                    data-easing="easeOutQuad"
                    data-splitin="chars"
                    data-splitout="none"
                    data-elementdelay="0.1"
                    data-endelementdelay="0.1"
                    data-endspeed="1000"
                    data-endeasing="Power4.easeIn" style="z-index: 3; color: #FFF; line-height: 1.2; max-width: 450px; width: 450px; white-space: normal;"></div>
                    
                </li>
                <!-- END SLIDE  -->
                
                </ul>

                </div>
            </div>

            <script type="text/javascript">

                var tpj=jQuery;
                tpj.noConflict();

                tpj(document).ready(function() {

                    var apiRevoSlider = tpj('.tp-banner').show().revolution(
                    {
                        dottedOverlay:"none",
                        delay:9000,
                        startwidth:1140,
                        startheight:700,
                        hideThumbs:200,

                        thumbWidth:100,
                        thumbHeight:50,
                        thumbAmount:3,

                        navigationType:"none",
                        navigationArrows:"solo",
                        navigationStyle:"preview2",

                        touchenabled:"on",
                        onHoverStop:"on",

                        swipe_velocity: 0.7,
                        swipe_min_touches: 1,
                        swipe_max_touches: 1,
                        drag_block_vertical: false,


                        parallax:"mouse",
                        parallaxBgFreeze:"on",
                        parallaxLevels:[8,7,6,5,4,3,2,1],
                        parallaxDisableOnMobile:"on",


                        keyboardNavigation:"on",

                        navigationHAlign:"center",

                        navigationVAlign:"bottom",
                        navigationHOffset:0,
                        navigationVOffset:20,

                        soloArrowLeftHalign:"left",
                        soloArrowLeftValign:"center",
                        soloArrowLeftHOffset:20,
                        soloArrowLeftVOffset:0,

                        soloArrowRightHalign:"right",
                        soloArrowRightValign:"center",
                        soloArrowRightHOffset:20,
                        soloArrowRightVOffset:0,

                        shadow:0,
                        fullWidth:"off",
                        fullScreen:"off",

                        spinner:"spinner0",

                        stopLoop:"off",
                        stopAfterLoops:-1,
                        stopAtSlide:-1,

                        shuffle:"off",


                        forceFullWidth:"off",
                        fullScreenAlignForce:"off",
                        minFullScreenHeight:"400",

                        hideThumbsOnMobile:"on",
                        hideNavDelayOnMobile:1500,
                        hideBulletsOnMobile:"on",
                        hideArrowsOnMobile:"on",
                        hideThumbsUnderResolution:0,

                        hideSliderAtLimit:0,
                        hideCaptionAtLimit:0,
                        hideAllCaptionAtLilmit:0,
                        startWithSlide:0,
                        fullScreenOffsetContainer: ".header"
                    });

                }); //ready

            </script>

            <!-- END REVOLUTION SLIDER -->

        </section>

        <!-- Content
        ============================================= -->
              
          		<div class="section bgcolor-grey-light notopmargin noborder nobottommargin">
                    <div class="container clearfix">
                        <div class="col_half nobottommargin center">
                            <img src="<c:url value='/resources/images/logo/mainpanorama.PNG' />" alt="" data-animate="fadeInUp">
                        </div>
                        <div class="col_half nobottommargin col_last">
                            <div class="heading-block" style="padding-top: 40px;">
                                <h3 data-animate="fadeInDown">DINING</h3>
                                <span data-animate="fadeInUp">Panorama ( All day Dining )</span>
                            </div>
                            <p>국내 최초 270˚파노라마 뷰를 조망할 수 있는<br> 자연 속 레스토랑 올 데이 다이닝 ‘파노라마 (Panorama)’에서는
							<p>엄선된 재료로 정성스럽게 만들어진 조식 뷔페 부터 다채로운 디너까지 다양한 메뉴의 올 데이 다이닝을 사랑하는 사람들과 함께 즐기실 수 있습니다.</p>
                            <a href="<c:url value="/dining-1"/>" class="btn btn-primary">자세히 보기</a>
                    </div>
           	  </div>
           	  
           	            		<div class="section bgcolor-grey-light notopmargin noborder nobottommargin">
                    <div class="container clearfix">
                        <div class="col_half nobottommargin center">
                            <img src="<c:url value='/resources/images/logo/mainheon.PNG' />" alt="" data-animate="fadeInUp">
                        </div>
                        <div class="col_half nobottommargin col_last">
                            <div class="heading-block" style="padding-top: 40px;">
                                <h3 data-animate="fadeInDown">FACILITIES</h3>
                                <span data-animate="fadeInUp">All-season Outdoor Spa Pool He:on</span>
                            </div>
                            <p>오감만족 힐링, 사계절 따뜻한 루나 호텔 제주 럭셔리 스파, 가든 해온(海溫).
                            <p>바다 해(海)와 따뜻할 온(溫)을 품은 이름처럼,<br>제주의 자연을 그대로 닮은 사계절 온수풀입니다.</p>
                            <a href="<c:url value="/menu-item"/>" class="btn btn-primary" >자세히 보기</a>
                        </div>
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