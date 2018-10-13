	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
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
			<!-- <section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="contsainer">
					<div class="row fullscreen d-flex justify-content-center align-items-center">
						<div class="banner-content col-lg-10 col-md-12 justify-content-center">
							<h6 class="text-uppercase">Welcome to Curry Junction</h6>
							<h3>
We welcome you to experience exotic Indian cuisine derived through the combination of various hand-picked spices and flavors from the diverse regions of India							</h3>
							<p class="text-white mx-auto">
							Welcome to Curry Junction
							<a href="#" class="primary-btn squire text-uppercase mt-10">Check Our Menu</a>
						</div>											
					</div>
				</div>
			</section> -->
			<!-- End banner Area -->


<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row fullscreen d-flex justify-content-center align-items-center">
						<div class="banner-content col-lg-10 col-md-12 justify-content-center">
							<!--<h6 class="text-uppercase">Welcome to Curry Junction</h6>-->
							<h1>
								Welcome to Curry Junction			
							</h1>
							<p class="text-white mx-auto">
								We welcome you to experience exotic Indian cuisine derived through the combination of various hand-picked spices and flavors from the diverse regions of India						
</p>
							<a href="menu" class="primary-btn squire text-uppercase mt-10">Check Our Menu</a>
						</div>											
					</div>
				</div>
			</section>
			
	
			<!-- End banner Area -->



			<!-- Start home-about Area -->
			<section class="home-about-area section-gap" style="background-color:#ffcc99">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
						<!-- 	<h6 class="text-uppercase">Brand new app to blow your mind</h6> -->
							<h1>
								We have cooked every dish
								from the core of our heart to serve you
							</h1>
							<p>
								<span>We offer healthy, fresh Indian cuisine using only the finest ingredients and freshest products. </span>
							</p>
							<p style="color:black;">
								With years of experience in food and catering service, Our team is commited to provide the best in traditional Indian recipies in a modern style. Curry Junction specialises Indian Cuisine. Chefs with years of experience in both vegetarian and non-vegetarian Indian cuisine are our hallmarks.
							</p>
							<a class="primary-btn squire mx-auto mt-20" href="menu">Check our Menu</a>						
						</div>
					</div>
				</div>	
				<img class="about-img" src="${pageContext.request.contextPath }/resources/flame.jpg" alt="">
			</section>
			<!-- End home-about Area -->

			<!-- Start item-category Area -->
			<section class="item-category-area section-gap" style="background-color:#ffd9b3">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-12 pb-80 header-text text-center">
							<h1 class="pb-10">Our Speciality</h1>
							<p>
								THE ULTIMATE INDIAN DINING EXPERIENCE IN LEEDS
							</p>
						</div>
					</div>								
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<div class="single-cat-item">
								<div class="thumb">
								<a href="menu">	<img class="img-fluid" src="${pageContext.request.contextPath }/resources/chk tikka.jpg" alt=""></a>
								</div>	
								<a href="menu"><h4>Starters</h4></a>
								<p>
									There are more to Indian starters than you might think!

								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-cat-item">
								<div class="thumb">
									<a href="menu"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/saag paneer.jpg" alt=""></a>
								</div>	
								<a href="menu"><h4>Vegetarian Main</h4></a>
								<p>
									Being vegetarian doesn't mean you can't eat amazing curry, in fact, quite the opposite! There are tonnes of Indian vegetarian recipes to choose from, every bit as tasty as their meaty counterparts.
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-cat-item">
								<div class="thumb">
									<a href="menu"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/butterchk.jpg" alt=""></a>
								</div>	
								<a href="menu"><h4>House Special</h4></a>
								<p>
									There are so many dishes to choose from and so many different ways of cooking each one. 
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-cat-item">
								<div class="thumb">
									<a href="menu"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/gulabo.jpg" alt=""></a>
								</div>	
								<a href="menu"><h4>Dessert</h4></a>
								<p>
									When you think of Indian food your mind may immediately go to thoughts of curry and savoury foods, but there are actually lots of Indian sweets and desserts originating from all over the country. 
								</p>
							</div>
						</div>																		
						<a class="primary-btn mx-auto mt-80" href="menu">View Full Menu</a>
					</div>
				</div>	
			</section>
			<!-- End item-category Area -->

			<!-- Start about-video Area -->
			<section class="about-video-area section-gap" style="background-color:#ffdab3">
				<div class="container">			
					<div class="row align-items-center">
						<div class="col-lg-6 about-video-left">
							<h1 class="text-uppercase">Award-Winning Menu</h1>
							<!-- <h1>
								Award-Winning Menu
							</h1> -->
							<p>
							You will find that our menu is very extensive and has a large number of dishes from all regions of India. However, if you would like us to modify any dish, or there is a particular meal you would like us to create, our chef would be happy to try and please you.
							</p>
							<a class="primary-btn" href="menu">Get Started Now</a>
						</div>
						<div class="col-lg-6 about-video-right justify-content-center align-items-center d-flex">
							<a class="play-btn" href="https://www.youtube.com/watch?v=ARA0AxrnHdM"><img class="img-fluid mx-auto" src="img/play.png" alt=""></a>
						</div>
					</div>
				</div>	
			</section>
			<!-- End about-video Area -->			

			<!-- Start review Area 
			<section class="review-area section-gap relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-9 pb-40 header-text text-center">
							<h1 class="pb-10 text-white">Enjoy our Client’s Review</h1>
							<p>
								Who are in extremely love with eco friendly system.
							</p>
						</div>
					</div>					
					<div class="row">
						<div class="active-review-carusel">
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Fannie Rowe</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Hulda Sutton</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Fannie Rowe</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Hulda Sutton</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>	
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Fannie Rowe</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Hulda Sutton</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Fannie Rowe</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
							<div class="single-review item">
								<img src="img/r1.png" alt="">
								<div class="title justify-content-start d-flex">
									<a href="#"><h4>Hulda Sutton</h4></a>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>																												
						</div>
					</div>
				</div>	
			</section>
			End review Area -->			

			<!-- Start blog Area
			<section class="blog-area section-gap" id="blog">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-9 pb-30 header-text">
							<h1>Latest posts from our Blog</h1>
							<p>
								Do you want to share your love of cheese fondue with your children? Or did you just find out that one of your fondue party guests doesn’t drink alcohol.
							</p>
						</div>
					</div>
					<div class="row">	
						<div class="single-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img class="f-img img-fluid mx-auto" src="img/b1.jpg" alt="">	
							</div>
							<div class="bottom d-flex justify-content-between align-items-center flex-wrap">
								<div>
									<img class="img-fluid" src="img/user.png" alt="">
									<a href="#"><span>Mark Wiens</span></a>
								</div>
								<div class="meta">
									13th Dec
									<span class="lnr lnr-heart"></span> 15
									<span class="lnr lnr-bubble"></span> 04
								</div>
							</div>							
							<a href="#">
								<h4>Opening Hours</h4>
							</a>
							<p>
