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
            
            $( "#systemInformation" ).click(function() {
            	$("#firstData").show();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});

            $( "#targetDBInformation" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").show();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
  			});
            $( "#collectedFiles" ).click(function() {
        	$("#firstData").hide();
        	$("#secondData").hide();
        	$("#thirdData").show();
        	$("#fourthData").hide();
        	$("#fifthData").hide();
        	$("#sixthData").hide();
        	$("#seventhData").hide();
        	$("#eighthData").hide();
        	$("#ninthData").hide();
        	$("#tenthData").hide();
        	$("#eleventhData").hide();
        	$("#twelfthData").hide();
            	ajaxCall();
  			});
            
            $( "#oracleHomeList" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").show();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#oracleHomeProdInfo" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").show();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#dbInstallationAndPatching" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").show();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#dbSQLNETParameters" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").show();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#dbInstallationAndPatchingNew" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").show();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#dbStartUp" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").show();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#dbStartupParameters" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").show();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#multitenancy" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").show();
            	$("#eleventhData").hide();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#connectionsAndLogin" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").show();
            	$("#twelfthData").hide();
            	ajaxCall();
  			});
            $( "#auditLoggingPoliciesAndProcedures" ).click(function() {
            	$("#firstData").hide();
            	$("#secondData").hide();
            	$("#thirdData").hide();
            	$("#fourthData").hide();
            	$("#fifthData").hide();
            	$("#sixthData").hide();
            	$("#seventhData").hide();
            	$("#eighthData").hide();
            	$("#ninthData").hide();
            	$("#tenthData").hide();
            	$("#eleventhData").hide();
            	$("#twelfthData").show();
            	ajaxCall();
  			});
		});
		function ajaxCall() {
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "/ajaxCall",
				data : {},
				dataType : 'text',
				success : function(data) {
					console.log(data);
					alert("SUCCESS " + data);					
				},
				error : function(e) {
					console.log("ERROR: ", e);
					
				}
			});
		}
		
</script>

<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />        
<script src="../js/bootstrap.min.js"></script> 
<script src="../js/controller.js"></script>

<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<c:url value="/css/design.css" var="jstlCss" />
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
	
	

	<nav class="navbar navbar-inverse">
		<div class="container">
			<div id="navbar" class="collapse navbar-collapse">
			</div>
		</div>
	</nav>

<div class="container-left" id="block">
    <div id="navigation">
        <ul class="top">
             <li class="open"><a>Report Info</a>

            </li>
			<ul class="sub">
                <li><a href ="#" id="systemInformation">System Information</a></li>
				<li><a href ="#" id="targetDBInformation" >Target DB Information</a></li>
				<li><a href ="#" id="collectedFiles">Collected Files</a></li>
				<li><a href ="#" id="oracleHomeList" ></i>Oracle Home List</a></li>
				<li><a href ="#" id="oracleHomeProdInfo">Oracle Home Product Information</a></li>
            </ul>
			
               <li class="open"><a>DB Installation and Patching</a>

            </li>
			<ul class="sub">
				<li><a href ="#" id="dbInstallationAndPatching">DB Installation and Patching</a></li>
            </ul>
            
            <li class="open"><a>DB SQLNET Parameters</a>

            </li>
            <ul class="sub">
                <li><a href ="#" id="dbSQLNETParameters">DB SQLNET Parameters</a></li>
				<li><a href ="#" id="dbInstallationAndPatchingNew">DB Installation and Patching</a></li>
            </ul>
			
            <li><a href="">DB Startup Parameters</a>

            </li>
        </ul>
    </div>
    
<ul><a href ="#" id="dbStartUp">DB Startup Parameters1</a>
<li><a href ="#" id="dbStartupParameters">DB Startup Parameters</a></li>
</ul>


<ul><a>Multitenancy</a>
<li><a href ="#" id="multitenancy">Multitenancy</a></li>
</ul>

<ul><a>Connections And Login<</a>
<li><a href ="#" id="connectionsAndLogin">Connections And Login</a></li>
</ul>

<ul><a>Audit Logging Policies and Procedures<</a>
<li><a href ="#" id="auditLoggingPoliciesAndProcedures">Audit Logging Policies and Procedures</a></li>
</ul>

</div>

<div class="container-right" id="firstData" style="display:none">
data
<!-- <div class="container">
		<c:forEach items="${dataFromTable}" var="dataFromTable">
        
            ${dataFromTable}
      
    </c:forEach>-->
</div>

<div class="container-right" id="secondData" style="display:none">
	secondData
</div>

<div class="container-right" id="thirdData" style="display:none">
	thirdData
</div>

<div class="container-right" id="fourthData" style="display:none">
	fourthData
</div>

<div class="container-right" id="fifthData" style="display:none">
	fifthData
</div>

<div class="container-right" id="sixthData" style="display:none">
	sixthData
</div>

<div class="container-right" id="seventhData" style="display:none">
	seventhData
</div>

<div class="container-right" id="eighthData" style="display:none">
	eighthData
</div>

<div class="container-right" id="ninthData" style="display:none">
	ninthData
</div>

<div class="container-right" id="tenthData" style="display:none">
	tenthData
</div>

<div class="container-right" id="eleventhData" style="display:none">
	eleventhData
</div>

<div class="container-right" id="twelfthData" style="display:none">
	twelfthData
</div>


	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
