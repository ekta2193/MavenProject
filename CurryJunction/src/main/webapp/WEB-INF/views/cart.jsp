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
								Cart Items			
							</h1>	
							<p class="text-white link-nav"><a href="${pageContext.request.contextPath }/">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	



	<div class="checkout">
		<div class="container">
		<c:if test="${empty cartInfo!=true }">
	
			<h3 class="animated wow slideInLeft" data-wow-delay=".5s">Your shopping cart contains: <span>${cartSize } Products</span></h3>
		</c:if>
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>SL No.</th>	
							<th>Product</th>
							<th class="span4">Quantity</th>
							<th>Product Name</th>
							<th>Product Price</th>
							<th>Sub Total</th>
							<th>Remove</th>
						</tr>
					</thead>
					<c:if test="${empty cartInfo }">
						<tr>
							<td colspan="10" align="center">No Record Exists !!</td>
						</tr>
					</c:if>
	
					
					<c:forEach var="p" varStatus="st" items="${cartInfo}">
	
					
					<tr class="rem1">
						<td class="invert">${st.index+1 }</td>
						<td class="invert-image"><img src="${pageContext.request.contextPath }/resources/${p.cartImage }" alt=" " class="img-responsive" /></td>
						<td class="invert">
							 <div class="quantity" > 
								<div class="quantity-select">                           
									<a href="${pageContext.request.contextPath }/sub?cartId=${p.cartId }"><div class="entry value-minus">&nbsp;</div></a>
									<div class="entry value"><span>${p.cartStock }</span></div>
									<a href="${pageContext.request.contextPath }/add?cartId=${p.cartId }"><div class="entry value-plus active">&nbsp;</div></a>
								</div>
							</div>
						</td>
						<td class="invert">${p.cartProductName }</td>
						<td class="invert"><i class="fa fa-inr"></i> <c:out value="${p.cartPrice }"></c:out></td>
						<td class="invert"><i class="fa fa-inr"> </i> <c:out value="${p.cartStock * p.cartPrice}"></c:out></td>
						<td class="invert">
							
									<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
									<a href="<c:url value="/deletePCart/${p.cartId}"/>" role="button">Delete</a>		
							 	
							
						</td>
					</tr>
					</c:forEach>
					
								<!--quantity-->
									
								<!--quantity-->
				</table>
			</div>
			<div class="checkout-left">	
				<div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
					<h4>Continue to basket</h4>
					<ul>
					<c:forEach var="p" varStatus="s" items="${cartInfo}">
	
						<li>Product ${s.index+1 } <i>-</i> <span>$<i class="fa fa-inr"></i> <c:out value="${p.cartPrice }"></c:out> </span></li>
					
					 <c:set var="gtot" value="${gtot+ p.cartStock*p.cartPrice }"></c:set>
				</c:forEach>
						<li>Total <i>-</i> <span> <i class="fa fa-inr"> </i> <c:out value="${gtot }"></c:out></span></li>
					</ul>
				</div>
				<c:if test="${empty cartInfo }">
					<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
						<a href="${pageContext.request.contextPath }/"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Shop Here</a>
					</div>
				</c:if>
				<c:if test="${empty cartInfo!=true }">
					<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
						<a href="${pageContext.request.contextPath }/menu"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
					</div>
					<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
						<a href="${pageContext.request.contextPath }/checkout"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Checkout</a>
					</div>
				</c:if>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //checkout -->








<jsp:include page="footer.jsp"/>
<jsp:include page="footer.jsp"/>
   <jsp:include page="footer.jsp"/>
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