<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.claim.model.*" %>
    <% Customer customer = (Customer) session.getAttribute("customer"); %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bank of Everyone</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bank Card Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link href="css/css_slider.css" rel="stylesheet"><!-- Slider css -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"><!-- bootstrap css -->
    <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Niramit:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet">
	<!-- //google fonts -->
	
</head>
<body>


<!-- header -->
<header>
	<div class="container">
		<!-- nav -->
		<nav class="py-3 d-lg-flex">
			<div id="logo">
<!-- 			<h1> <a href="index.jsp"><span class="fa fa-university"></span> Bank of Everyone </a></h1>-->
				<h1><a href="index3.jsp"><span class="fa fa-university"> Bank of </span><% out.print(customer.getFirstName()); %></a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu ml-auto mt-1">
				<li class="active"><a href="index3.jsp">Home</a></li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Accounts</a>
				    <div class="dropdown-menu">
				      <% for(Account account:customer.getAccounts()){
				    	  out.print("<a class=\"dropdown-item\" href=\"account?accountnumber="+account.getAccountNumber()+"\">"+account.getAccountType()+" | Acct#: "+account.getAccountNumber()+" | Balance $"+account.getAccountBalance());out.print("</a>");
				      }
				      %>
				    </div>
				 </li>
<!--				<li class=""><a href="services.jsp">Services</a></li>
 				<li class=""><a href="blog.jsp">Blog</a></li>  
				<li class=""><a href="contact.jsp">Contact</a></li>
				<li class=""><a href="openaccount.jsp"><strong>Open New Account</strong></a></li>
				<li class="last-grid"><a href="#">Call Now</a></li> -->
			</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
<!-- //header -->


<!-- banner -->
<div class="banner" id="home">
	<div class="layer">
		<div class="container">
			<div class="banner-text-w3pvt">
				<!-- banner slider-->
				<div class="csslider infinity" id="slider1">
					<input type="radio" name="slides" checked="checked" id="slides_1" />
					<input type="radio" name="slides" id="slides_2" />
					<input type="radio" name="slides" id="slides_3" />
					<ul class="banner_slide_bg">
						<li>
							<div class="w3ls_banner_txt">
								<h2 class="b-w3ltxt text-capitalize mt-md-4">Business <span>Loans.</span> </h2>
								<h4 class="b-w3ltxt text-capitalize">Cash Management</h4>
								<p class="w3ls_pvt-title my-3">onec consequat sapien ut leo cursus rhoncus. Nullam dui mi, vulputate ac metus semper Nullam dui mi.
								 Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubiliacurae, Curabitur quis luctus lectus.
								 Morbi at dui nisl.</p>
								<a href="services.jsp" class="btn btn-banner my-3 mr-2">Read More</a>
								<a href="contact.jsp" class="btn btn-banner1 my-3">Get Started</a>
							</div>
						</li>
						<li>
							<div class="w3ls_banner_txt">
								<h3 class="b-w3ltxt text-capitalize mt-md-4">Savings <span>Accounts.</span> </h3>
								<h4 class="b-w3ltxt text-capitalize">Cash Management</h4>
								<p class="w3ls_pvt-title my-3">onec consequat sapien ut leo cursus rhoncus. Nullam dui mi, vulputate ac metus semper Nullam dui mi.
								 Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubiliacurae, Curabitur quis luctus lectus.
								 Morbi at dui nisl.</p>
								<a href="services.jsp" class="btn btn-banner my-3 mr-2">Read More</a>
								<a href="contact.jsp" class="btn btn-banner1 my-3">Get Started</a>
							</div>
						</li>
						<li>
							<div class="w3ls_banner_txt">
								<h3 class="b-w3ltxt text-capitalize mt-md-4">Debit and <span>Credit Cards.</span> </h3>
								<h4 class="b-w3ltxt text-capitalize">Cash Management</h4>
								<p class="w3ls_pvt-title my-3">onec consequat sapien ut leo cursus rhoncus. Nullam dui mi, vulputate ac metus semper Nullam dui mi.
								 Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubiliacurae, Curabitur quis luctus lectus.
								 Morbi at dui nisl.</p>
								<a href="services.jsp" class="btn btn-banner my-3 mr-2">Read More</a>
								<a href="contact.jsp" class="btn btn-banner1 my-3">Get Started</a>
							</div>
						</li>
					</ul>
					<div class="navigation">
						<div>
							<label for="slides_1"></label>
							<label for="slides_2"></label>
							<label for="slides_3"></label>
						</div>
					</div>
				</div>
				<!-- //banner slider-->
			</div>
		</div>
	</div>
