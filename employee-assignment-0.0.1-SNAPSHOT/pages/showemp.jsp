<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="mytag" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="myform" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<base href="/employees"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<style type="text/css">
		
		body{
			
			font-family:"Century Gothic";
			background-color:#222222;
			color: white;
			margin:20px;
		}
		pre{
			font-family:"Century Gothic";
		}
		a{
			text-decoration: none;
			color: black;
			font-weight: bold;
			
		}	
		
		li{
			text-align: center;
			border: 1px solid black;
			margin:0;
			padding:0;
		}	
		div{
			color: black;
			background-color: white;
			margin:0;
			padding:0;
		}
		ul{
			list-style: none;
			marging:0;
			padding:0;
			border: 1px solid black;
		}
		tbody>tr:hover{
			color:white !important;
			background-color:#aaaaaa !important;
		}
		td:hover{
			color:white;
			background-color:#aaaaaa;
		}
		
	</style>
</head>
<body>
<!-- taglib for loop tag -->
<h3>ALL EMPLOYEES</h3><br>
<div class="panel panel-default">
<div class="panel-heading"><h3>Employees Details</h3></div>
<div class="panel-body">
<table id="emptbl" width="80%" border="1" style="border-radius:10px !important;" class="table table-responsive">
	<thead>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>BASIC</th>
			<th>HRA</th>
			<th>DEPT</th>
		</tr>
	</thead>
	<tbody>
	
		<mytag:forEach items="${employees }" var="employee">
		
			<tr>
				<td><a href="employees/${employee.id}">${employee.id }</a></td>
				<td><a href="employees/${employee.id}">${employee.name }</a></td>
				<td><a href="employees/${employee.id}">${employee.basic }</a></td>
				<td><a href="employees/${employee.id}">${employee.hra }</a></td>
				<td><a href="employees/${employee.id}">${employee.dept }</a></td>
			</tr>
		</mytag:forEach>
	</tbody>
</table>
</div>
</div>

<myform:form action="home" method="GET" >
<br/>
<br/>
	<pre>
	<a href="home">Home</a><span> | </span><a href="logout">Log Out</a>
	</pre>
</myform:form>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
	 $('#emptbl').DataTable();
 });
</script>
</body>
</html>