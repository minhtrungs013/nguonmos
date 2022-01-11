<%@ page import="dao12.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="adminheader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="grid wide mt-5">
		<div class="row">
			<div class="col-lg-3 ">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Dashboard</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a class="nav-link colorsa"  href="adminallproduct.jsp"><i
									class="fas fa-dumbbell">All - Edit Products</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link colorsa active" href="adminAddProduct.jsp"><i
									class="fas fa-plus-circle">Add Products</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link colorsa" href="../logout.jsp"><i class="fas fa-truck">LogOut</i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-9 boder1">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name Product</th>
							<th scope="col">Category</th>
							<th scope="col">Price</th>
							<th scope="col">Status</th>
							<th scope="col">img</th>
							<th scope="col">Edit</th>
						</tr>
					</thead>
					<tbody>
						<%
						try {
							Connection con = ConnectionProvider.getConnection();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery("select *from product");
							while (rs.next()) {
						%>
						<tr>
							<th style="color: white;" scope="row"><%=rs.getString(1)%></th>
							<td style="color: white;"><%=rs.getString(2)%></td>
							<td style="color: white;"><%=rs.getString(3)%></td>
							<td style="color: white;"><%=rs.getString(4)%></td>
							<td style="color: white;"><%=rs.getString(5)%></td>
							<td style="color: white;"><%=rs.getString(6)%></td>
							<td ><a href="adminEditProduct.jsp?id=<%=rs.getString(1)%>">Edit</a>
							<a href="adminRemove.jsp?id=<%=rs.getString(1)%>">delete</a>
							</td>
						</tr>
						<%
						}
						} catch (Exception e) {
						System.out.println(e);
						}
						%>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>