</div>
<!-- //banner -->


<!-- about -->
<section class="banner-bottom pt-5">
	<div class="container">
		<div class="row bottom_grids text-center mt-lg-5 mt-sm-3">
			<div class="col-md-4 grid1 mb-5">
				<img src="images/a1.png" alt="" class="img-fluid">
				<h3 class="my-3">Statistics</h3>
				<p class=""> Vestibulum ante ipsum primis in faucibus orci luctus eted ultrices posuere Curae primis in faucibus orci luctus eted.</p>
			</div>
			<div class="col-md-4 grid2 mb-5">
				<img src="images/a2.png" alt="" class="img-fluid">
				<h3 class="my-3">Security</h3>
				<p class=""> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere Nulla in mollis dapibusedi nunc, turpis.</p>
			</div>
			<div class="col-md-4 grid3 mb-5">
				<img src="images/a3.png" alt="" class="img-fluid">
				<h3 class="my-3">Presentation</h3>
				<p class=""> Vestibulum ante ipsum primis in faucibus orci luctus eted ultrices posuere Curae primis in faucibus orci luctus eted.</p>
			</div>
		</div>
	</div>
</section>
<!-- //about -->

<!-- advantages and details -->
<section class="advantages pt-lg-5 pt-3">
	<div class="container pb-lg-5">
		<div class="row advantages_grids">
			<div class="col-lg-6">
				<img src="images/advantages.jpg" alt="" class="img-fluid">
			</div>
			<div class="col-lg-6 mt-lg-0 mt-4">
				<h3 class="mt-3">Nullam varius, est eu vulputate elementum, tortor leo elementum justo, ac viverra ex.</h3>
				<p class="my-sm-4 my-3">  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere et Curae Integer ullamcorper metus et urna
				maximus, ac maximus es blandit. Nam pretium tempor mi, a fringilla leo imperdiet intre. Integer lacini dolor ultricies turpis.
				 non euismod lectus tincidunt vitae. Quisqe non facilis ante. Duis luctus id ex eget volutpat. Aliquam iaculis ante
				 urn luctus viverra</p>
			</div>
			<div class="row mt-md-5 mt-4 image-grids">
				<div class="col-lg-3 col-6 grid4 mb-5">
					<img src="images/a1.png" alt="" class="img-fluid">
					<h3 class="mt-3">Statistics</h3>
					<p class=""> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
				</div>
				<div class="col-lg-3 col-6 grid5 mb-5">
					<img src="images/a2.png" alt="" class="img-fluid">
					<h3 class="mt-3">Security</h3>
					<p class=""> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
				</div>
				<div class="col-lg-3 col-6 grid6 mb-5">
					<img src="images/a3.png" alt="" class="img-fluid">
					<h3 class="mt-3">Presentation</h3>
					<p class=""> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
				</div>
				<div class="col-lg-3 col-6 grid7 mb-5">
					<img src="images/a2.png" alt="" class="img-fluid">
					<h3 class="mt-3">Security</h3>
					<p class=""> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //advantages and details -->

<!-- statistics -->
<section class="statistics py-5">
	<div class="container py-lg-5 py-sm-3">
		<h3 class="heading mb-sm-5 mb-4">Latest <strong>statistical information</strong></h3>
		<div class="row">
			<div class="col-lg-4 mb-lg-0 mb-5">
				<p class="mb-4">  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere Curae Integer ullati mcorper metus et urna
				maximus, ac maximus estlen blandit. Nam pretium tempor mi, a sed fringilla leo imperdiet intre. Integer lacinia et ultricies turpis.
				non euismod lectus tincidunt vitae. Quisqe non facilisis ante.</p>
				<a href="#">Read more </a>
			</div>
			<div class="col-lg-4 col-md-6 mb-lg-0 mb-4">
				<img src="images/girl.png" alt="" class="img-fluid">
			</div>
			<div class="col-lg-4 col-md-6 mt-lg-0 mt-md-4">
				<div class="progress-one">
					<h4 class="progress-tittle">Online Banking</h4>
					<div class="progress">
						<div class="progress-bar progress-bar-striped" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
				<div class="progress-one my-lg-4">
					<h4 class="progress-tittle">Financial Consulting</h4>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
				<div class="progress-one">
					<h4 class="progress-tittle">Credit and debit cards</h4>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
				<div class="progress-one my-lg-4">
					<h4 class="progress-tittle">Existing Loans</h4>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
				<div class="progress-one">
					<h4 class="progress-tittle">24/7 support</h4>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //statistics -->

