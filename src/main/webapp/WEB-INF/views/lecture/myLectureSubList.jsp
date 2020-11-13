<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
				<td><button type="button" id="videoClick">강의보기</button></td>
					
				<td>
					<c:if test="${list.curTime > 0}">
						<button onclick="location.href = 'concentration.do?myLecNo=${list.myLecNo}'">집중도분석</button>
					</c:if>	
				</td>
				<!-- onclick="location.href='video.do?myLecNo=${list.myLecNo}'" -->
			</tr>
			<script>
				var myLecNo = ${list.myLecNo};
			</script>
		</c:forEach>
	</table>	
</body>
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
		
		// window.open('${cpath}/video.do?myLecNo=${list.myLecNo}', 'Lecture','width=1500, height=900'); 
       //  return false;
	

 </script>
</html>