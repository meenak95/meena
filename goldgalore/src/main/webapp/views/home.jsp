<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>GOLD GALORE</title>
<style>
  
 
  h1{
  color:red;
  }
  body{
  background-color:;
  }
  h2{
  font-family:Times new Roman;}
  .footer{
  background-color:black;
  }
  </style>
</head>
<body>
<div class="row">
  <div class="col-sm-4"><img src="resources/images/logo.png"></div>
  <div class="col-sm-5"></div>
  <div class="col-sm-3">
  <br>
  <br>
  GOLD RATE 22k (1gm)- Rs.2,970
 <br> 
 <br>
  <span class="glyphicon glyphicon-earphone">TOLL FREE:1800 123 0505
  </span>
 <br>
 <br>
  <a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</a>( ${cartSize} )
</div>
</div>
	
	<div class="container-fluid">
  		<div class="row">
    		
    			<nav class="navbar navbar-inverse">
  					<div class="container-fluid">
   						 
   					 <ul class="nav navbar-nav">
    					<li class="active"><a href="views/home.jsp"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
      					<ul class="dropdown-menu">
      					<c:forEach items="${categoryList}" var="category">
			<li><a href=${category.name}>${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">

						<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>
					</ul></li>
					</c:forEach>
					</ul></ul>
					
					<ul class="nav navbar-nav navbar-right"><br>
      <a href="views/register.jsp"><span class="glyphicon glyphicon-user" style="color:white;"></span> <span style="color:white;">SIGN IN</span></a>
      <a href="login.jsp"><span class="glyphicon glyphicon-log-in" style="color:white;"></span> <span style="color:white;">SIGN UP</span></a>
      <a href="userhome"><span class="glyphicon glyphicon-home"></span> USER Home</a>
     <a href="admin"><span class="glyphicon glyphicon-home"></span> admin home</a>
    
    </ul>
				
								
    				</div>
				</nav>
			</div>
   
   </div>
  
      		<div class="container-fluid"> 
  <div class="row">
    <div class="row-sm-4">
   <br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					
					
				</ol>

				<!-- Wrapper for slides -->

				<div class="carousel-inner" role="listbox">
					<div class="item active"><center>
						<a href="#"><img class="img-thumbnail" src="resources/images/11.jpg"
							alt="walldecals" width="1200" height="500" > </a></center>
							<div class="carousel-caption">
       
      </div>
					</div>

					<div class="item"><center>
						<a href="#"><img class="img-thumbnail" src="resources/images/12.jpg"
							alt="wallshelves" width="1200" height="500"></a></center>
							<div class="carousel-caption">
       
      </div>
					</div>
					
					<div class="item"><center>
						<a href="#"><img class="img-thumbnail" src="resources/images/b8.jpg"
							alt="wallshelves" width="1200" height="500"></a></center>
							<div class="carousel-caption">
       
      </div>
					</div>
					
					
					
  
    			</div>

  		</div>
	</div>
	</div>
	
	<center>
  <h2> <B><I>TRENDY JEWELLERY COLLECTIONS</I></B></h2>
  </center>
  <br> 
  <div class="row">
  <div class="col-sm-4"><center>
  
  <img  src="resources/images/img6.jpg"class="img-thumbnail" class="img-responsive image-shadow" >
  <p> <strong>PENDANTS</strong></P>

  </center>
  </div> 
  
  
  
      
  <div class="col-sm-4"> <center><img  src="resources/images/img7.jpg"  class="img-thumbnail" class="img-responsive image-shadow"><p>
  <strong>EARINGS</strong></p> </center></div> 
  <div class="col-sm-4"> <center><img src="resources/images/img8.jpg"class="img-thumbnail" class="img-responsive image-shadow" ><p><strong>BANGLES</strong></p> </center></div>
</div>
</div>
<hr>
<center>
<h2><B><I>YUVA COLLECTIONS</I></B></h2>
</center>
<div class="row">
  <div class="col-sm-4"><center>
  <img src="resources/images/img10.jpg"class="img-thumbnail" class="img-responsive image-shadow" ><p><strong>CHAINS</strong></P> </center>
  </div> 
  
  
      
  <div class="col-sm-4"> <center><img src="resources/images/rin.jpg" class="img-thumbnail" class="img-responsive image-shadow"><p><strong>RINGS</strong></p> </center></div> 
  <div class="col-sm-4"> <center><img src="resources/images/ki.jpg"class="img-thumbnail" class="img-responsive image-shadow" ><p><strong>KIDSCOLLECTIONS</strong></p> </center></div>
</div>
</div>
<hr>
<div class="container-fluid">
<div class="row">

  <div class="col-sm-3"><h3>Corporate Info</h3><br>

About Thangamayil<br>
Corporate Governance<br>
Investor Relationship<br>
Management Team<br>
Mission and vision<br>
News and Media<br>
Careers</div>
  
  
  
  <div class="col-sm-3"><h3>Information</h3>

Disclaimer<br>
Terms & Conditions<br>
Site Index<br>
Store Locator<br>
Auspicious Days<br>
Blog
  </div>
  
  <div class="col-sm-3"><h3>Let us help you</h3>

FAQ<br>
Feedback<br>
Bangle Size Guide<br>
Ring Size Guide<br>
Track My Order<br>
Why Buy From Us?
  </div>
  

  <div class="col-sm-3"><h3>Contact Us</h3>

0452-2565553<br>
e-mail:Lcare@Goldgalore.<br>
addres:(2nd & 3rd Floor),
Near Ramakrishna Mutt, 
25/6, New Natham Road, 
Narayanapuram,
Madurai, 
Tamilnadu 625014.
  </div>
 </div>
 </div>
  
  <hr>
  <div class="container-fluid">
  <div class="footer">
  <center>
  <p>@2016 GOLDGALORE   All Rights Reserved </p>
  </center>
  </div>
  </div>
</body>
</html>
	      					