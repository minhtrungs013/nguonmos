<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="asset/css/login.css">
</head>
<body>
	<div class="login-box">
		<h2>Login</h2>
		<form action="loginAction.jsp" method="post">
			<div class="user-box">
				<input type="text" name="email" required> <label>Email</label>
			</div>
			<div class="user-box">
				<input type="password" name="password" required> <label>Password</label>
			</div>

			 <a href="#" style="align-items: center; display: block; text-align: center;"> <span></span>
				<span></span> <span></span> <span></span>
				<input type="submit" value="Login" style="background: rgba(255,255,255,0); border-style: none; font-size: 20px; color: white; text-align: center;">
			</a>
			
			<%
			String msg = request.getParameter("msg");
			if ("notexist".equals(msg)) {
			%>
			<h1>Incorrect Username or Password</h1>
			<%
			}
			%>
			<%
			if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
			}
			%>
			<br>
			<a href="forgotpassword.jsp" style="font-size: 10px;">quen mat khau</a>
			<a href="signup.jsp" style="font-size: 10px;"> dang ki</a>
		</form>
	</div>
</body>
</html>