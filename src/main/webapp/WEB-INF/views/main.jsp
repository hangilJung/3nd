<%@page import="com.face.model.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<c:set var="info" scope="session" value="${info}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="resources/img/favicon.png" type="image/png" />
    <title>Edustage Education</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/flaticon.css" />
    <link rel="stylesheet" href="resources/css/themify-icons.css" />
    <link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="resources/vendors/nice-select/css/nice-select.css" />
    <!-- main css -->
    <link rel="stylesheet" href="resources/css/style.css" />
    <style type="text/css">
		a:link { color: black; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}
		a:hover { color: black; text-decoration: underline;}	
		ul li{
			list-style-type: none;
			float:left;
			margin-left:10px;			
		}
			
		#login:hover{
			background-color : #fdc632;
			border-color : #fdc632;
			color:#002347;
		}
		#join:hover{
			color : #fdc632;
		}
		#login{
			font-weight : bold;
			color : #fdc632;
		}
		#join{
			font-weight: bold;
			color:#002347
		}

		.header_area{
			background-color:white;
			font-weight: bold;
		}
	</style>
  </head>

  <body>
    <!--================ Start Header Menu Area =================-->
    
    <%
    	MemberVO vo = (MemberVO) session.getAttribute("vo");
    
    
    %>
    <header class="header_area">
      	<div class="main_menu">

        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand logo_h" href="main.do"
              ><img src="resources/img/eyedu2.png" alt=""
            /></a>
            <button
              class="navbar-toggler"
              type="button"
              data-toggle="collapse"
              data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="icon-bar"></span> <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div
              class="collapse navbar-collapse offset"
              id="navbarSupportedContent"
            >
              <ul class="nav navbar-nav menu_nav ml-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="main.do">홈</a>
                </li>
                <li class="nav-item submenu dropdown">
                  <a
                    href="#"
                    class="nav-link dropdown-toggle"
                    data-toggle="dropdown"
                    role="button"
                    aria-haspopup="true"
                    aria-expanded="false"
                    >강 의</a>
                  <ul class="dropdown-menu">
                    <li class="nav-item">
                      <a class="nav-link" href="allLecture.do">전체 강의 목록</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="myLectureList.do" >수강중인 강의</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="timerCalendar.do">집중도 분석</a>
                </li> 
                <li class="nav-item">
                  <a class="nav-link" href="timerCalendar.do">자습 타이머</a>
                </li>
                <li class="nav-item submenu dropdown">
                  <a
                    href="#"
                    class="nav-link dropdown-toggle"
                    data-toggle="dropdown"
                    role="button"
                    aria-haspopup="true"
                    aria-expanded="false"
                    >마이 페이지</a>
                  <ul class="dropdown-menu">
                    <li class="nav-item">
                      <a class="nav-link" href="${cpath}/myPage.do">회원 정보 수정</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="logout.do">로그아웃</a>
                    </li>
                  </ul>
                </li>  
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!--================ End Header Menu Area =================-->

    <!--================ Start Home Banner Area =================-->
    <section class="home_banner_area">
      <div class="banner_inner">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="banner_content text-center">
               
                <p class="text-uppercase">
                  Best online education service In the world
                </p>
                <h2 class="text-uppercase mt-4 mb-5">
                  One Step Ahead This Season
                </h2>  
                
                <c:choose>
                	<c:when test="${info == null }">
                		<div>
                 	 		<a id="login" href="${cpath}/loginForm.do" class="primary-btn2 mb-3 mb-sm-0" ">로그인</a>
                  			<a id="join" href="${cpath}/sign.do" class="primary-btn ml-sm-3 ml-0">회원가입</a>
                		</div>
                	</c:when>
                
                	<c:otherwise>
                		<div>
                  			<p>:) ${info.getId()}님 환영합니다.</p>
                		</div>
                	</c:otherwise>
                </c:choose>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================ End Home Banner Area =================-->

  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="resources/js/jquery-3.2.1.min.js"></script>
    <script src="resources/js/popper.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="resources/js/owl-carousel-thumb.min.js"></script>
    <script src="resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="resources/js/mail-script.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="resources/js/gmaps.min.js"></script>
    <script src="resources/js/theme.js"></script>
    <script>
    	//var info = '${info.getId()}';
    	
	    $(function(){
	    	if('${info.getImg()}'=="Unregistered"){
	    		alert("얼굴 사진 등록을 위해 페이지 이동을 합니다.");
	    		location.href="${cpath}/modify2.do";
    		}
	    });
    </script>
  </body>
</html>
