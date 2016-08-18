<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  
<title>Register User</title>
<style>
table{
cellpadding:10px;
cellspacing:10px;
}
body{
background-image:url("resources/images/me2.jpg");
}

</style>
</head>

<body>
<div class="row">
   
  <div class="col-sm-8"><h1><B>WELCOME GOLD GALORE</B> </h1>  </div>
</div>


	<form:form action="../register" method="post">
	<center>
		<table>
			<tr>
				<th>User ID:</th>
				<td><input type="text" name="id"></td>
			</tr>
		<tr>
		</tr>
			
			<tr>
				<th>User Name:</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
			</tr>
			
			<tr>
				<th>Password:</th>
				<td><input type="text" name="password"></td>
			</tr>
			
			
			<tr>
				<th>Mobile No:</th>
				<td><input type="text" name="mobile"></td>
			</tr>

			
			<tr>
				<th>Email:</th>
				<td><input type="email" name="email"></td>
			</tr>
			
			<tr>
				<th>Addres:</th>
				<td><input type="texta" width="20" height="10" name="address"></td>
			</tr>
			
			
			<tr>
				<td><input type="submit" value="Register">
				<td><input type="reset" value="Reset">
			</tr>
			
		</table>
		</center>

	</form:form>

</body>
</html>