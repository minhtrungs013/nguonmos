<%@ page import="dao12.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="slider.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="grid  mt-5">
		<div class="row no-gutters " style="background: #B0C4DE;">
			<div class="col-lg-2 "
				style="overflow: hidden; padding: 10px;">
				<table class="table home-product">
					<thead class="thead-dark">
						<tr>
							<th scope="col"><h2>Menu</h2></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a class="nav-link" href="adminallproduct.jsp"><h3>Home</h3></a></td>
						</tr>
						<tr>
							<td><a class="nav-link active" href="adminAddProduct.jsp"><h3>cart</h3></a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-10  "
				style="overflow: hidden; padding: 20px;">
				<h3> Kết quả tìm kiếm </h3>
				<div class="row " style="margin: 0 10px; ">
					<%
						int z = 0;
						try {
							String search = request.getParameter("search");
							Connection con = ConnectionProvider.getConnection();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery("select *from product where name like '%" + search + "%'");
							while (rs.next()) {
								z = 1;
						%>
					<div class="col l-2-4 mb-2 ">
						<div class="  card" style="width: 280px; margin-right: 10px;">
						<a href="details.jsp?id=<%=rs.getString(1)%>">
							<img class="card-img-top" src="<%=rs.getString(6)%>" alt="Card image cap" style=" height: 280px; width: 278px;">
							<div class="card-body">
								<h5 class="card-title"><%=rs.getString(2)%></h5>
								<p class="card-text"><%=rs.getString(3)%></p>
								<p class="card-text"><%=rs.getString(4)%></p>
								<a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn btn-primary">By Now</a>
							</div>
						</div>
						</a>
					</div>
					<%
						}
						} catch (Exception e) {
						System.out.println(e);
						}
						%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>