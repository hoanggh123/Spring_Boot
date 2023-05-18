<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
     <style>
     @charset "ISO-8859-1";
* {
padding: 0;
margin: 0;
box-sizing: border-box;

}

.img-about{
position: absolute;
    width: 100%;
    height: 348px;
    left: 0px;
    top: 85px;
}

.text-img{
position: absolute;
width: 460px;
height: 48px;
left: 63px;
top: 315px;

font-family: 'Lato';
font-style: normal;
font-weight: 400;
font-size: 48px;
line-height: 48px;
/* identical to box height, or 100% */

text-transform: uppercase;

color: #FFFFFF;
}

body {
	color: #333;
	font-family: 'Open Sans', sans-serif;
	font-weight: 300;
	height:1000px;
}
h1,
h1+p {
	margin: 30px 15px 0;
	font-weight: 300;
}
h1+p a {
	color: #333;
}
h1+p a:hover {
	text-decoration: none;
}
h2 {
	margin: 60px 15px 0;
	padding: 0;
	font-weight: 300;
}
h2 span {
	margin-left: 1em;
	color: #aaa;
	font-size: 85%;
}
.column {
	margin: 15px 15px 0;
	padding: 0;
}
.column:last-child {
	padding-bottom: 60px;
}
.column::after {
	content: '';
	clear: both;
	display: block;
}
.column div {
	position: relative;
	float: left;
	width: 300px;
	height: 200px;
	margin: 0 0 0 25px;
	padding: 0;
}
.column div:first-child {
	margin-left: 0;
}
.column div span {
	position: absolute;
	bottom: -20px;
	left: 0;
	z-index: -1;
	display: block;
	width: 300px;
	margin: 0;
	padding: 0;
	color: #444;
	font-size: 18px;
	text-decoration: none;
	text-align: center;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
	opacity: 0;
}
figure {
	width: 300px;
	height: 311px;
	margin-left: 39px;
	padding: 0;
	background: #fff;
	overflow: hidden;
	
}
figure:hover+.text-about {
	bottom: -165px;
	opacity: 1;
}

.hover14 figure {
	position: relative;
}
.hover14 figure::before {
	position: absolute;
	top: 0;
	left: -75%;
	z-index: 2;
	display: block;
	content: '';
	width: 50%;
	height: 100%;
	background: -webkit-linear-gradient(left, rgba(255,255,255,0) 0%, rgba(255,255,255,.3) 100%);
	background: linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,.3) 100%);
	-webkit-transform: skewX(-25deg);
	transform: skewX(-25deg);
}
.hover14 figure:hover::before {
	-webkit-animation: shine .75s;
	animation: shine .75s;
}
@-webkit-keyframes shine {
	100% {
		left: 125%;
	}
}
@keyframes shine {
	100% {
		left: 125%;
	}
}

.container {
  position: relative;
  margin-top: 50px;
  width: 600px;
  height: 600px;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0);
  transition: background 0.5s ease;
}

.container:hover .overlay {
  display: block;
  background: rgba(0, 0, 0, .3);
}

.img-about-anh {
  position: absolute;
  width: 600px;
  height: 600px;
  left: 0;
}

.title {
  position: absolute;
  width: 600px;
  height: 600px;
  left: 0;
  font-weight: 700;
  font-size: 30px;
  text-align: center;
  text-transform: uppercase;
  color: white;
  transition: top .5s ease;
}

.container:hover .title {
  top: 90px;
}

.button {
    z-index: 1;
    position: absolute;
    width: 600px;
    height: 20px;
    left: 0;
    top: 413px;
    text-align: center;
    opacity: 0;
   animation: mymove 2s ease;
   
}


@keyframes mymove {
  from {left: 0px;}
  to {left: 200px;}
}

.button a {
  width: 200px;
  padding: 12px 48px;
  text-align: center;
  color: white;
  border: solid 2px white;
  z-index: 1;
}

.container:hover .button {
  opacity: 1;
}

.img-cha-about{
	margin-top:50px; 
	margin-left:31px;
	
}

