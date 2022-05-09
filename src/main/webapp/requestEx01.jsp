<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장 객체 연습</title>
</head>
<body>
	클라이언트 주소 : <%=request.getRemoteAddr() %> <br />
	서버의 주소 : <%=application.getRealPath(".") %> <br />
	경로 얻기<br />
	<!-- .은 현재 디렉토리의 절대 경로를 의미한다  -->
	<%=request.getContextPath() %> <br />
	<!--경로만 나온다-->
	<%=request.getRequestURI() %> <br />
	<%=request.getRequestURL() %> <br />
	
	서버 정보<br />
	<%=request.getServerName() %><br />
	<%=request.getServerPort() %><br />
	<%=request.getServletPath() %><br />
	
	<%=request.getServletContext().getRealPath(".") %><br />
	<!--Servlet의 모든 내용을 알고 있다 / application과 같다-->
	
	클라이언트 정보<br />
	<%=request.getLocalAddr() %>
	<%=request.getLocalName() %>
	<%=request.getLocalPort() %>
	<%=request.getLocale() %>
	<!-- html 하나로 해당 나라를 감지하여 해당 국가 언어로 할수도 있다 -->
</body>
</html>