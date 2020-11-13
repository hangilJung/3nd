<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
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
	<table style="text-align: center; width: 100%" border="1">
		<tr>
			<td rowspan="2">
				<img src="${cpath}${viewAll.get(0).thumbPath}">
			</td>
			<td>강의이름</td>
			<td>강의소개</td>
			<td>전체회차</td>
			<td>선생님</td>
			<td>수강대상</td>
			<td>교재</td>
			<td>강의수준</td>
			<td rowspan="2">
				<button onclick="btnClick()">수강취소</button>
			</td>
		</tr>
		<tr>
			<td>${viewAll.get(0).lecName}</td>
			<td>${viewAll.get(0).lecIntro}</td>
			<td>${viewAll.get(0).allEpi}</td>
			<td>${viewAll.get(0).teacher}</td>
			<td>${viewAll.get(0).targets}</td>
			<td>${viewAll.get(0).book}</td>
			<td>${viewAll.get(0).levels}</td>		
		</tr>
	</table>	
	<br><br><br><br><br>
	<table style="text-align: center; width: 100%" border="1">
		<tr>	
			<td>회차</td>
			<td>회차소개</td>
			<td>강의보기</td>
			<td>집중도분석</td>
		</tr>
		<c:forEach items="${viewAll }" var="list" varStatus="status">
			<tr>
				<td>${list.episode }</td>
				<td>${list.epiIntro }</td>
				<td><button type="button" onclick="window.open('${cpath}/video.do?myLecNo=${list.myLecNo}','Lecture','width=1500, height=900');" >강의보기</button></td>
					
				<td>
					<c:if test="${list.curTime > 0}">
						<button onclick="location.href = 'concentration.do?myLecNo=${list.myLecNo}'">집중도분석</button>
					</c:if>	
				</td>
				<!-- onclick="location.href='video.do?myLecNo=${list.myLecNo}'" -->
			</tr>
		</c:forEach>
	</table>	

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
    <script type="text/javascript">
		function btnClick(){
			
			if(confirm("수강취소 하시겠습니까?") == true){	
				window.location.href ="myLectureDelete.do?lecNo=${viewAll.get(0).lecNo}";
			}
		
		};
		
		
		
		/*
		var send = {'myLecNo': myLecNo};
		
		$('#videoClick').click(function(){
			$.ajax({ url : "http://localhost:5000/test",
		             type : "POST",
		             data: send,
		             success : function(data){
		            	 alert('전송성공')           
						 window.open('${cpath}/video.do?myLecNo='+data, 'Lecture','width=1500, height=900'); 
       					 return false;
		                },
		             error : function(){
		                 alert('접속실패')
		                }
		            });
		});
		*/
		
		// window.open('${cpath}/video.do?myLecNo=${list.myLecNo}', 'Lecture','width=1500, height=900'); 
       //  return false;
	

 </script>
 </body>
</html>