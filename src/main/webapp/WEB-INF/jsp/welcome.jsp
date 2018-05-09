<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/welcome.jsp">MultifunctionalScanner</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Scanndatabase</a></li>
					<li><a href="#about">About</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">


		<form:form class="form-horizontal" method="post" modelAttribute="database" action="/newPage">

		<spring:bind path="host">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Host</label>
				<div class="col-sm-10">
					<form:input value="localhost" path="host" type="text" class="form-control " id="host" placeholder="Host" />
					<form:errors path="host" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
			<spring:bind path="port">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Port</label>
				<div class="col-sm-10">
					<form:input value="1521" path="port" type="text" class="form-control" id="port" placeholder="Port" />
					<form:errors path="port" class="control-label" />
				</div>
			</div>
		</spring:bind>
			<spring:bind path="sid">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Sid</label>
				<div class="col-sm-10">
					<form:input value="LICENTA" path="sid" type="text" class="form-control" id="sid" placeholder="sid" />
					<form:errors path="sid" class="control-label" />
				</div>
			</div>
		</spring:bind>
					<spring:bind path="username">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Username</label>
				<div class="col-sm-10">
					<form:input value="system" path="username" type="text" class="form-control" id="username" placeholder="Username" />
					<form:errors path="username" class="control-label" />
				</div>
			</div>
		</spring:bind>
					<spring:bind path="password">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Password</label>
				<div class="col-sm-10">
					<form:password value="oracle123" path="password" class="form-control" id="password" placeholder="Password" />
					<form:errors path="password" class="control-label" />
				</div>
			</div>
		</spring:bind>
			<button  type="submit">ADD
			</button>
		</form:form>
	</div>



	<!-- /.container -->

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
