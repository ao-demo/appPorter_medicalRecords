

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String  s1=request.getParameter("firstname");
String  s2=request.getParameter("lastname");
String  s3=request.getParameter("Specialization");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://52.229.54.24/demo", "apporbit", "apporbit123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into doctor(firstname,lastname,Specialization) values ('"+s1+"','"+s2+"','"+s3+"')");
out.println("Dr. Details successfully Added ");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 

