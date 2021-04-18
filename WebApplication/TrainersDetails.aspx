<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainersDetails.aspx.cs" Inherits="WebApplication.TrainersDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Bootstrap Testimonial Carousel with Star Ratings</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700|Open+Sans:400,700" rel="stylesheet"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
	font-family: "Open Sans", sans-serif;
}
h4
{
    color: #180da8;
    text-align: center;
    font-weight: bold;
}
h2 {
	color: #333;
	text-align: center;
	text-transform: uppercase;
	font-family: "Roboto", sans-serif;
	font-weight: bold;
	position: relative;
	margin: 25px 0 50px;
}
h2::after {
	content: "";
	width: 100px;
	position: absolute;
	margin: 0 auto;
	height: 3px;
	background: #ffdc12;
	left: 0;
	right: 0;
	bottom: -10px;
}
.carousel {
	width: 650px;
	margin: 0 auto;
	padding-bottom: 50px;
}
.carousel .item {
	color: #999;
	font-size: 14px;
    text-align: center;
	overflow: hidden;
    min-height: 340px;
}
.carousel .item a {
	color: #eb7245;
}
.carousel .img-box {
	width: 145px;
	height: 145px;
	margin: 0 auto;
	border-radius: 50%;
}
.carousel .img-box img {
	width: 100%;
	height: 100%;
	display: block;
	border-radius: 50%;
}
.carousel .testimonial {	
	padding: 30px 0 10px;
}
.carousel .overview {	
	text-align: center;
	padding-bottom: 5px;
}
.carousel .overview b {
	color: #333;
	font-size: 15px;
	text-transform: uppercase;
	display: block;	
	padding-bottom: 5px;
}
.carousel .star-rating i {
	font-size: 18px;
	color: #ffdc12;
}
.carousel .carousel-control {
	width: 30px;
	height: 30px;
	border-radius: 50%;
    background: #999;
    text-shadow: none;
	top: 4px;
}
.carousel-control i {
	font-size: 20px;
	margin-right: 2px;
}
.carousel-control.left {
	
	right: 40px;
}
.carousel-control.right i {
	margin-right: -2px;
}
.carousel .carousel-indicators {
	bottom: 15px;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 11px;
	height: 11px;
	margin: 1px 5px;
	border-radius: 50%;
}
.carousel-indicators li {	
	background: #e2e2e2;
	border-color: transparent;
}
.carousel-indicators li.active {
	border: none;
	background: #888;		
}
</style>
</head>
<body>
    <h2>HELLO!! Meet Our Trainers</h2>
    
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Carousel indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
	</ol>   
	<!-- Wrapper for carousel items -->
	<div class="carousel-inner">		
		<div class="item active">
			<div class="img-box"><img src="images/t1.jpg" alt="" /></div>
			<p class="testimonial"">Having completed his Bachelor’s degree in Aerospace Engineering, fitness was not always Dileep’s choice of career. However, the decision to follow his passions saw him complete his Certification in Personal Training from Gold’s Gym University in 2013. One of the highlights of his six-year-long career, Dileep says, is providing physical training to applicants to the defence forces of the nation.</p>

			<p class="overview"><b>Saravanan Hariram </b></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
			</div>
		</div>
        <div class="item">
			<div class="img-box"><img src="images/t2.jpg" alt="" /></div>
			<p class="testimonial">The holder of a Bachelor’s Degree in Naturopathy and Yogic Sciences, Dr. Priyanka has more than 7 years of experience in the field of health and wellness. Currently serving as a Sr. Nutritionist at HealthifyMe, she specializes in Weight Management, Lifestyle Modifications, and PCOS, Diabetes, and Cholesterol Management. In addition to being a Nutritionist, Dr. Priyanka is also a Fitness Enthusiast and a certified Zumba instructor.</p>
			<p class="overview"><b>Dr.Priyanka Marakini (BNYS)</b></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
			</div>
		</div>
        <div class="item">
			<div class="img-box"><img src="images/t3.jpg" alt="" /></div>
			<p class="testimonial"> As a former State-Level Basketball player, Anisha has been a fitness enthusiast from a very young age. Converting her passion into a career, she completed her Bachelor’s in Physiotherapy along with a Diploma in Sports Nutrition. Specialising in Postnatal Fitness, Rehabilitation, and Fitness for various medical conditions, Anisha has attended several workshops in the fitness field.</p>
			<p class="overview"><b>Anisha Mishra(BPT) </b></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
				</ul>
			</div>
		</div>	
        <div class="item">
			<div class="img-box"><img src="images/t4.jpg" alt="" /></div>
			<p class="testimonial">Saravanan “Sharu” Hariram is an ACE Certified Personal Trainer with a passion for bodybuilding. Combining his love for fitness with his career, Sharu did his certification in Sports Nutrition, and Rehabilitation and Healing Nutrition. Currently a Master Trainer with HealthifyMe, he specializes in Weight Management, Marathon Training, and Physical Rehabilitation. In his 20+ years of experience, Sharu has always maintained that one’s mind must have control over their body in order to lead a healthy life. At HealthifyMe, he continues to follow his passion while helping those around him realise their fitness goals.</p>
			<p class="overview"><b>Dileep Shivram (CPT)</b></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
				</ul>
			</div>
		</div>		
        <div class="item">
			<div class="img-box"><img src="images/t5.jpg" alt="" /></div>
			<p class="testimonial">After a diligent workout plan helped her lose 30kg of post-pregnancy weight, chartered accountant Roshini Gilbert was inspired enough to go from tallying numbers to training others. Currently serving as VP, Fitness & Services, at HealthifyMe, Roshini has been certified by the American Council on Exercises (ACE) for functional fitness and specialises in postnatal weight loss, exercises for lower back pain, arthritis and osteoporosis.</p>
			<p class="overview"><b>Roshini Gilbert (CPT) </b></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
				</ul>
			</div>
		</div>	
        
        <div class="item">
			<div class="img-box"><img src="images/t6.jpg" alt="" /></div>
			<p class="testimonial">According to Hiral, “Striving to be better than yesterday, is the key to achieving any goal that is ahead of you”. As a diet and lifestyle consultant, Hiral intends to help her clients inculcate habits such as healthy eating and regular exercise to improve their lifestyle holistically for a better tomorrow. She also aims to make her clients feel good from the inside-out and bring about a positive change to their overall life.</p>
			<p class="overview"><b>Hiral Patel(B.HSc)</b></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
				</ul>
			</div>
		</div>			
    </div>
           <!-- Carousel controls -->
	<a class="carousel-control left" href="#myCarousel" data-slide="prev">
		<i class="fa fa-angle-left"></i>
	</a>
	<a class="carousel-control right" href="#myCarousel" data-slide="next">
		<i class="fa fa-angle-right"></i>
	</a>
</div>
    <div>
        <h4>Contact Us For Personal Trainer <br />
            Contact:<u> +91 9975846213</u> </h4>
        <a href="homepage.aspx"><h2>Back To Home </h2></a><br />
        
        
    </div>
</body>
</html>
