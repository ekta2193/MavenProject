<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>

<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link  rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'/>
	 <link rel="stylesheet" type="text/js" href='<c:url value="/resources/js/bootstrap.min.js"/>'/>
	


<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="resources/css1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css1/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="resources/js1/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="resources/js1/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="resources/js1/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="resources/css1/jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="resources/css1/animate.min.css" rel="stylesheet"> 
<script src="resources/js1/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<title>Curry Junction</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="resources/css/linearicons.css">
			<link rel="stylesheet" href="resources/css/font-awesome.min.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/nice-select.css">							
			<link rel="stylesheet" href="resources/css/animate.min.css">
			<link rel="stylesheet" href="resources/css/jquery-ui.css">			
			<link rel="stylesheet" href="resources/css/owl.carousel.css">
			<link rel="stylesheet" href="resources/css/main.css">
		
</head>
<body>

<jsp:include page="header.jsp"/>
		<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								About Us				
							</h1>	
							<p class="text-white link-nav"><a href="${pageContext.request.contextPath }/">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	


<script type="text/javascript" src="<c:url value="/resources/js/myaccount.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/inputform.js"/>"></script>
<div style="width:80%; margin:auto;margin-top:1.5em;">
<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header headStyle">
					    Change Password
					    </div>
						<div class="modal-body" style="padding:40px 50px;">
							<form action="changePass" method="post" class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-5 myBoldFont" for="currentPass">Current Password</label>
								<div class="col-sm-7">
								<input type="text" name="currentPass" id="currentPass" class="form-control" required pattern="[A-za-z0-9]{8,}" title="Atleast have 8 characters, special characters are not allowed"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-5 myBoldFont" for="newPass">New Password</label>
								<div class="col-sm-7">
								<input type="text" name="newPass" id="newPass" class="form-control" required pattern="[A-za-z0-9]{8,}" title="Atleast have 8 characters, special characters are not allowed"/>
								</div>
							</div>
							<div class="col-sm-6">
							<input type="submit" value="Change" class="btn btn-success btn-block myBoldFont"/></div>
							<div class="col-sm-6">
							<button class="btn btn-danger btn-block myBoldFont" data-dismiss="modal">Cancel</button>
							</div><br/>
							</form>
						</div>
					</div>
			    </div>
			</div>
<div class="panel-group">
		<div class="panel panel-primary">
			<div class="panel-heading text-center">
			<span>Account Details</span>
			</div>
	<div class="panel-body table-responsive">
				<table class="table"><form id="userTable" action="updateUser" method="post">
				<tr><th>Email ID</th><td>
				<input type="email" name="email" id="emailField" value="${user.email}" disabled required title="Enter a valid email address"/></td>
				<tr><th>Name</th><td>
				<input type="text" name="name" id="nameField" value="${user.name}" disabled required maxlength="25" pattern="[A-Za-z]+[ ]*[A-Za-z]*" title="Enter a valid name"/></td>
				<td><span class="glyphicon glyphicon-edit" id="nameBtn"></span><button type="submit" id="nameSave" class="btn btn-primary">Save</button></td></tr>
				<tr><th>Mobile Number</th><td>
				<input type="text" name="phone" id="mobileField" value="${user.phone}" disabled required pattern="[0-9]{10}" title="Enter a 10 digit mobile number" maxlength="10"/></td>
				<td><span class="glyphicon glyphicon-edit" id="mobileBtn"></span><button type="submit" id="mobileSave" class="btn btn-primary">Save</button></td></tr>
				<tr><th>Address</th><td>
				<textarea name="address" rows="3" id="addressField" disabled required maxlength="255">${user.address}</textarea></td>
				<td><span class="glyphicon glyphicon-edit" id="addressBtn"></span><button type="submit" id="addressSave" class="btn btn-primary">Save</button></td></tr>
				</form>
				<tr><th>Username</th><td colspan="2">${user.name}</td></tr>
				<tr><th>Password</th>
					<td colspan="2">
					<button type="button" class="btn btn-success btn-sm myBoldFont" id="myBtn">Change password</button> 
					<b>${info}</b>
					</td>
					</tr>
					<c:if test='<%=(String)session.getAttribute("user")!=null && ((String)session.getAttribute("user")).equals("user")%>'>
					<tr><th>Account</th>
					<td colspan="2">
					<a href="deactivateAccount" class="btn btn-danger btn-sm myBoldFont" id="myBtn">Deactivate Account</a> 
					</td>
					</tr></c:if>
				</table>
			</div>
</div></div></div>
<%@include file="footer.jsp"%>
 <script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="resources/js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="resources/js/easing.min.js"></script>			
			<script src="resources/js/hoverIntent.js"></script>
			<script src="resources/js/superfish.min.js"></script>	
			<script src="resources/js/jquery.ajaxchimp.min.js"></script>
			<script src="resources/js/jquery.magnific-popup.min.js"></script>	
 			<script src="resources/js/jquery-ui.js"></script>			
			<script src="resources/js/owl.carousel.min.js"></script>						
			<script src="resources/js/jquery.nice-select.min.js"></script>							
			<script src="resources/js/mail-script.js"></script>	
			<script src="resources/js/main.js"></script>	
</body>
</html>