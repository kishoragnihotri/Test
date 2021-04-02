<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sendmail.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String to=request.getParameter("to");

String sub=request.getParameter("sub");
String msg=request.getParameter("msg");
System.out.println(to);
System.out.println(sub);
System.out.println(msg);

SendMailTLS tls=new SendMailTLS();
tls.send(to,sub,msg);
%>
</body>
</html>