<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>만년달력 만들기 01</title>
<%
	//년도와 월을 받는다
	int year = LocalDate.now().getYear();
	int month = LocalDate.now().getMonthValue();
	try{
		year = Integer.parseInt(request.getParameter("yy"));
		month = Integer.parseInt(request.getParameter("mm"));
	}catch(Exception e){
		//넘어온 값이 유효하지 않다면 현재의 년월을 가지자
		year = LocalDate.now().getYear();
		month = LocalDate.now().getMonthValue();
	}
	//월이 감소하다가 0이하가 되는데, 이때는 연도가 1감소하고 월이 12이 되게 해야 한다
	if(month <= 0){
		year--;
		month = 12;
	}
	//월이 증가하다가 12를 넘어버리는데, 이때는 연도가 1증가하고 월을 1로 만들어야 한다
	if(month >= 13){
		year++;
		month=1;
	}
	
	if(year <= 0){
		year = LocalDate.now().getYear();
	}
%>
<style type="text/css">
	table{
		width: 700px; margin: auto; border:none;
	}
	.title{
		font-size: 18pt; text-align: center; border: none; padding: 10px; background-color: white;
	}
	th{
		background-color: silver; border: 1px solid gray; padding: 10px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th colspan="2" class="title">
			<%-- alt는 왜 쓰느냐? 이미지가 안나올때 표시해주고 음성인식도 가능하기 때문 --%>
				<a href="?yy=<%=year-1 %>&mm=<%=month%>"><img alt="prevYear" src="./images/prevYear.png"/></a>
				<a href="?yy=<%=year %>&mm=<%=month-1%>"><img alt="prevMonth" src="./images/prevMonth.png"/></a>
			</th>
			<th colspan="3" class="title"><%=year %>년 <%=month %>월</th>
			<th colspan="2" class="title">
				<a href="?yy=<%=year %>&mm=<%=month+1%>"><img alt="nextMonth" src="./images/nextMonth.png"/></a>			
				<a href="?yy=<%=year+1 %>&mm=<%=month%>"><img alt="nextYear" src="./images/nextYear.png"/></a>
			</th>
		</tr>
		<tr>
			<th width = "100px">일</th>
			<th width = "100px">월</th>
			<th width = "100px">화</th>
			<th width = "100px">수</th>
			<th width = "100px">목</th>
			<th width = "100px">금</th>
			<th width = "100px">토</th>
		</tr>
	</table>

</body>
</html>