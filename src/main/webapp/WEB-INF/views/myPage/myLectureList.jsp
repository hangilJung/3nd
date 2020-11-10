<%@page import="java.util.ArrayList"%>
<%@page import="com.face.model.MyLectureVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ROOT" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
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
</head>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="myLectureList.do.do?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
<body>

<%
List<MyLectureVO> list = (List<MyLectureVO>)request.getAttribute("viewAll");
String[] thumbnail = new String[list.size()];
for(int i=0; i<list.size(); i++){
	MyLectureVO vo = list.get(i);
	String path = vo.getPath();	
	String[] arr1 = path.split("/");
	String[] arr2 = arr1[3].split("[.]"); //정규표현식에서 . = any character
	thumbnail[i] = arr2[0]; 


pageContext.setAttribute("thumbnail", thumbnail);
}
%>

<div id="outter">
	<div style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
	</div> <!-- 옵션선택 끝 -->
	<table style="text-align: center; width: 100%" border="1">
		<tr>
			<td>myLectureNo</td>
			<td>path</td>				
			<td>name</td>
		</tr>
		<c:forEach items="${viewAll }" var="list" varStatus="status">
			<tr>
				<td>${list.myLectureNo }</td>
				<td><a href="myLectureSubList.do?myLectureNo=${list.myLectureNo}">
						<img src="${ROOT}/resources/thumbnail/${thumbnail[status.index]}.png">
					</a></td>
				<td><a href="myLectureSubList.do?myLectureNo=${list.myLectureNo}">${list.name}</a></td>
			</tr>
		</c:forEach>
	</table>	
	<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="myLectureList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="myLectureList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="myLectureList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
</div>
</body>
</html>