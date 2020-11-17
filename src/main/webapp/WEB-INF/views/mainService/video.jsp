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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Icons" media="all">
    <style type="text/css">
    	#videoDiv #cam{
    		float:left;
  
    	}
    	
    	#img{
    		padding-top : 20px;
    		padding-left : 20px;
    	}
    	#btn-black{
    		bgcolor:white;
    		float:left;
    		border: 3px solid black;
    		border-radius: 20px;
    		width:130px;
    		margin-left:40px;
    	
    	}
    </style>
</head>
<body>

   <div style="margin: 20px 0px 0px 20px;">
      <div id="videoDiv" style="float:left; width:65%; height:90%; ">
         <video width="100%" height="100%" controls>
         	<source src="${cpath}${path.getPath()}" type="video/mp4">
         </video>
      </div>
      <div id="cam" style=" float:left; overflow:auto; margin-left:20px; width:30%; height:90%; ">
         
         <div style="border:5px solid green; width:100%; height:50%; margin-bottom:10px;">   
            	<img id="mycam" src="">                
         </div>
            
         <div class="wrapper" style="background-color:#ffdd40; width:80%;margin-left:10%; ">
           <div class="bell" id="bell-1" style="text-align: center;">
             <div class="anchor material-icons layer-1">notifications_active</div>
             <div class="anchor material-icons layer-2">notifications</div>
             <div class="anchor material-icons layer-3">notifications</div>
           </div>
         </div>
         
         <div style="overflow:auto; margin-top:10px; margin-bottom:10px; text-align :center; width:100%; height:100%">            
            <div id="btn-black">
  			<a href="#" id="videoOn" style="color:black; font-size: 16px; font-weight: bold; line-height: 40px;">집중도분석</a>
			</div>
			<div id="btn-black">
  			<a onclick="lectureClose()" style="color:black;font-size: 16px; font-weight: bold; line-height: 40px;">강의종료</a>
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
		window.moveTo(100,100); // 웹 페이지의 창 위치를 0,0 (왼쪽 최상단) 으로 고정
		window.resizeTo(1480,900); // 웹페이지의 크기를 가로 1280 , 세로 800 으로 고정(확장 및 축소)
		window.scrollTo(0,250); // 페이지 상단 광고를 바로 볼 수 있게 스크롤 위치를 조정		
		
		
		/*
		$.ajax({
			url : '${cpath}/videoPath.do',
			data : {'lecNo' : '${lecNo}', 'episode' : '${episode}'},
			success : function(srcPath){
				alert("성공");
				$("#videoPath").attr("src","${srcPath}");
			},
			error : function(){
				alert("실패");
			}
		});
		*/
		}
		
	
		
		var send = {'myLecNo':  ${param.myLecNo}};
		
		 $('#videoOn').click(function(){
			 
			$("#mycam").attr("src",'http://118.40.119.27:5000/video_fa');
			
			$.ajax({ url : "http://localhost:5000/test",
		             type : "POST",
		             data: send,
		             success : function(){
		            	 alert('전송성공');
		            	
		                },
		             error : function(){
		                 alert('접속실패');
		                }
		            });
			
		}); 
		
	    	   
	    /* $('#videoOn').click(function(){	   
	    	 $("#mycam").attr("src",'http://118.40.119.27:5000/video_fa');
	     });*/
	    
	    //강의 창을 닫음
	    function lectureClose(){
	    	self.close();
	    	opener.document.location.href="videoClose.do?episode="+${path.getEpisode()}+"&lecNo="+${path.getLecNo()}+"&myLecNo="+${path.getMyLecNo()};
	    }
	    
	    
	    
	    
	   
	    </script>
		
	</script>	
	
</html>