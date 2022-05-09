<%@page import="kr.human.servlet.CalcUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sum</title>
<%! //선언문 -> 이 페이지에서만 사용가능해서 효율성이 없다
	public int sum(int n){
	int s = n;
	while( n >= 1){
		s+= --n;
	}
	return s;
}
%>
</head>
<body>
	<%
	int n = 1;
		try{
			n = Integer.parseInt(request.getParameter("n"));
		}catch(Exception e){
			;
		}
		int sum = 0;
		for( int i = 0; i<=n; i++) sum += i;
		//이렇게 구하면 html코드안에 들어가서 복잡해보인다-> 스파게티 코드
		//최종적으로 이러한 로직들은 자바 클래스로 따로 빼야 한다
		
		//EL을 배운다면 출력을 간단하게 할 수 있다
		request.setAttribute("n", n);
		request.setAttribute("sum", sum);
		
		
	%>
	
	1에서 <%=n %>까지의 합 : <%=sum %><br />
	1에서 <%=n %>까지의 합 : <%=sum(n) %><br />
	1에서 <%=n %>까지의 합 : <%=CalcUtil.sum(n) %><br />
	1에서 ${n }까지의 합 : ${sum }<br />
</body>
</html>