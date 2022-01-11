<%@ page import="dao12.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="adminheader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="grid wide mt-4">
		<%
		String msg = request.getParameter("msg");
		if ("done".equals(msg)) {
		%>
		<h4 class=" heading__center">Product Added Successfully!</h4>
		<%
		}
		%>
		<%
		if ("wrong".equals(msg)) {
		%>
		<h4 class=" heading__center">Some thing went wrong! Try Again!</h4>
		<%
		}
		%>

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
						<tr>
							<td><a class="nav-link colorsa" href="../logout.jsp"><i class="fas fa-truck">LogOut</i></a></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-lg-9 boder1">
				<%
				int id = 1;
				try {
					Connection con = ConnectionProvider.getConnection();
					Statement st = con.createStatement();
					ResultSet rs1 = st.executeQuery("select max(id) from product");
					while (rs1.next()) {
						id = rs1.getInt(1);
						id = id + 1;

					}
				} catch (Exception e) {

				}
				%>
				<form action="adminAddProductAction.jsp" method="post">
					<h3 class="heading__center">
						Product ID:<%
					out.println(id);
					%>
					</h3>
					<input type="hidden" name="id" value="<%out.println(id);%>">
					<div class="form-group">
						<label for="exampleInputEmail1" style="color: white;">Enter Name</label> <input
							type="text" name="name" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter Name" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" style="color: white;">Enter Category</label> <input
							type="text" name="category" class="form-control"
							id="exampleInputPassword1" placeholder="Enter Category" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" style="color: white;">Enter price</label> <input
							type="text" name="price" class="form-control"
							id="exampleInputPassword1" placeholder="Enter Price" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" style="color: white;">Enter Active</label> <select
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
						<label for="exampleInputPassword1" style="color: white;">Enter Link Img</label> <input
							type="text" name="img" class="form-control"
							id="exampleInputPassword1" placeholder="Enter link img" required>
					</div>
					<br>
					<button class="btn btn-primary ">Submit</button>
				</form>
			</div>
		</div>

	</div>
</body>
</html>