.anh_founder{
border-radius: 25%;
    width: 223px;
}
     
     
     
     </style>
  </head>
  <body>
  <div>
   <img src = "/img/anh-header.jpg" class="img-about ">
   <div class="text-img">About Northstar</div>
  </div>
  
  
  <div class="row" style="
    width: 88%;
   margin-top: 450px;
    margin-left: 97px;
    
">
   <div class="container">
  <img class="img-about-anh" src="/img/gaixinh.jpg" alt="" />
 
  <div class="overlay"></div>
  <div class="button"><a href="#"> BUTTON </a></div>
</div>
<div class=" container">
  <img class="img-about-anh" src="/img/traidep.jpg" alt="" />
 
  <div class="overlay"></div>
  <div class="button"><a href="#"> BUTTON </a></div>
</div>
   
<h3 class="text-center " style="margin:107px 95px 0 0;">The Founders</h3>

<div class="hover14 column img-cha-about">
  <div class ="lopbao">
    <figure><img class="anh_founder" src="/img/anh9.jpg" /></figure>
    <span class="text-about" style="">Nguyễn Ngọc Toán <br>
             <strong>DEV</strong></span>
  </div>
  
    <div class ="lopbao">
    <figure><img class="anh_founder" src="/img/anh13.jpg" /></figure>
    <span class="text-about" style="">Nguyễn Ngọc Toán <br>
             <strong>DEV</strong></span>
  </div>
    <div class ="lopbao">
    <figure><img class="anh_founder" src="/img/anh15.jpg" /></figure>
    <span class="text-about" style="">Nguyễn Ngọc Toán <br>
             <strong>DEV</strong></span>
  </div>
    <div class ="lopbao">
    <figure><img class="anh_founder" src="/img/anh16.jpg" /></figure>
    <span class="text-about" style="">Nguyễn Ngọc Toán <br>
             <strong>DEV</strong></span>
  </div>
 
</div>	

<h3 class="text-center " style="margin:200px 0;">Testimonials</h3>

</div>

<div class="row"
 style="width: 55%;
    margin: 0 auto;">
  <div class="col-4">
  <img alt="" src="/img/anh1.jpg" 
  style="border-radius: 20px 110px 20px;
    width: 214px;"
  >
  </div>
   <div class="col-8">
   <i class="bi bi-stars" style="font-size:45px"></i>
   <p>Once we ordered some accessories items and we got the products delivered in our doorstep, the customer support was super helpful and they answered all my queries.
    <br> 
   <strong class="fs-4"> Toan.</strong></p>
   </div>

</div>

<div class="row mt-5"
 style="width: 55%;
    margin: 0 auto;">
  <div class="col-4">
  <img alt="" src="/img/anh2.jpg" 
  style="border-radius: 20px 110px 20px;
    width: 214px;"
  >
  </div>
   <div class="col-8">
   <i class="bi bi-stars" style="font-size:45px"></i>
   <p>Once we ordered some accessories items and we got the products delivered in our doorstep, the customer support was super helpful and they answered all my queries.
    <br> 
    <strong class="fs-4"> Toan.</strong></p>
   </div>

</div>

<div class="row mt-5"
 style="width: 55%;
    margin: 0 auto;">
  <div class="col-4">
  <img alt="" src="/img/anh3.jpg" 
  style="border-radius: 20px 110px 20px;
    width: 214px;"
  >
  </div>
   <div class="col-8">
   <i class="bi bi-stars" style="font-size:45px"></i>
   <p>Once we ordered some accessories items and we got the products delivered in our doorstep, the customer support was super helpful and they answered all my queries.
    <br> 
    <strong class="fs-4"> Toan.</strong></p>
   </div>

</div>

<div class="row mt-5"
 style="width: 55%;
    margin: 0 auto;">
  <div class="col-4">
  <img alt="" src="/img/anh4.jpg" 
  style="border-radius: 20px 110px 20px;
    width: 214px;"
  >
  </div>
   <div class="col-8">
   <i class="bi bi-stars" style="font-size:45px"></i>
   <p>Once we ordered some accessories items and we got the products delivered in our doorstep, the customer support was super helpful and they answered all my queries.
    <br> 
    <strong class="fs-4"> Toan.</strong></p>
   </div>

</div>
<br>
<br>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>