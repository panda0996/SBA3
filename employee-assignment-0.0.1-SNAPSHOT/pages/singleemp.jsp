<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="mytag"%>

<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="myform"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<base href="/employees"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
body {
	font-family: "Century Gothic";
	background-color: #222222;
	color: white;
	margin: 20px;
}

pre {
	font-family: "Century Gothic";
}

a {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

li {
	text-align: center;
	border: 1px solid black;
	margin: 0;
	padding: 0;
}

div {
	color: black;
	background-color: white;
	margin: 0;
	padding: 0;
}

ul {
	list-style: none;
	marging: 0;
	padding: 0;
	border: 1px solid black;
}
</style>
</head>
<body>
	<!-- taglib for loop tag -->
	<h4>EMPLOYEE# ${employee.id} </h4>
	<br>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Employee Details</h3>
		</div>
		<div class="panel-body">
		<input type="hidden" name="${_csrf.parameterName }"
					value=${_csrf.token } />
			<table style="border-radius: 10px !important;"
				class="table table-striped table-responsive">
				<tr>
					<td>Employee#</td>
					<td>${ employee.id }</td>
				</tr>
				<tr>
					<td>Name</td>
					<td>${employee.name }</td>
				</tr>
				<tr>
					<td>Basic</td>
					<td>${ employee.basic }</td>
				</tr>
				<tr>
					<td>HRA</td>
					<td>${ employee.hra }</td>
				</tr>
				<tr>
					<td>Department</td>
					<td>${ employee.dept }</td>
				</tr>

			</table>
		</div>
	</div>
	<pre>
	<a href="home">Home</a><span> | </span><a href="logout">Log Out</a>
	<a href="delete/${employee.id }">DELETE</a>
	<a href="update/${employee.id }">UPDATE</a>
	</pre>
	<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>