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
<link rel="stylesheet" href="asset/css/home.css">
<title>Insert title here</title>
</head>
<body>
	<div class="grid  mt-5">
		<div class="row  ">
			<div class="col-lg-3 home-product  "style=" background: white;">
				<table class="table">
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
			<div class="col-lg-9 ">
			<%
					String id = request.getParameter("id");
					try {
						Connection con = ConnectionProvider.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select *from product where id='" + id + "' ");
						while (rs.next()) {
					%>
				<div class="row no-gutters home-product" style=" background: white;">
				<input type="hidden" name="id" value="<%out.println(id);%>">
					<div class="col-lg-5 mb-2">
						<img alt="" src="<%=rs.getString(6)%>" style="width: 300px; height: 300px">
					</div>
					<div class="col-lg-7 mb-2">
					<div class="">
								<h3 class="details-heading"><%=rs.getString(2)%></h3>
								<h5 class="details-decs"><%=rs.getString(3)%></h5>
								<h4 class="details-price">
									price:<%=rs.getString(4)%>
								</h4>
								<a href="addToCartAction.jsp?id=<%=rs.getString(1)%>"
									class="btn details-btn ">By Now</a>
							</div>
					</div>
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
</body>
</html>