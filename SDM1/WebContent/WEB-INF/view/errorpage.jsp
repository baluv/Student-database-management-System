<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- <script type="text/javascript" src="js/log.js"></script> -->
<script type="text/javascript" src="jquery/log.js"></script>
<link rel="stylesheet" type="text/css" href="css/design.css">
</head>
<body background="images/l.jpg">
	<br>
	<br>
	<center>
		<img src="images/logo.png" height="50" width="50"> &nbsp; &nbsp;
		<font size="10" color="black">Student Database Management
			System</font>
	</center>
	<center>
		<div class="wrap">
			<div class="box">
				<center>
					<img src="images/login-admin.png" height="150" width="200"
						align="top">
				</center>

				<form id="form1" name="loginform" onsubmit="return validateform()"
					action="check_login.htm" method="post">

					<font color=green> Login Here</font> <input type="text"
						placeholder="Username" name="userName" required> <input
						type="password" placeholder="Password" name="password" required>
					<a href="" class="forgot_link">forgot password?</a>
					
					<input type="reset" value="RESET"> <input type="submit"
						value="LOGIN">
						<h2><font color="red">${message}</font></h2>
					<!-- <button id="log-in-button"
									class="button green action-button expand-right">
									<span class="label">Log in</span> <span class="spinner"></span>
								</button> <a id="forgot-password-link" href="#"> Forgot Password? </a>
								</div>


								</form>
								<form id="forgot-password-form"
									class="forgot-password-form login-form" action="#0"
									style="display: block;">
									<h3>Reset Your Password</h3>
									<div class="field">
										<label for="forgot-email">Email</label> <input
											id="forgot-email" type="email" placeholder="your@email.com"
											name="forgot-email">
									</div>
									<div class="field">
										<input id="forgot-email-btn" class="button button-medium"
											type="submit" value="Send Password Reset Email">
									</div>
									<div id="sent-message">
										<div id="sent-message-message"></div>
									</div>
								</form> -->

					<h4>© 2009 AECSGROUP | Amrith Educational & Cultural Society.
						Privacy Policy | Terms of use</h4>
				</form>

			</div>
		</div>
	</center>
</body>
</html>