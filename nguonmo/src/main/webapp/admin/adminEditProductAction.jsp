<%@ page import="dao12.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	String active = request.getParameter("active");
	String img = request.getParameter("img");
	
		try{
			Connection con = ConnectionProvider.getConnection();
			Statement st = con.createStatement();
			st.executeUpdate("update product set name='"+name+"' ,category='"+category+"' ,price='"+price+"',active='"+active+"',img='"+img+"' where id='"+id+"'");  
			if(active.equals("No")){
				st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL ");
			}
			response.sendRedirect("adminallproduct.jsp?msg=done");
			
		}catch(Exception e){
			System.out.println(e);
			response.sendRedirect("adminallproduct.jsp?msg=wrong");
		}

%>