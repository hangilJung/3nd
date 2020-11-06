<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
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
    <script type="text/javascript">
    	
    	function login(){
    		location.href='${cpath}/main.do'
    		if()
    	}
    	
    </script>
   
    <style type="text/css">
		a:link { color: red; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}
		a:hover { color: blue; text-decoration: underline;}	
		ul li{
			list-style-type: none;
			float:left;
			margin-left:10px;			
		}	
	</style>
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/flaticon.css" />
    <link rel="stylesheet" href="resources/css/themify-icons.css" />
    <link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="resources/vendors/nice-select/css/nice-select.css" />
    <!-- main css -->
    <link rel="stylesheet" href="resources/css/style.css" />
    <!-- my css -->
    <link rel="stylesheet" href="resources/css/my.css" />
  </head>

  <body>
  	<form action="${cpath}/login.do" method="post">
		<div class="container">
			<!-- header -->
			<div id="header">
        		<a href="${cpath}/main.do"><img src="resources/img/logo.png" alt=""/></a>
       		</div>
       		<!-- header -->
       		<!-- body -->
        	<div class="mid">
        		<div class="di_mar">
        			<input type="text" class="text-wh" name="email" placeholder="아이디"/>        			
        		</div>
        		<div class="di_mar">
        			<input type="password" class="text-wh" name="pw" placeholder="비밀번호"/>
        		</div>   	
        		<div class="btn-group-vertical">
        			<span>
        				<input onclick="login()" type="submit"  value=":)로그인 " style="display:inline; width:408px;" class="btn btn-primary btn-lg"/>
        			</span>
        		</div>       	
        	</div>
        	</div>
        </form>
        
        <!-- //body -->
        <!-- footer -->
        	<div id="ft">
        		<ul class="ul-style" style="display: table; margin: auto; padding:0;">
        			<li>이용약관</li>
        			<li>개인정보처리방침</li>
        			<li>책임의 한계와 법적고지</li>
        			<li>회원정보 고객센터</li>        			
        		</ul>
        	</div> 		 
       	 <div class="float_use">ⓒGGULMUL Corp.</div>
        <!-- //footer -->         
    	
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