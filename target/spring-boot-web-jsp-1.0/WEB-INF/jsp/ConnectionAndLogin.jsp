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

	

	<div class="container">

	<!--<p>newPage</p>-->
		<c:forEach items="${dataFromTable}" var="dataFromTable">
        
            ${dataFromTable}
      
    </c:forEach>

	</div>	

<div class='menu_up'><p><a name='Top'></a>
<h2 id='Hdr1'>Connections And Login</h2>
<ul>
<li><a href='os_details.htm' target='sec_report'>System Information</a>
<li><a href='os_details.htm' target='sec_report'>Target DB Information</a>
<li><a href='os_details.htm' target='sec_report'>Collected Files</a>
<li><a href='os_details.htm' target='sec_report'>Oracle Home List</a>
<li><a href='os_details.htm' target='sec_report'>Oracle Home Product Information</a>
</ul>
</div>

	<!-- /.container -->
	
	

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
