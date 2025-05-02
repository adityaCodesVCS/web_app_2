<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println("Hello!"); //Hello!
	
	    int x=10;
		System.out.println(x); //10
		
		for(int i=0; i<5;i++) {
			System.out.println(i); //0↵1↵2↵3↵4
		}
		
		request.setAttribute("x", 100);
		System.out.println(request.getAttribute("x")); //100
		
		session.setAttribute("x", 200);
		System.out.println(session.getAttribute("x")); //200
		
		session.setAttribute("x", 300);
		out.println(session.getAttribute("x")); //print 300 on webPage due to 'out', not in console.
	%>
</body>
</html> --%>


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	    public int x=100;
	    
	    public static int y=200;
	    
	    public void test1() {
	    	System.out.println(300);
	    }
	    
	    public int test2() {
	    	return 400;
	    }
	%>
	<%
		out.println(x); //print 100 on webPage
	    out.println(y); //print 200 on webPage
	    test1(); //300
	    out.println(test2()); //print 400 on webPage
	    System.out.println(test2()); //400
	%>
</body>
</html> --%>


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	    public int x=100;
	    
	    public static int y=200;
	    
	    public void test1() {
	    	System.out.println(300);
	    }
	    
	    public int test2() {
	    	return 400;
	    }
	%>
	
	<%= x+1 %> 
	<%= y %>
	<%= test2() %>
</body>
</html> --%>


<%-- <%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= new Date() %> 
	<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/augdb","root","admin");
			out.println(con);
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html> --%>


<%-- <%@page import="java.sql.*,java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="test.txt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= new Date() %> 
	<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/augdb","root","admin");
			out.println(con);
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html> --%>


<%@page import="java.sql.*,java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= new Date() %> 
	<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/augdb","root","admin");
			out.println(con);
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>