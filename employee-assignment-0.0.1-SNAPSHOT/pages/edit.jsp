<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="myform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<base href="/employees"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
		
		body{
			
			font-family:"Century Gothic";
			background-color:#222222;
			color: white;
			margin: 20px;
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
		
	</style>
</head>
<body>
<h4>${ message }</h4>
<!-- Map employee object with form
regular HTML form can't be used for mapping
need special spring-framework library : tag library 
-->
<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Update Employee</h3>
		</div>
		<div class="panel-body">
<myform:form action="update" method="POST" modelAttribute="employee">
<input type="hidden" name="${_csrf.parameterName }" value=${_csrf.token } />
	<pre>
		<myform:label path="id">Enter Id of the employee to modify</myform:label>	<myform:input path="id"/><br>
		<myform:label path="name">Enter Name</myform:label>						<myform:input path="name"/><br>
		<myform:label path="basic">Enter Basic</myform:label>						<myform:input path="basic"/><br>
		<myform:label path="hra">Enter HRA</myform:label>						<myform:input path="hra"/><br>
		<myform:label path="dept">Enter Department</myform:label>					<myform:input path="dept"/><br>
		
				<input type="submit" value="EDIT"/>
	</pre>
</myform:form>
</div>
</div>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>