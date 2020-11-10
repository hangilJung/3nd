<%@page import="com.face.model.SelfStudyVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<SelfStudyVO> list = (ArrayList<SelfStudyVO>)request.getAttribute("list");
	String date = "";
	String studyTime = "";
	
	for(int i=0; i<list.size(); i++){
		SelfStudyVO vo = list.get(i);
		
		String d = vo.getStudydate();
		int st = vo.getTime();
		
		date += d + ",";
		studyTime += st + ",";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width">
<title>달력</title>
<style>
.content-wrap {
	width: 100%;
	margin: 0 auto;
	border: 4px solid rgba(161, 161, 161, 0.5);
	border-radius: 20px;
	overflow: hidden;
	background: #ddaf35;
}

.content-left {
	background: #0b0809;
	color: #ddaf35;
	float: left;
	width: 100%;
	padding: 30px;
}

.main-wrap {
	text-align: center;
	padding: 20px 0 0 0;
}

.main-day {
	font-size: 30px;
	font-weight: bold;
}

.main-date {
	font-size: 120px;
	font-weight: bold;
	margin: 20px 0;
}

.selfStudy-wrap {
	padding: 0 0 0 40px;
}

.selfStudy-title {
	font-size: 20px;
	font-weight: 100;
	margin: 0 0 10px 0;
}

.input-box {
	width: 50%;
	margin-right: 20px;
	height: auto;
	background: #0b0809;
	color: #ddaf35;
	line-height: normal;
	padding: .8em .5em 0 0;
	font-family: inherit;
	border: 0;
	border-bottom: 1px dashed #ddaf35;;
	border-radius: 0;
	outline-style: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.input-data {
	cursor: pointer;
	font-size: 10px;
	padding: 10px;
	margin: 10px 0 10px 0;
	background: #ddaf35;
	border: none;
	color: #0b0809;
	border-radius: 10px;
}

.input-data:hover {
	background: #ffffff;
	color: #0b0809;
}

.content-right {
	float: left;
	width: 90%;
	padding: 10px;
}

.sun {
	color: #ef3333;
}

.sat {
	color: #2107e0;
}

.content-right table tr td {
	width: 40px;
	height: 40px;
	text-align: center;
	font-size: 20px;
	font-weight: bold;
}

.active {
	background: #0b0809;
	border-radius: 50%;
	color: #ffffff;
}

.is{
	background: #ffff00;
	border-radius: 50%;
	color: #000000;
}

@media ( min-width : 850px) {	/* 반응형  */

	.content-wrap {
		width: 800px;
		height: 600px;
		margin: 0 auto;
		border: 4px solid rgba(161, 161, 161, 0.5);
		border-radius: 20px;
		overflow: hidden;
		background: #ddaf35;
	}
	.content-left {
		background: #0b0809;
		color: #ddaf35;
		float: left;
		width: 360px;
		height: 600px;
		padding: 90px 20px 20px 0;
	}
	.main-wrap {
		text-align: center;
		margin: 20px 0 0 0;
	}
	.main-day {
		font-size: 30px;
		font-weight: bold;
	}
	.main-date {
		font-size: 120px;
		font-weight: bold;
		margin: 20px 0;
	}
	.selfStudy-wrap {
		padding: 0 0 0 40px;
	}
	.selfStudy-title {
		font-size: 20px;
		font-weight: 100;
		margin: 0 0 10px 0;
	}
	.input-box {
		width: 70%;
		height: auto;
		background: #0b0809;
		color: #ddaf35;
		line-height: normal;
		padding: .8em .5em 0 0;
		font-family: inherit;
		border: 0;
		border-bottom: 1px dashed #ddaf35;;
		border-radius: 0;
		outline-style: none;
		-webkit-appearance: none;
		-moz-appearance: none;
		appearance: none;
	}
	.input-data {
		cursor: pointer;
		font-size: 10px;
		padding: 10px;
		margin: 20px 0 30px 0;
		background: #ddaf35;
		border: none;
		color: #0b0809;
		border-radius: 10px;
	}
	.input-data:hover {
		background: #ffffff;
		color: #0b0809;
	}
	.content-right {
		float: left;
		width: 360px;
		height: 600px;
		padding: 100px 20px 20px 20px;
	}
	.sun {
		color: #ef3333;
	}
	.sat {
		color: #2107e0;
	}
	.content-right table tr td {
		width: 50px;
		height: 50px;
		text-align: center;
		font-size: 20px;
		font-weight: bold;
	}
	.active {
		background: #0b0809;
		border-radius: 50%;
		color: #ffffff;
	}
}
</style>

</head>

<body>
		<div class="content-wrap">
			<div class="content-left">
				<div class="main-wrap">
					<div id="main-day" class="main-day"></div>	<!-- 요일 -->
					<div id="main-date" class="main-date"></div>	<!-- 일 -->
				</div>
				<div class="selfStudy-wrap">
					<div class="selfStudy-title">자습시간</div>
					<div class="input-wrap">
						<input type="text" id="input-box" class="input-box">	<!-- 자습시간 -->
					</div>
				</div>
			</div>
			<div class="content-right">
				<table id="calendar" align="center">
					<thead>
						<tr class="btn-wrap clearfix">
							<td><label id="prev"> &#60; </label></td>	<!-- 이전 -->
							<td align="center" id="current-year-month" colspan="5"></td>	<!-- 년 월 -->
							<td><label id="next"> &#62; </label></td>	<!-- 다음 -->
						</tr>
						<tr>
							<td class="sun" align="center">Sun</td>
							<td align="center">Mon</td>
							<td align="center">Tue</td>
							<td align="center">Wed</td>
							<td align="center">Thu</td>
							<td align="center">Fri</td>
							<td class="sat" align="center">Sat</td>
						</tr>
					</thead>
					<tbody id="calendar-body" class="calendar-body"></tbody>	<!-- 달력 표시하는 곳 -->
				</table>
			</div>
		</div>
</body>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>

<script>

	var currentTitle = document.getElementById('current-year-month');	//년 월
	var calendarBody = document.getElementById('calendar-body');	//달력 표시하는 곳	
	var today = new Date();	//표시할 날짜
	var todayDate = today;	//진짜 오늘 날짜 저장
	var first = new Date(today.getFullYear(), today.getMonth(), 1);	//표시할 날짜의 1일
	var pageFirst = first;	
	var pageYear;	// 윤년인지 아닌지에 따른 마지막 일
	var dayList = [ 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
			'Friday', 'Saturday' ];	//영어 요일 리스트
	var monthList = [ '1', '2', '3', '4', '5', '6',
			'7', '8', '9', '10', '11', '12' ];	//달
	var leapYear = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];	//윤년일때 마지막 일
	var notLeapYear = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];	//윤년이 아닐때 마지막 일 
	
	if (first.getFullYear() % 4 === 0) {	//페이지의 년도가 윤년인지 체크
		pageYear = leapYear;
	} else {
		pageYear = notLeapYear;
	}
	
	var studyTime = "<%=studyTime%>".split(",");	//서버에서 받아온 자습 시간
	var mainTodayDay = document.querySelector('#main-day');	//요일
	var mainTodayDate = document.querySelector('#main-date');	//일
	var date = "<%=date%>".split(",");	/* 20201015 20201103 */	//서버에서 받아온 자습 날짜
	var y = new Array();	//자습 날짜의 년
	var m = new Array();	//자습 날짜의 월
	var d = new Array();	//자습 날짜의 일
	var studyTime = "<%=studyTime%>".split(",");	//서버에서 받아온 자습 시간
	
	for(var i = 0; i<date.length; i++){	//자습 날짜의 년 월 일을 분리하여 저장
		y[i] = date[i].substr(0,4);	/* 2020 */
		
		if(date[i].substr(4,1) == 0){	/* 11 */
			m[i] = date[i].substr(5,1); 
		}else{
			m[i] = date[i].substr(4,2);
		}
		
		if(date[i].substr(6,1) == 0){	/* 03 */
			d[i] = date[i].substr(7,1); 
		}else{
			d[i] = date[i].substr(6,2);
		}
	}
	
	//달력 그리기
	function showCalendar() {	
		currentTitle.innerHTML = first.getFullYear() + '년' + '&nbsp;&nbsp;&nbsp;&nbsp;' + monthList[first.getMonth()] + '월';

		let monthCnt = 100;	//100, 101, 102, 103, 104, 105
		let cnt = 1;	//1,2,3,4,5,6
		for (var i = 0; i < 6; i++) {
			var $tr = document.createElement('tr');
			$tr.setAttribute('id', monthCnt);
			for (var j = 0; j < 7; j++) {
				if ((i === 0 && j < first.getDay()) || cnt > pageYear[first.getMonth()]) {	//첫번째주이고 첫날보다 이전 값일때 or 월의 마지막 일보다 큰 값일때
					var $td = document.createElement('td');	//빈 td 생성
					$tr.appendChild($td);
				} else {
					var $td = document.createElement('td');
					$td.textContent = cnt;	//일 표시
					$td.setAttribute('id', cnt);	//아이디 부여
					$tr.appendChild($td);
					cnt++;
				}
			}
			monthCnt++;
			calendarBody.appendChild($tr);
		}	
		
		if(todayDate.getFullYear()==first.getFullYear()){	//날짜가 오늘일 때
			if(todayDate.getMonth()+1==first.getMonth()+1){
					var todayD = document.getElementById(today.getDate());
					todayD.classList.add('active');	//클래스명 active 추가							
			}
		}
	}
	
	//왼쪽에 요일, 일 표시
	function showMain() {
		console.log(mainTodayDay);
		mainTodayDay.innerHTML = dayList[today.getDay()];
		mainTodayDate.innerHTML = today.getDate();
	}
	
	//자습날짜 데이터가 있으면 클래스명 is 부여
	function isIsNot(){
		for(var i = 0; i<date.length; i++){
			if(y[i]==first.getFullYear()){
				if(m[i]==first.getMonth()+1){
					document.getElementById(d[i]).setAttribute('class','is');
				}
			}
		}
	}
	
	//현재 페이지의 년, 월, 클릭한 td의 아이디값이 자습날짜의 년, 월, 일과 같을 시 자습시간 표시
	function click(e){
		var idNum = $(this).attr('id');	//클릭한 td의 id값(일)
		var clickedToday = new Date(today.getFullYear(), today.getMonth(), idNum);	//표시할 날짜 수정
		mainTodayDay.innerHTML = dayList[clickedToday.getDay()];	//수정한 날짜로 요일 표시
		mainTodayDate.innerHTML = idNum;	//클릭한 id값으로 일 표시
		document.getElementById('input-box').value = "";	//자습시간 지움	
		
		for(var i = 0; i<date.length; i++){
			if(y[i]==first.getFullYear()){
				if(m[i]==first.getMonth()+1){
					if(d[i] == idNum){
						document.getElementById('input-box').value = studyTime[i];							
					}
				}
			}
		}	
		
		if(todayDate.getFullYear()==first.getFullYear()){	//클릭한 날짜가 오늘일 때
			if(todayDate.getMonth()+1==first.getMonth()+1){
				if(todayDate.getDate()==idNum){					
					document.getElementById('input-box').value = "";	//자습시간 지움						
				}
			}
		}	
	}
	
	var prevBtn = document.getElementById('prev');	//이전달 버튼
	var nextBtn = document.getElementById('next');	//다음달 버튼
	prevBtn.addEventListener('click', prev);	//이전달 버튼 click이벤트 add
	nextBtn.addEventListener('click', next);	//다음달 버튼 click이벤트 add
	
	//모든 td에 click 이벤트 add
	function clickAdd(){
		tds = document.querySelectorAll('tbody tr td');	//모든 td
		[].forEach.call(tds, function(col){	//유사배열일때 배열 메서드를 사용하는 방법
			col.addEventListener('click',click,false);
		});	
	}
	
	showCalendar();	//달력 그리기
	showMain();	//왼쪽에 요일, 일 표시
	
	isIsNot();	//자습날짜 데이터가 있으면 클래스명 is 부여
	clickAdd();	//모든 td에 click 이벤트 add
	
	//달력 지우기
	function removeCalendar() {
		let catchTr = 100;
		for (var i = 100; i < 106; i++) {
			var $tr = document.getElementById(catchTr);
			$tr.remove();
			catchTr++;
		}
	}

	//이전달
	function prev() {
		console.log(mainTodayDay);
		
		document.getElementById('input-box').value = "";	//자습시간 지움
		if (pageFirst.getMonth() === 1) {	//페이지의 날짜가 1월일때 이전 년으로 이동
			pageFirst = new Date(first.getFullYear() - 1, 12, 1);
			first = pageFirst;
			if (first.getFullYear() % 4 === 0) {
				pageYear = leapYear;
			} else {
				pageYear = notLeapYear;
			}
		} else {
			pageFirst = new Date(first.getFullYear(), first.getMonth() - 1, 1);
			first = pageFirst;
		}
		today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
		
		removeCalendar();	//달력 지우기
		showCalendar();	//달력 그리기
		
		mainTodayDay.innerHTML = "";
		mainTodayDate.innerHTML = "";
		
		isIsNot();	//자습날짜 데이터가 있으면 클래스명 is 부여
		clickAdd();	//모든 td에 click 이벤트 add	
	}

	//다음달
	function next() {
		console.log(mainTodayDay);
		
		document.getElementById('input-box').value = "";	//자습시간 지움
		if (pageFirst.getMonth() === 12) {	//페이지의 날짜가 12월일때 다음 년으로 이동
			pageFirst = new Date(first.getFullYear() + 1, 1, 1);
			first = pageFirst;
			if (first.getFullYear() % 4 === 0) {
				pageYear = leapYear;
			} else {
				pageYear = notLeapYear;
			}
		} else {
			pageFirst = new Date(first.getFullYear(), first.getMonth() + 1, 1);
			first = pageFirst;
		}
		today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
		
		removeCalendar();	//달력 지우기
		showCalendar();	//달력 그리기
		
		mainTodayDay.innerHTML = "";
		mainTodayDate.innerHTML = "";
		
		isIsNot();	//자습날짜 데이터가 있으면 클래스명 is 부여
		clickAdd();	//모든 td에 click 이벤트 add
	}
	
</script>
</html>