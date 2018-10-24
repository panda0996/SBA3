<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
<base href="/employees" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
	<br>
	<br>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Error Page</h3>
		</div>
		<div class="panel-body">
	<h3>${errorMsg}</h3>
	<a href="home">GO BACK</a>
	<br/>
	<p>Or use other credentials : </p>
	<a href="logout">LOGOUT</a>
	
	</div>
	</div>
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>