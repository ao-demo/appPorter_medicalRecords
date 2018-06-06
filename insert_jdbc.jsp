

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

int  s1=Integer.parseInt(request.getParameter("empno"));
String  s2=request.getParameter("ename");
int s3=Integer.parseInt(request.getParameter("salary"));


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://52.229.54.24/demo", "apporbit", "apporbit123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into emp(empno,ename,sal) values ("+s1+",'"+s2+"',"+s3+")");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 

