<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="user-scalable=0, width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Belle &amp; Carrie Rehabilitation Yoga Web Template</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css">
	<script type='text/javascript' src='js/mobile.js'></script>
	<style>
	body {
	background: #077054;
	color: #315f52;
	font-family: 'latoregular';
	font-size: 14px;
	margin: 0;
	padding: 0;
}
@font-face {
	font-family: 'latoregular';
	src: url('../fonts/lato-regular-webfont.eot');
	src: url('../fonts/lato-regular-webfont.eot?#iefix') format('embedded-opentype'),
		url('../fonts/lato-regular-webfont.woff') format('woff'),
		url('../fonts/lato-regular-webfont.ttf') format('truetype'),
		url('../fonts/lato-regular-webfont.svg#latoregular') format('svg');
	font-weight: normal;
	font-style: normal;
}
@font-face {
	font-family: 'nixie_oneregular';
	src: url('../fonts/nixieone-regular-webfont.eot');
	src: url('../fonts/nixieone-regular-webfont.eot?#iefix') format('embedded-opentype'),
		url('../fonts/nixieone-regular-webfont.woff') format('woff'),
		url('../fonts/nixieone-regular-webfont.ttf') format('truetype'),
		url('../fonts/nixieone-regular-webfont.svg#nixie_oneregular') format('svg');
	font-weight: normal;
	font-style: normal;
}
a {
	outline: none;
}
img {
	border: none;
}
p {
	line-height: 30px;
	margin: 0;
}
p a {
	color: #315f52;
}
p a:hover {
	color: #451374;
}
#header {
	margin: 0 auto;
	max-width: 960px;
}
#header h1 {
	font-size: 50px;
	font-weight: normal;
	line-height: 50px;
	margin: 0;
	padding: 30px 0;
	text-align: center;
}
#header h1 a {
	color: #99fa99;
	text-decoration: none;
}
#header h1 a span {
	color: #b6d8cf;
	display: block;
	font-family: 'nixie_oneregular';
	font-size: 26px;
	text-transform: uppercase;
}
#header ul#navigation {
	list-style: none;
	margin: 0;
	padding: 0;
	text-align: center;
}
#header ul#navigation li {
	display: inline;
	line-height: 30px;
	position: relative;
}
#header ul#navigation li a {
	color: #b6d8cf;
	font-size: 18px;
	padding: 0 46px;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
}
#header ul#navigation li a:hover,
#header ul#navigation li.current ul li a:hover {
	color: #d3a3ff;
}
#header ul#navigation li.current a {
	color: #99fa99;
}
#header ul#navigation li ul {
	display: none;
	left: 0;
	list-style: none outside none;
	margin: 0;
	padding: 11px 0 0;
	position: absolute;
	top: 12px;
}
#header ul#navigation li:hover ul {
	display: block;
}
#header ul#navigation li ul li {
	background: #077054;
	display: block;
	height: 46px;
	line-height: 46px;
}
#header ul#navigation li ul li a {
	padding: 0 20px;
}
#header ul#navigation li.current ul li a {
	color: #b6d8cf;
}
#body {
	background: #ffffff;
	margin: 1px auto 0;
	max-width: 880px;
	min-height: 827px;
	overflow: hidden;
	padding: 45px 40px 46px;
}
#body > h2 {
	color: #21a51e;
	font-family: 'nixie_oneregular';
	font-size: 35px;
	font-weight: normal;
	line-height: 30px;
	margin: 0;
	padding: 0 0 44px;
}
#body img.figure {
	display: block;
	float: right;
	margin: 74px 38px 46px 0;
	max-width: 100%;
	width: auto;
}
#body div#tagline {
	float: left;
	margin: 110px 0 0 25px;
	max-width: 510px;
}
#body div#tagline h1 {
	background: url(../images/bg-separator.png) no-repeat center bottom;
	color: #21a51e;
	font-family: 'nixie_oneregular';
	font-size: 100px;
	font-weight: normal;
	line-height: 100px;
	margin: 0;
	padding: 0 0 55px;
	text-align: center;
	text-transform: uppercase;
}
#body div#tagline p {
	color: #21a51e;
	font-family: 'nixie_oneregular';
	font-size: 100px;
	line-height: 100px;
	padding: 43px 0 0;
	text-align: center;
}
#body div.content {
	overflow: hidden;
}
#body div.content > div {
	float: left;
	width: 510px;
}
#body div.content h3,
#body form h3,
#body ul.blog li h3 {
	font-family: 'nixie_oneregular';
	font-size: 23px;
	font-weight: normal;
	line-height: 30px;
	margin: 0;
	padding: 25px 0 0;
}
#body div.content h3:first-child,
#body div.content div div.section:first-child {
	padding: 0;
}
#body div.content img.figure {
	margin: 0 38px 46px 0;
}
#body div.content div div.section {
	padding: 55px 0 0;
	width: 430px;
}
#body div.content div div.section span {
	display: block;
	line-height: 30px;
}
#body div.content div ul {
	list-style: none;
	margin: 0;
	overflow: hidden;
	padding: 0 0 65px;
}
#body div.content div ul li {
	float: left;
	margin: 0 0 0 83px;
	width: 207px;
}
#body div.content div ul li:first-child {
	margin: 0;
}
#body div.content div ul li img {
	display: block;
	max-width: 100%;
	width: auto;
}
#body div.content div ul li h4 {
	font-family: 'nixie_oneregular';
	font-size: 18px;
	font-weight: normal;
	margin: 0;
	padding: 12px 0 0;
	text-align: center;
}
#body form {
	margin: 25px auto 0;
	overflow: hidden;
	width: 460px;
}
#body form label {
	display: block;
	padding: 15px 0 0;
}
#body form label span {
	display: block;
	line-height: 27px;
	padding: 0 0 5px
}
#body form label input {
	background: #d1d3d4;
	border: 1px solid #b6d8cf;
	color: #315f52;
	display: block;
	font-family: 'latoregular';
	font-size: 14px;
	height: 46px;
	line-height: 46px;
	padding: 0 5px;
	width: 448px;
}
#body form label textarea {
	background: #d1d3d4;
	border: 1px solid #b6d8cf;
	color: #315f52;
	display: block;
	font-family: 'latoregular';
	font-size: 14px;
	height: 250px;
	line-height: 30px;
	overflow: auto;
	padding: 0 5px;
	resize: none;
	width: 448px;
}
#body form input#send {
	background: #077054;
	border: none;
	border-radius: 5px;
	color: #99fa99;
	cursor: pointer;
	font-family: 'latoregular';
	font-size: 14px;
	float: right;
	height: 30px;
	margin: 8px 0 0;
	width: 50px;
}
#body form input#send:hover {
	background: #d3a3ff;
	color: #000000;
}
#body ul.blog {
	list-style: none;
	margin: 0;
	padding: 0;
}
#body ul.blog li {
	overflow: hidden;
	padding: 104px 100px 0 0;
}
#body ul.blog li:first-child {
	padding: 0 100px 0 0;
}
#body ul.blog li img {
	display: block;
	float: left;
	margin: 0 20px 0 0;
	max-width: 100%;
	width: auto;
}
#body ul.blog li h3 {
	line-height: 20px;
	padding: 0 0 8px;
}
#body ul.blog li h3 a,
#body div.content div.sidebar ul li h4 a {
	color: #315f52;
	text-decoration: none;
}
#body ul.blog li h3 a:hover,
#body div.content div.sidebar ul li h4 a:hover {
	text-decoration: underline;
}
#body ul.blog li span,
#body div.content div.article span,
#body div.content div.sidebar ul li span {
	display: block;
	line-height: 30px;
}
#body div.content div.article {
	width: 570px;
}
#body div.content div.article img {
	display: block;
	margin: 0 0 9px;
	max-width: 100%;
	width: auto;
}
#body div.content div.article p {
	padding: 0 0 30px;
}
#body div.content div.sidebar {
	float: left;
	margin: 0 0 0 50px;
	width: 259px;
}
#body div.content div.sidebar ul {
	padding: 20px 0 0;
}
#body div.content div.sidebar ul li {
	border-top: 1px solid #88b4a8;
	float: none;
	margin: 0;
	padding: 18px 0 28px;
	width: auto;
}
#body div.content div.sidebar ul li:first-child {
	border: none;
	padding: 0 0 28px;
}
#body div.content div.sidebar ul li h4 {
	line-height: 30px;
	text-align: left;
}
#footer {
	margin: 0 auto;
	max-width: 960px;
	overflow: hidden;
	padding: 30px 0 60px;
}
#footer div {
	float: left;
	width: 500px;
}
#footer div span {
	color: #99fa99;
	display: block;
	font-size: 26px;
	line-height: 24px;
}
#footer div p {
	color: #b6d8cf;
	font-size: 12px;
	line-height: 30px;
}
#footer div#connect {
	float: right;
	overflow: hidden;
	width: auto;
}
#footer div#connect a {
	background: url(../images/icons.png) no-repeat;
	display: block;
	float: left;
	text-indent: -99999px;
}
#footer div#connect a#facebook {
	background-position: 0 0;
	height: 30px;
	width: 16px;
}
#footer div#connect a#twitter {
	background-position: 0 -30px;
	height: 30px;
	margin: 0 0 0 28px;
	width: 37px;
}
#footer div#connect a#googleplus {
	background-position: 0 -61px;
	height: 32px;
	margin: 0 0 0 19px;
	width: 32px;
}
#footer div#connect a#googleplus {
	background-position: 0 -61px;
	height: 32px;
	margin: 0 0 0 19px;
	width: 32px;
}
#footer div#connect a#pinterest {
	background-position: 0 -94px;
	height: 30px;
	margin: 0 0 0 23px;
	width: 30px;
}
	</style>
