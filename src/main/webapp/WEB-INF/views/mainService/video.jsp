<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<c:set var="info" scope="session" value="${info}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture</title>
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/flaticon.css" />
    <link rel="stylesheet" href="resources/css/themify-icons.css" />
    <link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="resources/vendors/nice-select/css/nice-select.css" />
    <!-- main css -->
    <link rel="stylesheet" href="resources/css/style.css" />
    <style type="text/css">
    	#videoDiv #cam{
    		float:left;
  
    	}
    	
    	#img{
    		padding-top : 20px;
    		padding-left : 20px;
    	}
    </style>
</head>
<body>
	<div style="margin: 20px 0px 0px 20px;">
		<div id="videoDiv" style="float:left; border:5px solid yellow; width:600px; height:600px; ">
			<video src="resources/hgVideo/testVideo.mp4" width="600px" height="600px" controls autoplay></video>
		</div>
		<div id="cam" style="border:5px solid red; float:left; overflow:auto; margin-left:20px;">
			<div style="border:5px solid blue; overflow:auto">
				<div style="border:5px solid green; width:400px; height:200px; margin-bottom:10px;">
					<video src="" id="mycam" autoplay></video>				
				</div>
				<div id="imgdi" style="border:5px solid black; width:400px; height:250px; margin-top:10px;">
					<img alt="" id="img" src="resources/img/alarmGreen.png">
				</div>			
			</div>
			<div style="border:5px solid orange; overflow:auto; margin-top:20px;">				
				<div >
					<button onclick="lectureClose()">강의종료</button>
				</div>
			</div>
		</div>
	</div>
</body>
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
		
		//강의 창을 띄울때 크기 조절함
		window.onfocus=function(){
		}
		window.onload=function(){
		window.focus(); // 현재 window 즉 익스플러러를 윈도우 최상단에 위치
		window.moveTo(0,0); // 웹 페이지의 창 위치를 0,0 (왼쪽 최상단) 으로 고정
		window.resizeTo(1480,900); // 웹페이지의 크기를 가로 1280 , 세로 800 으로 고정(확장 및 축소)
		window.scrollTo(0,250); // 페이지 상단 광고를 바로 볼 수 있게 스크롤 위치를 조정
		}
	
	    // 캠이 보여야하는데 안보임
	    var video = document.getElementById('myvideo');
	    navigator.webkitGetUserMedia("video", success);
	   
	    function success(stream){
	      video.src = window.webkitURL.createObjectURL(stream);
	    }
	    
	    
	    //강의 창을 닫음
	    function lectureClose(){
	    	self.close();
	    }
	    
	    //집중도 떨어질때 이미지 변경해줄 예정
	    var img = document.getElementById('img');
	    var imgdi = document.getElementById('imgdi');
	    
	    imgdi.addEventListener('mouseover', function(){
	    	img.setAttribute('src','resources/img/alarmYellow.png')
	    })
	    
	   	
	      
	    </script>
		
	</script>	
		
</html>