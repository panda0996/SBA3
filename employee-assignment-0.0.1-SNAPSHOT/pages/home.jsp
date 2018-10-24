<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
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
	<h2 style="text-align: center;">Employee Operations</h2>
	<br>
	<br>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Employee Operations</h3>
		</div>
		<div class="panel-body">

		<ul>
			<li><br> <a href="add">ADD EMPLOYEE</a> <br> <br>
			</li>

			<li><br> <a href="update">EDIT EMPLOYEE</a> <br> <br>
			</li>

			<li><br> <a href="delete">DELETE EMPLOYEE</a> <br> <br>
			</li>

			<li><br> <a href="searchEmployee">SEARCH EMPLOYEES</a> <br>
				<br></li>

			<li><br> <a href="employees">SHOW ALL EMPLOYEES</a> <br>
				<br></li>

		</ul>
	</div>
	</div>
	<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
