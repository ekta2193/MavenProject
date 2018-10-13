<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<html>
<head>
</head>
<body>
<header id="header" id="home">
		  		<div class="header-top">
		  			<div class="container">
				  		<div class="row align-items-center">
				  			<div class="col-lg-6 col-sm-6 col-4 header-top-left no-padding">
					      	<div class="menu-social-icons">
								<a href="https://www.facebook.com/leedscurryjunction/"><i class="fa fa-facebook"></i></a>
								<a href="https://www.facebook.com/leedscurryjunction/"><i class="fa fa-twitter"></i></a>
							<c:if test='<%=(Boolean)session.getAttribute("loggedIn")==null%>'>
       	
								<a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
       							<a href="goToLogin"><span class="glyphicon glyphicon-log-in"></span> Login</a>
       							</c:if>
							</div>	    				  					
				  			</div>
				  			<div class="col-lg-6 col-sm-6 col-8 header-top-right no-padding">
								<a class="btns" href="tel:+953 012 3654 896">+953 012 3654 896</a>
				  				<a class="btns" href="mailto:Ek.gupta@hotmail.com">Ek.gupta@hotmail.com</a>		
				  				<a class="icons" href="tel:+953 012 3654 896">
				  					<span class="lnr lnr-phone-handset"></span>
				  				</a>
				  				<a class="icons" href="mailto:support@colorlib.com">
				  					<span class="lnr lnr-envelope"></span>
				  				</a>
				  						
				  			</div>
				  		</div>			  					
		  			</div>
				</div>
				
				
				
			    <div class="container main-menu">
			    	<div class="row align-items-center justify-content-between d-flex">
			    		<a href="${pageContext.request.contextPath }/"><img src="img/logo.png" alt="" title="" /></a>		
						<nav id="nav-menu-container">
						
							<ul class="nav-menu">
							
     
							  <li class="menu-active"><a href="${pageContext.request.contextPath }/">Home</a></li>
							  <li><a href="about">About</a></li>
							  <li><a href="menu">Menu</a></li>
							  <li><a href="https://www.just-eat.co.uk/restaurants-curry-junction-armley/menu" target="_blank">Order online</a></li>
   						
      <c:if test='<%=(Boolean)session.getAttribute("loggedIn")!=null%>'>
      	<c:if test='<%=session.getAttribute("user")==null%>'>
		 					  <li class="menu-has-children"><a href="">Admin Ops</a>
							    <ul>
							      <li><a href="catAdminList">Category List</a></li>
							      <li><a href="proAdminList">Product List</a></li>
							     			              
							    </ul>
							  </li>
							  <li><a href="admin">Admin</a></li>
						
							  </c:if>
							 						  			          	          
							<!-- <li><a href="contact">Contact</a></li>  -->  
							  <li><a href="${pageContext.request.contextPath }/cart" style="color:black">
						<img src="resources/images/bag.png" alt="" /> Cart</a></li>
						
					
						
						<li class="dropdown">
						<a style="color:black">
					      <span class="img-circle"><%=session.getAttribute("usertitle")%></span> <%=session.getAttribute("name")%>
					       <span class="caret"></span></a>
					        <ul class="dropdown-menu">
					         <li><a href="<c:url value="/myAccount"/>">My Account</a></li>
					         <li><a href="<c:url value="/myOrders"/>">My Orders</a></li>
					         <li><a href="<c:url value="/perform_logout"/>">
					         <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					        </ul>
					     </li></c:if>
					     
							  
							</ul>
						</nav><!-- #nav-menu-container -->		
			    	</div>
			    </div>
			  </header><!-- #header -->
</body>
</html>