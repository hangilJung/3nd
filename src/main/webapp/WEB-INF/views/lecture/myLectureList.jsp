<%@page import="java.util.ArrayList"%>
<%@page import="com.face.model.MyLectureVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="img/favicon.png" type="image/png" />
    <title>About Us</title>
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
		.col-md-7 img{
			position: absolute; top:0; left: 0;
			width: 100%;
			height: 100%;
		}		
	</style>
  </head>

  <body>
    <!--================ Start Header Menu Area =================-->
    <header class="header_area">
      <div class="main_menu">

        <nav class="navbar navbar-expand-lg navbar-light" style="background:black;">
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
                    style="color:white;"
                    >강 의</a>
                  <ul class="dropdown-menu">
                    <li class="nav-item">
                      <a class="nav-link" href="allLecture.do">전체 강의 목록</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="myLectureList.do">수강중인 강의</a>
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
                    style="color:white;"
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
                <h2>수강중인 강의 목록</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

     <!-- Page Content -->
  <div class="container" style="margin-top:20px;">

    <div class="row">

      <div class="col-lg-3">
        <div class="list-group">
        	<h1 class="my-4">강 의</h1>
          <a href="allLecture.do" class="list-group-item">모든 강의</a>
          <a href="myLectureList.do" class="list-group-item">수강중인 강의</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        

        <!-- Page Content -->
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">수강중인 강의
        <small>Secondary Text</small>
      </h1>

	  <c:forEach items="${viewAll }" var="list" varStatus="status">
	      <div class="row" style="margin-bottom:30px;">
	        <div class="col-md-7">
	          <a onclick='href="myLectureSubList.do?lecNo=${list.lecNo}"'>
	            <img class="img-fluid rounded mb-3 mb-md-0" src="${cpath}${list.thumbPath}" alt="">
	          </a>
	        </div>
	        <div class="col-md-5">
	          <h3>${list.subject } ${list.lecName }</h3>
	          <p>${list.lecIntro}</p>
	          <a class="btn btn-primary" href="myLectureSubList.do?lecNo=${list.lecNo}">썸네일클릭시비디오보기함수가있어서만든강의세부사항버튼</a>
	        </div>
	      </div>
      </c:forEach>

	 <hr>

      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

    </div>
    <!-- /.container -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

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