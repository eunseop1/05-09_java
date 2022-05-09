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
	
	%>
	
	전송방식: <%=request.getMethod() %><br />
	<%
		String name = request.getParameter("name"); //요청 정보를 String으로 받는다
		if( name != null && name.trim().length() > 0 ){
			out.println(name + "님 환영합니다");
		}else{
			out.println("손님 환영합니다");
		}
		String hobby = request.getParameter("hobby");
		out.println("<br>취미 : " + hobby + "<br>");
		
		//name속성의 값이 같은 것이 여러개 존재하면 배열을 받아야 한다
		String hobbys[] = request.getParameterValues("hobby");
		//꼭 넘어온 값이 있는지 확인해서 처리해야 한다
		if(hobbys != null && hobbys.length > 0 ){ // 이 줄을 생략하면 취미가 없을때 예외 발생
			
		for(String h : hobbys){
			out.print(h + " ");
			}
		}
	%>
	<br/>
	성별 : <%=request.getParameter("gender") %> <br/>
</body>
</html>