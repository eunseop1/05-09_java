<!-- 맨위의 %@는 디렉티브라고 한다. 보통 환경 설정할때 쓴다. 
유틸 이러한 것을 쓴다 ~ 언어를 자바로 하겠다는 의미와 
문서의 종류가 어떤 것이고 인코딩은 UTF-8이라는 것을 보여준다 -->
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<script type="text/javascript">
	$(function(){
		alert("Hello World");
	});
	
	window.onload = function(){
		alert('하하하하하하하');
	}
	</script>
	<!-- %!로 시작하면 선언문
	메서드 선언시 사용
	그러나 보통은 자바 코드에 따로 적어줘서 볼일은 없다 -->
	<%!
		public String now(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일(E요일)");
		return sdf.format(new Date());
	}
	%>
	
</head>
<body>
<!--  실행 시간 : <%=new Date()%> -->
<%-- 나는 JSP주석입니다 소스보기 할때 보이지 않아요. new Date()같은 명령은 실행되지 않아요 
실행될때 서버에 올라가서 jsp가 java파일로 바뀌어 서블릿으로 변환된 다음에 실행된다--%>
<h1>현재 시간 : <%=new Date().toLocaleString() %></h1>
<h1>현재 시간 : <%=LocalDateTime.now() %></h1>
<hr>
<h2><%="안녕 JSP" %></h2>
<hr>
<!-- 여기는 소스보기로 하면 내용이 현재 실행되는 시점의 시간으로 바뀐다
이를 동적이라고 한다. 기존의 Html과 Css에서 하던 정적인 것과는 
달리 실행할때마다 바뀐다

<head>안의 UTF-8은 본 소스를 UTF-8로 해석하라는 의미이다.
이 부분이 없으면 한글이 깨져서 나올수 있다

%=로 시작하면 표현식이라 하고 무언가를 화면에 출력할때 쓰는 것으로 
앞으로는 점차 안쓰일 것이다 -->
<%
	for(int i=2; i <= 9; i++){
		for(int j=1; j <=9; j++){
			out.println(i + " * " + j + " = " + (i * j) + "<br/>");
		}
	}
%>
<!-- %로 시작하면 스크립트릿이라고 하고 자바 코드를 적는다 -->

<!-- ol>li{아이템 $$$}*10 -->
	<ol>
		<li>아이템 001</li>
		<li>아이템 002</li>
		<li>아이템 003</li>
		<li>아이템 004</li>
		<li>아이템 005</li>
		<li>아이템 006</li>
		<li>아이템 007</li>
		<li>아이템 008</li>
		<li>아이템 009</li>
		<li>아이템 010</li>
	</ol>
</body>
</html>