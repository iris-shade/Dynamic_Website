<!DOCKTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd:>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<% 
	int current = 0;
	Connection connection = null;
	String connectionUrl ="jdbc:mysql://localhost:3306/website_master";
	ResultSet rs= null;
	Statement statement = null;
	try{
		
		Map<String, String> websiteItems = new HashMap<String,String>();
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = DriverManager.getConnection(connectionUrl,"root","12345678");
		statement = connection.createStatement();
		rs = statement.executeQuery("SELECT * FROM page_master");
		while(rs.next()){
			websiteItems.put(rs.getString(2),rs.getString(3));
		}
		
		if(websiteItems.size()<0){
			out.println("No Data found");
		}else{
			
		}
%>

<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1"> 
		<title>SPW | Title Name</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<style type="text/css">
			.color-teal{
				color:teal;
			}
			.icon-lg{
				font-size:50px
			}
			.icon-sm{
				font-size:25px
			}
			.no-underline{
				text-decoration:none;
			}
		</style>
	</head>
	<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a href="#" class="navbar-brand">
					<img src="<%= websiteItems.get("logo") %>" height="40px">
				</a>
				<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar1">
					<i class="bi bi-list"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbar1">
					<div class="navbar-nav ms-auto">
						<a href="index.jsp" class="nav-item nav-link active">Home</a>
						<a href="#about-us" class="nav-item nav-link">About Us</a>
						<a href="#contact-us" class="nav-item nav-link">Contact Us</a>
					</div>
				</div>
			</div>
		</nav>
	
		<div id="carousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
				<button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
				<button type="button" data-bs-target="#carousel" data-bs-slide-to="2"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="<%= websiteItems.get("carousel_one") %>" class="d-block w-100" alt="Carousel 1" style="max-height:100vh;">
				</div>
				<div class="carousel-item">
					<img src="<%= websiteItems.get("carousel_two") %>" class="d-block w-100" alt="Carousel 2" style="max-height:100vh;">
				</div>
				<div class="carousel-item">
					<img src="<%= websiteItems.get("carousel_three") %>" class="d-block w-100" alt="Carousel 3" style="max-height:100vh;">
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
		</div>
	</header>
	
	<main class="mt-5">
		<section class="container mt-4" id="about-us">
			<h6 class="display-5 text-center">About Us</h6>
			<div class="row mt-5 mb-5">
				<div class="col-md-5">
					<div class="container">
						<img src="https://dummyimage.com/600x400/000/fff&text=About+Us" class="d-block w-100" alt="About Us">
					</div>
				</div>
				<div class="col-md-7">
					<p class="text-black-50">
					Lorem Ipsum is simply dummy text of the printing and typesetting
				 industry. Lorem Ipsum has been the industry's standard dummy text
				 ever since the 1500s, when an unknown printer took a galley of type 
				 and scrambled it to make a type specimen book. It has survived not 
				 only five 
					</p>
					<p>
					 It was popularised in the 1960s with the release of Letraset 
					 sheets containing Lorem Ipsum passages, and more recently with 
					 desktop publishing software like Aldus PageMaker including 
					 versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the
					  printing and typesetting industry. Lorem Ipsum has been the 
					  industry's standard dummy text ever since the 1500s, when an 
					</p>
				</div>
			</div>
		</section>
		<section class=mt-5 mb-5>
			<div class="row">
			<h6 class="display-5 text-center mt-5 mb-5">What Makes Us Unique</h6>
			<div class="col-md-4">
				<div class="container text-center">
					<i class="bi bi-shield-shaded color-teal icon-lg"></i>
					<p>Privacy First Approach</p>
			    </div>
			</div>
			<div class="col-md-4">
				<div class="container text-center">
					<i class="bi bi-person color-teal icon-lg"></i>
					<p>Custom tailored user options</p>
			    </div>
			</div>
			<div class="col-md-4">
				<div class="container text-center">
					<i class="bi bi-list color-teal icon-lg"></i>
					<p>Multiple Varients</p>
			    </div>
			</div>
			</div>
		</section>
		<section id="team" class="container mt-5 mb-5">
			<div class="row">
				<h6 class="display-5 text-center mt-5 mb-5">Our Innovative Team</h6>
				<div class="col-md-4 d-flex align-items-center justify-content-center">
					<div class="card" style="width:300px !important">
						<img class="card-img-top" src="<%= websiteItems.get("team_member_one") %>" alt="Team user 1">
						<div class="card-body text-center">
							<h4 class="card-title">Team Member 1</h4>
							<p class="card-text"> It was popularised in the 1960s with the release of Letraset </p>
							<i class="bi bi-facebook icon-sm m-2"></i>
							<i class="bi bi-instagram icon-sm m-2"></i>
							<i class="bi bi-linkedin icon-sm m-2"></i>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-items-center justify-content-center">
					<div class="card" style="width:300px !important">
						<img class="card-img-top" src="<%= websiteItems.get("team_member_two") %>" alt="Team user 2">
						<div class="card-body text-center">
							<h4 class="card-title">Team Member 2</h4>
							<p class="card-text"> It was popularised in the 1960s with the release of Letraset </p>
							<i class="bi bi-facebook icon-sm m-2"></i>
							<i class="bi bi-instagram icon-sm m-2"></i>
							<i class="bi bi-linkedin icon-sm m-2"></i>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-items-center justify-content-center">
					<div class="card" style="width:300px !important">
						<img class="card-img-top" src="<%= websiteItems.get("team_member_three") %>" alt="Team user 3">
						<div class="card-body text-center">
							<h4 class="card-title">Team Member 3</h4>
							<p class="card-text"> It was popularised in the 1960s with the release of Letraset </p>
							<i class="bi bi-facebook icon-sm m-2"></i>
							<i class="bi bi-instagram icon-sm m-2"></i>
							<i class="bi bi-linkedin icon-sm m-2"></i>
						</div>
					</div>
				</div>	
			</div>
		</section>
		
		<section id="contact-us" class="container mt-5 mb-5">
			<h6 class="display-5 text-center mt-5 mb-5">Contact Us</h6>
			<div class="row">
			<div class="col-md-6">
				<div class="container mt-3">
					<p class="text-muted text-center fs-3"> Our Contact Info</p>
					<p class="text-black-50 text-center fs-4"> Our Email</p>
					<p class="text-black text-center fs-5"> somebody@somwhere.com</p>
					<p class="text-black-50 text-center fs-4"> Our Phone No.</p>
					<p class="text-black text-center fs-5"> 9876543210</p>
					<p class="text-black-50 text-center fs-4"> Our Address</p>
					<p class="text-black text-center fs-5"> HSR Layout, Bangalore</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="container">
					<p class="text-muted text-center fs-3"> You Can Also Write To Us</p>
					<div class="container">
						<div class="card shadow"></div>
						<div class="card-body">
							<form>
							 	<div class="form-group">
							 		<label for="name" class="form-label">Enter Your Name</label>
							 		<input type="Text" class="form-control" name="name" id="name"> 
							 	</div>
							 	<div class="form-group">
							 		<label for="name" class="form-label">Enter Your Email</label>
							 		<input type="Text" class="form-control" name="email" id="email"> 
							 	</div>
							 	<div class="form-group">
							 		<label for="name" class="form-label">Enter Your Subject</label>
							 		<input type="Text" class="form-control" name="subject" id="subject"> 
							 	</div>
							 	<div class="form-group">
							 		<label for="name" class="form-label">Enter Your Message</label>
							 		<textarea class="form-control" name="message" id="name"></textarea> 
							 	</div>
							 	<div class="form-group text-center">
							 		<input type="submit" class="btn btn-outline-dark mt-3" value="Send Message">
							 	</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		</section>
	</main>
	<footer class="bg-dark mt-5">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="container mt-5">
						<img src="<%= websiteItems.get("logo") %>" height="30px" class="bg-white">
						<p class="text-white">Lorem Ipsum is simply dummy text of the printing and typesetting
				 industry. Lorem Ipsum has been the industry's standard dummy text
				 ever since the 1500s, when an unknown printer took a galley of type 
				 and scrambled it to make a type specimen book. It has survived not 
				 only five</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="container mt-5">
					<p class="text-white fs-5">Quick Links</p>
					<ul>
						<li>
						<a href="#" class="text-white no-underline">About Us</a>
						</li>
						<li>
						<a href="#" class="text-white no-underline">Contact Us</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	</body>
</html>
<% 
	}catch(Exception e){
		out.println("Exception Occured:"+e);
	}
%>