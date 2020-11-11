<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="icon" href="resources/img/favicon.png" type="resources/image/png" />
    <title>About Us</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/flaticon.css" />
    <link rel="stylesheet" href="resources/css/themify-icons.css" />
    <link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="resources/vendors/nice-select/css/nice-select.css" />
    <!-- main css -->
    <link rel="stylesheet" href="resources/css/style.css" />
  </head>

  <body>
    <!--================ Start Header Menu Area =================-->
    <header class="header_area">
      <div class="main_menu">
        

        <nav class="navbar navbar-expand-lg navbar-light"  style="background:black;">
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand logo_h" href="${cpath}/main.do"
              ><img src="resources/img/logo2.png" alt=""
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
                  <a class="nav-link" href="${cpath}/main.do">홈</a>
                </li>
                <li class="nav-item submenu dropdown">
                  <a
                    href="#"
                    class="nav-link dropdown-toggle"
                    data-toggle="dropdown"
                    role="button"
                    aria-haspopup="true"
                    aria-expanded="false"      
                    style="color:white"
                    >메인 서비스</a>
                  <ul class="dropdown-menu">
                    <li class="nav-item">
                      <a class="nav-link" href="${cpath}/allLecture.do">전체 강의 목록</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="${cpath}/mainService.do">수강중인 강의</a>
                    </li>
                  </ul>
                </li> 
        		<li class="nav-item">
                  <a class="nav-link" href="timerCalendar.do" style="color:white;">집중도 분석</a>
                </li> 
                <li class="nav-item">
                  <a class="nav-link" href="timerCalendar.do" style="color:white;">자습 타이머</a>
                </li>
                <li class="nav-item submenu dropdown">
                  <a
                    href="#"
                    class="nav-link dropdown-toggle"
                    data-toggle="dropdown"
                    role="button"
                    aria-haspopup="true"
                    aria-expanded="false"
                    style="color:white"
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

    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="overlay"></div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-6">
              <div class="banner_content text-center">
                <h2>회원 정보 수정</h2>
                <div class="page_link">
                  <a>비밀번호</a>
                  <a>연락처</a>
                  <a>얼굴 사진</a>             
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================ Start About Area =================-->
    <section class="about_area section_gap"  >
    
     <div class="container" style="text-align:center" >
            <div class="modify">
            	<h1>MY PAGE</h1>
       			<form action="modify.do" method="post">
       			<br>
       			<br>
       			<input type="password" placeholder="비밀번호를 입력하시요" >
       			<input type="submit" value="확인">
       			</form>
       		</div>
       	</div>
      
<!--     
      <div class="container2" style="text-align:center" >   
	    <div class="container1">
	      <div class="hidden1">
	        <svg class="lock1" width="30" height="40" viewBox="0 0 30 40">
	          <path class="lock-white" d="M 12.519565,0 C 6.7072359,0 2.0282227,4.622895 2.0282227,10.365511 V 19.386852 C 0.81380849,20.12592 0,21.438885 0,22.957364 V 40 H 30 V 22.957364 C 30,21.444973 29.193452,20.135235 27.987171,19.394457 V 10.365511 C 27.987171,4.622895 23.308158,0 17.495831,0 Z M 12.519565,4.384239 H 17.495831 C 20.923632,4.384239 23.682489,7.111909 23.682489,10.498597 V 19.002803 H 6.3309823 V 10.498597 C 6.3309823,7.111909 9.091764,4.384239 12.519565,4.384239 Z" />
	        </svg>
	        <input type="password" class="hidden-input" />
	      </div>
	      <div class="revealed">
	        <svg class="lock" width="30" height="40" viewBox="0 0 30 40">
	          <path class="lock-black" d="M 12.519565,0 C 6.7072359,0 2.0282227,4.622895 2.0282227,10.365511 V 19.386852 C 0.81380849,20.12592 0,21.438885 0,22.957364 V 40 H 30 V 22.957364 C 30,21.444973 29.193452,20.135235 27.987171,19.394457 V 10.365511 C 27.987171,4.622895 23.308158,0 17.495831,0 Z M 12.519565,4.384239 H 17.495831 C 20.923632,4.384239 23.682489,7.111909 23.682489,10.498597 V 19.002803 H 6.3309823 V 10.498597 C 6.3309823,7.111909 9.091764,4.384239 12.519565,4.384239 Z" />
	        </svg>
	        <input class="revealed-input" />
	      </div>
	      <div class="button1">
	        <svg class="eye" width="36" height="36" viewBox="0 0 72 72">
	          <path class="eye-lower" d="M 15.6,37 C 15.6,37 24.309181,49.073101 34.102911,49.166773 43.896641,49.260445 53.4,37 53.4,37" />
	          <circle r="6" cy="36" cx="34.400002" class="eye-iris" />
	          <path class="eye-lid" d="M -5,-5 V 37 H 15.6 C 15.6,37 25.327177,48.715274 34.312131,48.785 43.297085,48.854726 53.4,37 53.4,37 H 77 V -5 Z" />
	          <g class="eye-lashes">
	            <path class="eye-lash" d="M 17.45627,17.07484 24.778981,25.652873" />
	            <path class="eye-lash" d="M 34.602,12.600574 V 23.601076" />
	            <path class="eye-lash" d="M 51.580203,17.07484 44.257492,25.652873" />
	          </g>
	        </svg>
	      </div>
	    </div>  
      </div>
  -->       
    </section>
    <!--================ End About Area =================-->



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

  </body>
</html>
