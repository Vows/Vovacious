<%@ include file="/WEB-INF/views/boilerplate/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<title>Vows</title>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7" />
		
		<meta name="application-name" content="NicSin Games" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link rel="shortcut icon" href="<c:url value='/assets/ico/favicon.ico'/>">
		
		<link href="<c:url value='/wro/base.css'/>" rel="stylesheet">
		<link href="<c:url value='/wro/login.css'/>" rel="stylesheet">
		
		<%-- Framebusting CSS --%>
	  	<style type="text/css" id="antiClickjack">
	  		body {display: none !important;}
	  	</style>
	 	<%-- Framebusting JavaScript --%>
		<script type="text/javascript">
			if (self === top) {
				var antiClickjack = document.getElementById("antiClickjack");
				antiClickjack.parentNode.removeChild(antiClickjack);
			} else {
				top.location = self.location;
			}
		</script>
		
		<script src="resources/js/lib/modernizr-2.6.2.js"></script>
	</head>
	<body>
		<noscript>
	    	<style type="text/css">body{display:block !important;}</style>
	    	<p class="nonjsAlert">
	    		To access many exciting features of NicSin Games, you'll need to turn on JavaScript and enable cookies. You can do this in your web browser's settings area.
	    	</p>
	    </noscript>
		
	    <%@ include file="/WEB-INF/views/boilerplate/analytics.jsp"%>
	    <div class="navbar navbar-fixed-top navbar-inverse">
			<div class="navbar-inner">
			    <div class="container">
			 
			    	<%-- .btn-navbar is used as the toggle for collapsed navbar content --%>
				   	<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				    	<span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </a>
			 
			      	<%-- Brand Name Outside --%>
			      	<a class="brand" href="http://nicsin.com">NicSin</a>
			 
			      	<%-- Everything to hide goes inside --%>
			      	<div class="nav-collapse collapse">
				      	<ul class="nav">
					    	<li class="active"><a href="#">Home</a></li>
					      	<li><a href="#">Contact us</a></li>
					    </ul>
			     	</div>
			 
			    </div>
		  	</div>
		</div>
		
		<div class="container" id="mainContent">
			<c:if test="${not empty error}">
				<div class="errorblock">
					Your login attempt was not successful, try again.<br /> Caused :
					${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
				</div>
			</c:if>
		
			<!-- <form name='f' action="<c:url value='j_spring_security_check' />"
				method='POST'>
		
				<table>
					<tr>
						<td>User:</td>
						<td><input type='text' name='j_username' value=''></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type='password' name='j_password' /></td>
					</tr>
					<tr>
						<td colspan='2'><input name="submit" type="submit"
							value="submit" /></td>
					</tr>
					<tr>
						<td colspan='2'><input name="reset" type="reset" /></td>
					</tr>
				</table>
		
			</form> -->
		</div>
		<script data-main="resources/js/main" src="resources/js/lib/require-2.1.8.js"></script>
	</body>
</html>
