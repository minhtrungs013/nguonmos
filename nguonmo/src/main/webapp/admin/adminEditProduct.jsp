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
	<div class="grid wide mt-4">
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
							<td><a class="nav-link colorsa" href="adminallproduct.jsp"><i
									class="fas fa-dumbbell">All - Edit Products</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link colorsa active" href="adminAddProduct.jsp"><i
									class="fas fa-plus-circle">Add Products</i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-9 boder1">
			<h1 class="" style="text-align: center; color: white;">Edit Product</h1>
				<%
				String id = request.getParameter("id");
				try {
					Connection con = ConnectionProvider.getConnection();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select *from product where id='" + id + "' ");
					while (rs.next()) {
				%>
				<form action="adminEditProductAction.jsp" method="post">
					<input type="hidden" name="id" value="<%out.println(id);%>">
					<div class="form-group">
						<label for="exampleInputEmail1" style="color: white;">Enter Name</label> <input
							type="text" name="name" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							value="<%=rs.getString(2)%>" required>
					</div>
					<div class="form-group">
						<label for="exampleInputcategory"style="color: white;">Enter Category</label> <input
							type="text" name="category" class="form-control"
							id="exampleInputcategory" value="<%=rs.getString(3)%>" required>
					</div>
					<div class="form-group">
						<label for="exampleInputprice"style="color: white;">Enter price</label> <input
							type="text" name="price" class="form-control"
							id="exampleInputprice" value="<%=rs.getString(4)%>" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1"style="color: white;">Enter Active</label> <select
							class="form-control" name="active">
							<option value="yes">yes</option>
							<option value="no">no</option>
							<option value="hot1">hot1</option>
							<option value="hot2">hot2</option>
							<option value="hot3">hot3</option>
							<option value="hot4">hot4</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleInputprice" style="color: white;">Enter link img</label> <input
							type="text" name="img" class="form-control"
							id="exampleInputprice" value="<%=rs.getString(6)%>" required>
					</div>
					<br>

					<div>
						<a href="adminallproduct.jsp"><button type="button"
								class="btn btn-danger">Back</button></a>
						<button class="btn btn-primary ">Submit</button>
					</div>
					<%
					}
					} catch (Exception e) {
					System.out.println(e);
					}
					%>
					<br>

				</form>
			</div>
		</div>
	</div>
</body>
</html>
