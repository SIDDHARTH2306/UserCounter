<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Page</title>
</head>
<body>
<%
session = request.getSession(true);
String T = application.getAttribute("total").toString();
while(T.length()<=7)
{
	T="0"+T;
}
//PrintWriter pw=response.getWriter();
//pw.println(T);

for(int i=0;i<T.length();i++)
{
	char c = T.charAt(i);
	%>
	<img alt="" src="numbers/<%=c%>.png">
	<%
}
%>
</body>
</html>