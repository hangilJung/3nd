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
<script type="text/javascript">
function btnClick(){
	
	if(confirm("학습하기(수강신청) 하시겠습니까?") == true){	
		window.location.href ="myLectureInsert.do?lecNo=${viewAll.get(0).lecNo}&allEpi=${viewAll.get(0).allEpi}";
	}

};
</script>
</head>
<body>
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
				<button onclick="btnClick()">학습하기(수강신청)</button>
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
		</tr>
		<c:forEach items="${viewAll }" var="list" varStatus="status">
			<tr>
				<td>${list.episode }</td>
				<td>${list.epiIntro }</td>
			</tr>
		</c:forEach>
	</table>	
</body>
</html>