<!-- products -->
<section class="products py-5">
	<div class="container py-lg-5 py-3">
		<h3 class="heading mb-sm-5 mb-4">Products <strong>To Meet Your Life Goals</strong></h3>
		<div class="row products_grids text-center mt-5">
			<div class="col-md-3 col-6 grid4">
				<div class="prodct1 border p-3">
					<a href="#">
						<img src="images/a1.png" alt="" class="img-fluid">
						<h3 class="mt-2"> Personal Loan</h3>
						<span class="fa fa-long-arrow-right"></span>
					</a>
				</div>
			</div>
			<div class="col-md-3 col-6 grid5">
				<div class="prodct1 border p-3">
					<a href="#">
						<img src="images/a2.png" alt="" class="img-fluid">
						<h3 class="mt-2">Fixed Deposit</h3>
						<span class="fa fa-long-arrow-right"></span>
					</a>
				</div>
			</div>
			<div class="col-md-3 col-6 grid6 mt-md-0 mt-3">
				<div class="prodct1 border p-3">
					<a href="#">
						<img src="images/a8.png" alt="" class="img-fluid">
						<h3 class="mt-2">Savings Account</h3>
						<span class="fa fa-long-arrow-right"></span>
					</a>
				</div>
			</div>
			<div class="col-md-3 col-6 grid7 mt-md-0 mt-3">
				<div class="prodct1 border p-3">
					<a href="#">
						<img src="images/a4.png" alt="" class="img-fluid">
						<h3 class="mt-2">Credit Cards</h3>
						<span class="fa fa-long-arrow-right"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //products -->

<!-- stats section -->
<section class="middlesection-w3pvt">
	<div class="layer py-5">
		<div class="container py-lg-5 py-sm-3">
			<h3 class="heading mb-sm-5 mb-4">Our <strong>statistical growth</strong></h3>
			<div class="row">
				<div class="col-lg-8 left-build-wthree aboutright-w3pvtwthree">
					<div class="row">
						<div class="col-sm-3 col-6 w3layouts_stats_left w3_counter_grid">
							<span class="fa fa-credit-card"></span>
							<p class="counter">1568</p>
							<p class="para-text-w3ls">Issued Cards</p>
						</div>
						<div class="col-sm-3 col-6 w3layouts_stats_left w3_counter_grid2">	
							<span class="fa fa-users"></span>
							<p class="counter">1900</p>
							<p class="para-text-w3ls">Customers</p>
						</div>
						<div class="col-sm-3 col-6 w3layouts_stats_left w3_counter_grid1 mt-sm-0 mt-4">
							<span class="fa fa-dollar"></span>
							<p class="counter">1422</p>
							<p class="para-text-w3ls">Deposits</p>
						</div>
						<div class="col-sm-3 col-6 w3layouts_stats_left w3_counter_grid1 mt-sm-0 mt-4">
							<span class="fa fa-users"></span>
							<p class="counter">400</p>
							<p class="para-text-w3ls">Employees</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 text-lg-left text-stat text-center mt-lg-0 mt-5">
					<h4 class=""> Vestibulum ante ipsum int primis faucibus orci luctus et ultrices posue elit</h4>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //stats section -->

<!-- footer-top -->
<section class="footer-top pt-5">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-sm-6 mb-4">
				<h3 class="my-sm-3 mb-2"><span class="fa mr-2 fa-mobile"></span> Mobile Apps</h3>
				<p class="mb-sm-4"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
			</div>
			<div class="col-lg-3 col-sm-6 mb-4">
				<h3 class="my-sm-3 mb-2"><span class="fa mr-2 fa-shield"></span> Security Tips</h3>
				<p class="mb-sm-4"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
			</div>
			<div class="col-lg-3 col-sm-6 mb-4">
				<h3 class="my-sm-3 mb-2"><span class="fa mr-2 fa-globe"></span> Various Branches</h3>
				<p class="mb-sm-4"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
			</div>
			<div class="col-lg-3 col-sm-6 mb-4">
				<h3 class="my-sm-3 mb-2"><span class="fa mr-2 fa-phone"></span> 24/7 Support</h3>
				<p class="mb-4"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
			</div>
		</div>
	</div>
