<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 		<script>
		$(document).ready(function () {
		    $('.open').on("mouseover", function (e) {
		        $(".sub").slideDown();
		    });
            
            $('.open').click(function(e){
                $(".sub").slideUp();
            });
		});
</script>

<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />        
<script src="../js/bootstrap.min.js"></script> 


<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
  <!-- Navigation -->
 <!--  <div class="container">
		<c:forEach items="${dataFromTable}" var="dataFromTable">
        
            ${dataFromTable}
      
    </c:forEach>
    -->

	
	<!-- <A HREF="ConnectionAndLogin.jsp" style="text-decoration:none" class="A">PARK</a> -->
	
	
	
<!--  <acronym title="Cloud Security Checker">CSC</acronym> v1.2 Sections: </span>-->
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div id="navbar" class="collapse navbar-collapse">
			</div>
		</div>
	</nav>

<div id="block">
    <div id="navigation">
        <ul class="top">
             <li class="open"><a>Report Info</a>

            </li>
			<ul class="sub">
                <li><a href="<c:url value='/DB_Installation_and_Patching' />"><i class="fa fa-fw fa-file"></i> System Information</a></li>
				<li><a href="<c:url value='/DB_Installation_and_Patching' />"><i class="fa fa-fw fa-file"></i> Target DB Information</a></li>
				<li><a href="<c:url value='/DB_Installation_and_Patching' />"><i class="fa fa-fw fa-file"></i> Collected Files</a></li>
				<li><a href="<c:url value='/DB_Installation_and_Patching' />"><i class="fa fa-fw fa-file"></i> Oracle Home List</a></li>
				<li><a href="<c:url value='/DB_Installation_and_Patching' />"><i class="fa fa-fw fa-file"></i>Oracle Home Product Information</a></li>
            </ul>
			
               <li class="open"><a>DB Installation and Patching</a>

            </li>
			<ul class="sub">
				<li><a href="<c:url value='/DB_Installation_and_Patching' />"><i class="fa fa-fw fa-file"></i> DB Installation and Patching</a></li>
            </ul>
            <li class="open"><a>DB SQLNET Parameters</a>

            </li>
            <ul class="sub">
                <li><a href="m_sqlnet.htm" target="sec_sub_index">DB SQLNET Parameters</a></li>
				<li><a href="<c:url value='/DB_Installation_and_Patching' />"><i class="fa fa-fw fa-file"></i> DB Installation and Patching</a></li>
            </ul>
			
            <li><a href="">DB Startup Parameters</a>

            </li>
        </ul>
    </div>
    
<ul><a>DB Startup Parameters</a>
<li><a href="OS_NET_T.htm" target="sec_sub_index">DB Startup Parameters</a></li>
</ul>


<ul><a>Multitenancy</a>
<li><a href="m_multitenancy.htm" target="sec_sub_index">Multitenancy</a></li>
</ul>

<ul><a>Connections And Login<</a>
<li><a href="Connections_And_Login.htm" target="sec_sub_index">Connections And Login</a></li>
</ul>

<ul><a>Audit Logging Policies and Procedures<</a>
<li><a href="Audit_Logging_Policies_and_Procedures.htm" target="sec_sub_index">Audit Logging Policies and Procedures</a></li>
</ul>

</div>

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
