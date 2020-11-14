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
				.lect_top{
			padding: 30px 0 0 30px;
		}

		.lect_bottom{
			padding: 0 30px 0 30px;
		}
		.container{
			margin-top:50px;
		}
		.col-md-7 img{
			position: absolute; top:0; left: 0;
			width: 100%;
			height: 100%;
		}
		.info_table td {
    	height: 36px;
    	border-top: 2px solid #e8e8e8;
		}
		
	
		#bt{
			background-color:#002347;
			color : #fdc632;
			border-width:3px;
			border-radius:45px;
			padding:0 12px 0 12px;

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
 <div class="container" style="margin-bottom:100px;">

	    <div class="row" style="margin-bottom:35px;">
	      <div class="col-md-7" style="width:40%;flex: 0 0 40%;max-width: 40%;  ">
			<img src="${cpath}${viewAll.get(0).thumbPath}">
		  </div>
   	        <div class="col-md-5" style="width: 60%; flex: 0 0 60%;max-width: 60%; padding-left: 40px;">
	          <table class="info_table " style="float:right font-size: 16px; line-height: 3;">
				<colgroup>
					<col style="width:18%">
					<col style="width:26%">
							<col style="width:25%">
							<col style="width:">
						</colgroup>
						<tbody>
						<tr>
							<th><span>강의이름</span></th>
							<td colspan="3">
								${viewAll.get(0).lecName}
							</td>
						</tr>
						<tr>
							<th><span>강의소개</span></th>
							<td colspan="3">
								${viewAll.get(0).lecIntro}
							</td>
						</tr>
						<tr>
							<th><span>선생님</span></th>
							<td>${viewAll.get(0).teacher}</td>
							<th><span >교재</span></th>
							<td>${viewAll.get(0).book}</td>
						</tr>
						<tr>
							<th><span>수강대상</span></th>
							<td>${viewAll.get(0).targets}</td>
							<th><span>강좌수준</span></th>
							<td>${viewAll.get(0).levels}</td>
						</tr>
						<tr>
							<td colspan="4" style="text-align:center; ">
								<button id="bt"onclick="btnClick()" style="margin-top:10px;font-size: 12px;font-weight:bold;">학습하기(수강신청)</button>
							</td>
						</tr>
						</tbody></table>
	        </div>
	      </div>
	      
	      
	      
	<div class="lect_bottom">
		
		<table style="text-align: center; width: 100%" line-height: 3;" border="1">
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
	</div>

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