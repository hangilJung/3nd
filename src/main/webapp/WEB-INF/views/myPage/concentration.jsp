<%@page import="com.face.model.ConcentrationVO"%>
<%@page import="com.face.model.MyLectureVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ROOT" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
<%
List<ConcentrationVO> list = (List<ConcentrationVO>)request.getAttribute("list");
String time = "";
String score = "";

for(int i=0; i<list.size(); i++){
	ConcentrationVO vo = list.get(i);
	
	String t = Integer.toString(vo.getTime());
	String s = Double.toString(vo.getScore());
	
	time += t + ",";
	score += s + ",";
}

%>
<h3>집중도분석화면</h3>
<%-- ${list }
${vo } --%>

	<video width="1000" height="500" controls
		id="video1">
		<source src="${ROOT}${vo.path}" type="video/mp4">
		Your browser does not support the video tag.
	</video>
<!-- 	<br> 이동할 시간 :
	<input type="text" id="t" onkeyup="enterkey();">
	<br> -->

	<div id="chart_div"></div>

	<%-- 
	 <img src="${pageContext.request.contextPath}/resources/img.png">
     <img src="<spring:url value='/resources/img.png'/>"> 
--%>

</body>

<script type="text/javascript">
	
	var video = document.getElementById('video1');

	function enterkey() {
		if (window.event.keyCode == 13) {
			time()
		}
	}

	function time() {
		video = document.getElementById("video1");
		var t = $('#t').val();
		video.currentTime = t;
	};

	/* 동영상 길이 가져오기 */
	var time2 = '';
	$(document).ready(function() {
		setTimeout(function() {
			time1 = video.duration;
			time2 = Math.floor(video.duration / 60);
		}, 500);
	});

	/* 차트 */
	var timee = "<%=time%>".split(",");
	var score = "<%=score%>".split(",");
 
	google.charts.load('current', {
		packages : [ 'corechart', 'line' ]
	});
	
	google.charts.setOnLoadCallback(drawBackgroundColor);
	
	'Time', 'Concentration'
	function drawBackgroundColor() {
		var data = new google.visualization.DataTable();
		
		<%-- ${list } : time, score
			${vo } : id, myLectureNo, episode, name, path --%>
		
		data.addColumn('number','Time');
		data.addColumn('number','Concentration');

		
		for (var i=0; i<${list.size()}; i++){
				data.addRow([Number(timee[i]),Number(score[i])*100]);
		}

		var options = {
			width: 1000,
			
			height: 500,
			
			hAxis : {
				title : 'Time'
			},
			vAxis : {
				title : 'Concentration'
			},
			backgroundColor : '#f1f8e9'
		};

		var chart = new google.visualization.LineChart(document
				.getElementById('chart_div'));
		
		chart.draw(data, options);

		google.visualization.events.addListener(chart, 'select', selectHandler);
		
		/* 선택시 이벤트 */
		function selectHandler(e) {
			var selection = chart.getSelection();
			var message = '';
			var selectedTime = '';
			
			for (var i = 0; i < selection.length; i++) {
				var item = selection[i];
				if (item.row != null && item.column != null) {
					var str = data.getFormattedValue(item.row, item.column);
					message += '{row:' + item.row + ',column:' + item.column
							+ '} = ' + str + '\n';
					selectedTime = item.row;
				} else if (item.row != null) {
					var str = data.getFormattedValue(item.row, 0);
					message += '{row:' + item.row
							+ ', column:none}; value (col 0) = ' + str + '\n';
					selectedTime = item.row;
				} else if (item.column != null) {
					var str = data.getFormattedValue(0, item.column);
					message += '{row:none, column:' + item.column
							+ '}; value (row 0) = ' + str + '\n';
					selectedTime = 0;
				}
			}
			if (message == '') {
				message = 'nothing';
			}
			
			/*
			alert('전체길이(초) : ' + time1 + '\n' 
					+ '전체길이(분) : ' + time2 + '\n' 
					+ '선택된시간 : ' + selectedTime);
			*/
			
			video.currentTime = selectedTime*10+10;
		}

	}
</script>

</html>