	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
		

	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
          <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
	
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
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
			  			  <jsp:include page="header.jsp"></jsp:include>
			
			  
			<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Menu List				
							</h1>	
							<p class="text-white link-nav"><a href="${pageContext.request.contextPath }/">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="menu.html"> Menu</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	
<!-- 
			 <div class="btn-group btn-group-justified">
    <a href="view?cat_id=5" class="btn btn-primary">Starter</a>
    <a href="view?cat_id=7" class="btn btn-primary">Vegetarian Main Course</a>
     <a href="view?cat_id=8" class="btn btn-primary">Vegetarian Side Dish</a>
    <a href="view?cat_id=6" class="btn btn-primary">Traditional mains</a>
    <a href="view?cat_id=9" class="btn btn-primary">House Special</a>
    <a href="view?cat_id=20" class="btn btn-primary">Sundries</a>
    <a href="view?cat_id=12" class="btn btn-primary">Others</a>
  </div>
 --> 
  
 <!-- Start menu-list Area -->
			<section class="menu-list-area section-gap">
				<div class="container">
					<div class="row">
						<div class="menu-cat mx-auto">
							<!-- ul class="nav nav-pills" id="pills-tab" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active"  href="view?cat_id=5" >Starter</a>
  							  </li>
							  <li class="nav-item">
							    <a class="nav-link" href="view?cat_id=5" >Vegetarian Mains</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" href="#pills-burger">Vegetarian Side</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" href="#pills-chicken" >Traditional Curries</a>
							  </li>		
							   <li class="nav-item">
							    <a class="nav-link" href="#pills-chicken" >House Special</a>
							  </li>	
							   <li class="nav-item">
							    <a class="nav-link" href="#pills-chicken" >Sundries</a>
							  </li>
							   <li class="nav-item">
							    <a class="nav-link" href="#pills-chicken" >Others</a>
							  </li>						  
							</ul>		 -->		
							
							
							
							<ul class="nav nav-pills" id="pills-tab" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active"    href="view?cat_id=5" aria-selected="true">Starter</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link"  href="view?cat_id=7" aria-selected="false">Vegetarian Main</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link"   href="view?cat_id=8" aria-selected="false">Vegetarian Side</a>
							  </li>
							  <li class="nav-item">
							   
										<a class="nav-link"    href="view?cat_id=9" aria-selected="false">House Special</a>
							  </li>		
							   <li class="nav-item">
							   
										<a class="nav-link"    href="view?cat_id=20" aria-selected="false">Sundries</a>
							  </li>					  
							</ul>		
							
							
										
						</div>

					
  <div id="pills-tabContent" class="tab-content absolute">
						<div class="tab-pane fade show active" id="pizza" role="tabpanel" aria-labelledby="pizza-tab">
							<div class="single-menu-list row justify-content-between align-items-center">
								
 <c:if test="${show==true }"><jsp:include page="menuDetails.jsp"></jsp:include>
</c:if>
</div>
</div>
</div>

		</div>
					</div>
					</section>	<!-- Start about-video Area -->
			<section class="about-video-area section-gap">
				<div class="container">			
					<div class="row align-items-center">
						<div class="col-lg-6 about-video-left">
							<h6 class="text-uppercase">Brand new app to blow your mind</h6>
							<h1>
								We’ve made a life <br>
								that will change you 
							</h1>
							<p>
								<span>We are here to listen from you deliver exellence</span>
							</p>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmo d tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<a class="primary-btn" href="#">Get Started Now</a>
						</div>
						<div class="col-lg-6 about-video-right justify-content-center align-items-center d-flex">
							<a class="play-btn" href="https://www.youtube.com/watch?v=ARA0AxrnHdM"><img class="img-fluid mx-auto" src="img/play.png" alt=""></a>
						</div>
					</div>
				</div>	
			</section>
			<!-- End about-video Area -->							
		
		<jsp:include page="footer.jsp"></jsp:include>
		
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