Monday.................12pm - 10.45pm

Tuesday................4pm - 10.45pm

Wednesday..............4pm - 10.45pm

Thursday...............4pm - 10.45pm

Friday.................4pm - 11.45pm

Saturday...............4pm - 11.45pm

Sunday.................4pm - 10.30pm
					</p>
						</div>
						<div class="single-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img class="f-img img-fluid mx-auto" src="img/b2.jpg" alt="">	
							</div>
							<div class="bottom d-flex justify-content-between align-items-center flex-wrap">
								<div>
									<img class="img-fluid" src="img/user.png" alt="">
									<a href="#"><span>Mark Wiens</span></a>
								</div>
								<div class="meta">
									13th Dec
									<span class="lnr lnr-heart"></span> 15
									<span class="lnr lnr-bubble"></span> 04
								</div>
							</div>							
							<a href="#">
								<h4>Discover the story</h4>
							</a>
							<p>
							Our aim is to impress you with service and quality, to make your return 
an occasion to look forward to.
								</p>
						</div>
						<div class="single-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img class="f-img img-fluid mx-auto" src="img/b3.jpg" alt="">	
							</div>
							<div class="bottom d-flex justify-content-between align-items-center flex-wrap">
								<div>
									<img class="img-fluid" src="img/user.png" alt="">
									<a href="#"><span>Mark Wiens</span></a>
								</div>
								<div class="meta">
									13th Dec
									<span class="lnr lnr-heart"></span> 15
									<span class="lnr lnr-bubble"></span> 04
								</div>
							</div>							
							<a href="#">
								<h4>When Your Meal Bites Back Tips For
								Avoiding Food Poisoning</h4>
							</a>
							<p>
								While some people really seem to have a knack for barbequing – always grilling up a perfect meal – for the rest of us, it is something that must be learned, not something that just comes naturally. Believe it or not, there is technique involved.
							</p>
						</div>												
											
												
					</div>
				</div>	
			</section>
			end blog Area -->					

<jsp:include page="footer.jsp"></jsp:include>
			<!-- End footer Area -->	

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