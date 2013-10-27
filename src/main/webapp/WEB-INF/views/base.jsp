<%@ include file='/WEB-INF/views/boilerplate/taglibs.jsp'%>
<!DOCTYPE html>
<html lang='en' class='no-js'>
	<head>
		<title>Vows</title>
		<meta charset='utf-8' />
		
		<%-- Edge Mode Tells IE to Display Content In Highest Mode Available --%>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name='application-name' content='Vows' />
		<meta name='viewport' content='width=device-width, initial-scale=1.0'>
		
		<link href='<c:url value="/wro/base.css"/>' rel='stylesheet' media='screen'>
		<link href='<c:url value="/wro/login.css"/>' rel='stylesheet' media='screen'>
		
		<%-- Framebusting CSS --%>
	  	<style type='text/css' id='antiClickjack'>
	  		body {display: none !important;}
	  	</style>
	 	<%-- Framebusting JavaScript --%>
		<script type='text/javascript'>
			if (self === top) {
				var antiClickjack = document.getElementById('antiClickjack');
				antiClickjack.parentNode.removeChild(antiClickjack);
			} else {
				top.location = self.location;
			}
		</script>
		
		<script src='resources/js/lib/modernizr-2.6.2.js'></script>
	</head>
	<body>
		<noscript>
	    	<style type='text/css'>body{display:block !important;}</style>
	    	<p class='nonjsAlert'>
	    		To access many exciting features of Vows, you'll need to turn on JavaScript and enable cookies. You can do this in your web browser's settings area.
	    	</p>
	    </noscript>
		<a href="#content" class="sr-only">Skip to content</a>
		<header class="navbar navbar-inverse navbar-fixed-top" role="banner">
		  <div class="container">
		    <div class="navbar-header">
		      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a href="../" class="navbar-brand">Vows</a>
		    </div>
		    <nav class="collapse navbar-collapse" role="navigation">
		      <ul class="nav navbar-nav navbar-right">
		        <li>
		          <a href="../javascript">About Us</a>
		        </li>
		        <li>
		          <a href="../customize">Log In</a>
		        </li>
		      </ul>
		    </nav>
		  </div>
		</header>
		<div class="container" id="content">
		    <div class="row">
			  <div class="col-md-12">
			  	<div class="trayOuter">
			  		<div class="trayInner">
			  			<div id="personalInfo">
				  			<header class="clearfix">
								<h3 class="text-primary">Tell us about yourself</h3>
							</header>
							<form role="form">
							  <fieldset>
								  <h4>Create Vows Login</h4>
								  <div class="form-group">
								    <label class="sr-only" for="personalInfo.email">Email address</label>
								    <input type="email" class="form-control" id="personalInfo.email" placeholder="Email Address">
								  </div>
								  <div class="row">
									<div class="col-lg-6 form-group">
										<label class="sr-only" for="personalInfo.password">Password</label>
								    	<input type="password" class="form-control" id="personalInfo.password" placeholder="Password">
									</div>
								  	<div class="col-lg-6 form-group">
								  		<label class="sr-only" for="personalInfo.confirm">Re-enter password</label>
								    	<input type="password" class="form-control" id="personalInfo.confirm" placeholder="Re-enter password">
								  	</div>
								  </div>
							  </fieldset>
							  <fieldset>
								  <h4>Personal Information</h4>
								  <div class="row">
									<div class="col-lg-6 form-group">
										<label class="sr-only" for="personalInfo.firstName">First Name</label>
								    	<input type="text" class="form-control" id="personalInfo.firstName" placeholder="First name">
									</div>
								  	<div class="col-lg-6 form-group">
								  		<label class="sr-only" for="personalInfo.lastName">Last Name</label>
								    	<input type="text" class="form-control" id="personalInfo.lastName" placeholder="Last name">
								  	</div>
								  </div>
								  <div class="form-group">
								  	<label class="sr-only" for="personalInfo.gender">Gender</label>
								    <select id="personalInfo.gender" class="form-control">
								      <option>Gender</option>
									  <option>Male</option>
									  <option>Female</option>
									</select>
								  </div>
								  <div class="form-group">
								    <label class="sr-only" for="personalInfo.dob">Date of Birth</label>
								    <input type="date" class="form-control" id="personalInfo.dob" placeholder="Date of Birth">
								  </div>
							  </fieldset>
						      <button type="button" class="btn btn-primary btn-lg btn-block">Create Account</button>
							</form>
						</div>
					</div>
			  	</div>
			  </div>
			</div>
		</div>
		<script data-main='resources/js/main' src='resources/js/lib/require-2.1.8.js'></script>
		<%@ include file='/WEB-INF/views/boilerplate/analytics.jsp'%>
	</body>
</html>