</head>
<body>
	<div id="header">
		<h1><a href="index.html">Student Information &amp; MarkList</a></h1>
		<ul id="navigation">
			<li class="current">
				<a href="index.html">Home</a>
			</li>
			<li>
				<a href="about.html">About</a>
			</li>
			<li>
				<a href="menu.htm">MarkList</a>
			</li>
			<li>
				<a href="index.htm">StudentList</a>
			</li>
			<li>
				<a href="cindex.htm">SubjectList</a>
			</li>
			<li>
				<a href="contact.html">Contact</a>
			</li>
			<li>
				<a href="blog.html">Blog</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<img src="resources/images/lady-in-yoga.jpg" alt="lady doing yoga" class="figure">
	</div>
	<div id="footer">
		<div>
			<span>123 St. City Location, Country | 987654321</span>
			<p>
				&copy; 2023 by Belle &amp; Carrie Rehabilitation Yoga. All rights reserved.
			</p>
		</div>
		<div id="connect">
			<a href="https://freewebsitetemplates.com/go/facebook/" id="facebook" target="_blank">Facebook</a>
			<a href="https://freewebsitetemplates.com/go/twitter/" id="twitter" target="_blank">Twitter</a>
			<a href="https://freewebsitetemplates.com/go/googleplus/" id="googleplus" target="_blank">Google&#43;</a>
			<a href="https://freewebsitetemplates.com/go/pinterest/" id="pinterest" target="_blank">Pinterest</a>
		</div>
	</div>
</body>
</html>