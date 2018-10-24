<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<html>
	<head>
		<title>Search Page</title>
		<base href="/employees"/>
		<!-- Latest compiled and minified CSS -->
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
			color:black;
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
			color:black;
		}
		thead>tr>th, tbody>tr>td{
			color:black;
		}
		
		</style>
		</head>
	<body>
	<h2>Search Content</h2>
	<div class="panel panel-default">
	<div class="panel-heading"><h3>Search Content</h3></div>
		<div class="panel-body">

			<form action="searchEmployee" method="POST">
				<input type="hidden" name="${_csrf.parameterName }"
					value=${_csrf.token } />
				<label>
					Search for :
					<input type="text" name="srchValue"/></label>
				<button name="field" value="dept">By Department</button>
				<button name="field" value="name">By Name</button>
			</form>
		</div>
		</div>
		<c:if test="${pageTitle ne null }">
			
			<h2> ${pageTitle}</h2>
	<c:choose>
		<c:when test="${employees ne null}">
			<div class="panel panel-default">
			<div class="panel-heading"><h3>Employee Details</h3></div>
			<div class="panel-body">
				<table style="border-radius:10px !important;" class="table table-responsive" >
					<thead>
					<tr>
						<th>Employee#</th>
						<th>Name</th>
						<th>Basic</th>
						<th>HRA</th>
						<th>Department</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${employees }" var="employee">
						<tr>
							<td>${employee.id }</td>
							<td>${employee.name }</td>
							<td>${employee.basic }</td>
							<td>${employee.hra }</td>
							<td>${employee.dept }</td>
						</tr>
						</c:forEach>
						</tbody>
					
				</table>
				<a href="home">Home</a><span> | </span><a href="logout">Log Out</a>
				</div>
				</div>
		</c:when>
		<c:otherwise>
		<div class="panel panel-default">
			<div class="panel-heading"><h3>Results : </h3></div>
			<div class="panel-body">
				<h3>No Such Records Found.</h3>
			</div>
		</div>
		</c:otherwise>
		</c:choose>

		
		</c:if>
		
		
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</body>
</html>