</section>
<!-- //footer-top -->

<!-- footer -->
<footer class="footer py-5">
	<div class="container pt-lg-4">
		<div class="row">
			<div class="col-lg-3 col-sm-6 footer-top">
				<h4 class="mb-4 w3f_title">Contact Info</h4>
				<ul class="list-w3">
					<li><span class="fa mr-1 fa-map-marker"></span>2130 Fulton Street, San Diego, CA 94117-1080 USA</li>
					<li class="my-2"><span class="fa mr-1 fa-phone"></span>1-600-1234-567</li>
					<li class="my-2"><span class="fa mr-1 fa-phone"></span>1-600-1234-567</li>
					<li class=""><span class="fa mr-1 fa-envelope"></span><a href="mailto:info@example.com">info@example.com</a></li>
				</ul>
			</div>
			<div class="col-lg-3 col-sm-6 footv3-left mt-sm-0 mt-4">
				<h4 class="mb-4 w3f_title"> Share Holders</h4>
				<ul class="list-w3">
					<li class="my-2">
						<a href="#">
							Shareholders Information
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Stock Information
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Financial Results
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Investors faq's
						</a>
					</li>
					<li>
						<a href="#">
							Regulatory Section
						</a>
					</li>
				</ul>
			</div>
			<div class="col-lg-2 col-sm-4 mt-lg-0 mt-sm-5 mt-4">
				<h4 class="mb-4 w3f_title">Media Center</h4>
				<ul class="list-w3">
					<li class="my-2">
						<a href="#">
							Press Release
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Vision & Values
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Winning Awards
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Banking
						</a>
					</li>
				</ul>
			</div>

			<div class="col-lg-2 col-sm-4 mt-lg-0 mt-sm-5 mt-4">
				<h4 class="mb-4 w3f_title">Resources</h4>
				<ul class="list-w3">
					<li class="my-2">
						<a href="#">
							24/7 Help Line
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Nearest Branch
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Guidance
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Download
						</a>
					</li>
					<li>
						<a href="#">
							Mobile App
						</a>
					</li>
				</ul>
			</div>
			
			<div class="col-lg-2 col-sm-4 mt-lg-0 mt-sm-5 mt-4">
				<h4 class="mb-4 w3f_title">Other Links</h4>
				<ul class="list-w3">
					<li class="my-2">
						<a href="#">
							Careers
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							All faq's
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Bank Group
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Credit Cards
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Loans
						</a>
					</li>
				</ul>
			</div>
			
		</div>
	</div>
	<!-- //footer bottom -->
</footer>
<!-- //footer -->

<!-- middle -->
<section class="middle py-4">
	<div class="container">
		<p><strong class="mr-2">Our Offerings & Calculators:</strong> Personal loans, Home and car loans, loan calculators, Savings accounts, Credit cards, Insurance.</p>
		<p><strong class="mr-2">Bank Smart:</strong> Internet Banking, Online Banking, Cardless transactions, Fixed deposits, Pin generation, Card active status.</p>
	</div>
</section>
<!-- //middle -->

<!-- copyright -->
<section class="copy-right py-4">
	<div class="container">
		<div class="row">
			<div class="col-lg-7">
				<p class="">© 2019 Bank of Everyone. All rights reserved | Design by
					<a href="http://w3layouts.com"> W3layouts.</a>
				</p>
			</div>
			<div class="col-lg-5 mt-lg-0 mt-3">
				<ul class="list-w3 d-sm-flex">
					<li>
						<a href="#">
							Privicy Policy
						</a>
					</li>
					<li class="mx-sm-4 mx-3">
						<a href="#">
							Terms & Conditions
						</a>
					</li>
					<li>
						<a href="#">
							Disclaimer.
						</a>
					</li>
					<li>
						<a href="#">
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<!-- //copyright -->

<!-- move top -->
<div class="move-top text-right">
	<a href="#home" class="move-top"> 
		<span class="fa fa-angle-up  mb-3" aria-hidden="true"></span>
	</a>
</div>
<!-- move top -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>