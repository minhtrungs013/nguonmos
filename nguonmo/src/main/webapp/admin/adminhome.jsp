
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
							<td><a class="nav-link colorsa" href="adminCancelOrder.jsp"><i
									class="fas fa-window-close">Cancel Orders</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link colorsa" href="#"><i class="fas fa-truck">delivered
										orders</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link colorsa" href="../logout.jsp"><i class="fas fa-truck">LogOut</i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-9 boder1">
				<h1 style="color: white; text-align: center;">Chao mung Admin</h1>

			</div>
		</div>
	</div>
</body>
</html>
