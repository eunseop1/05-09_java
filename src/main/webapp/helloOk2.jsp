<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- post전송에서 톰캣9는 한글이 깨진다. 그래서 받기전에 받을때의 인코딩을 지정해 줘야 한다 --%>
	<%
		request.setCharacterEncoding("UTF-8");

	if(! request.getMethod().equals("POST")){//Post전송이 아니면 다른곳으로 보낸다
			//이를 통해서 AI도배를 막는다
			response.sendRedirect("hello.jsp");
			return;		
		}
		//name 속성만 모두 얻기
		Enumeration<String> names = request.getParameterNames();
		while(names.hasMoreElements()){
			String name = names.nextElement();//이름 한개 얻기
			String[] values = request.getParameterValues(name);//값얻기
			out.println(name + " : ");//이름속성 출력
			
			//값 출력
			if(values != null && values.length > 0){
				for(String value : values){
					out.println(value + " ");
				}
				out.println("<br>");
			}
		}
	%>
	
	
</body>
</html>