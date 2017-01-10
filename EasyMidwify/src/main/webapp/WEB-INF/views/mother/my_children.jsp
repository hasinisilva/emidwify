<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- c can request a url resource -->
<%@ page session="false" %>
<%@ page import="java.sql.ResultSet" %>
<%ResultSet resultset =null;%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"><!-- tell c to take the resource of this url -->
    <link rel="icon" type="image/gif/png" href="<c:url value="/resources/images/logo.png" />">
    <script src="<c:url value="/resources/js/jquery-1.12.4.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    
    <style>
		.mySlides {display:none;}
		
        .bg-1 {
            color: #1a001a;
            background-color: white;
            font-family: "Lucida Console", Monaco, monospace;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 40px;
            margin-left:5% ;
            margin-right: 5%;
        }
        .bg-2 {
            color: cornflowerblue;
            background-color: white;
            width: auto;
            height: auto;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 40px;
            margin-left:5% ;
            margin-right: 5%;

        }
        .bg-3 {
            background-color: #ffffff;
            color: #555555;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 40px;
            margin-left:5% ;
            margin-right: 5%;
        }

        body{
            background-color: #555555;
        }
        h2{
            width: auto;
            height: 10px;
            background-clip: border-box;
            margin-top: auto;
            margin-bottom: auto;
            margin-left:5% ;
            margin-right: 5%;
        }
        h5{
            font-size: medium;
            font-family: Arial;
            font-weight: bold;
            letter-spacing: 2px;
            color: dodgerblue;
            width: auto;
            height: 100%;
            margin-top: auto;
            margin-bottom: auto;
            margin-left:5% ;
            margin-right: 5%;
        }


        .container-fluid {
            padding-top: 70px;
            padding-bottom: 100px;
        }

        .navbar {
            padding: 10px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            margin-left:5% ;
            margin-right: 5%;
            font-size: 12px;
            font-family: "Lucida Console", Monaco, monospace;
            letter-spacing: 2px;
            background-color: CornflowerBlue;
            width:auto;
            height:5%;
            box-shadow:0 -10px 10px -10px white  inset;

        }
        .navbar-nav li a{
            color: white  !important;
            padding: 9px;

        }
        .navbar-nav  li a:hover {
            color: CornflowerBlue !important;
            padding: 9px;

        }
        .header{
            align-self: center;
            color: black;
            background-color: white;
            width: auto;
            height: auto;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 40px;
            margin-left:5% ;
            margin-right: 5%;

        }

        .footer{

            background-color: cornflowerblue;
            width: auto;
            height: 10%;
            margin-top: auto;
            margin-bottom: auto;
            padding: 40px;
            margin-left:5% ;
            margin-right: 5%;
        }

        .image{
            width: 100%;
            height: 100%;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 40px;

        }
        p {
            background-color: white;
            color: darkslategrey;
            width: auto;
            height: 100%;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 40px;
            margin-left:5% ;
            margin-right: 5%;
        }
        p.ex {
            border: 1px solid black;
            margin-top: auto;
            margin-bottom: auto;
            margin-right: auto;
            margin-left: auto;
            padding: 10%;
            width: 1000px ;
        }

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 8px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }

        input[type=submit]:hover {
            background-color: lightgray;
        }

        .div_box {
            margin-right: 20%;
            margin-left: 20%;
            border-radius: 5px;
            background-color: white;
            padding: 20px;
            width: auto;

        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            width: 100%;
        }
        video{
        	color: #1a001a;
            background-color: white;
            font-family: "lucida console", monaco, monospace;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 0px;
            margin-left:auto;
            margin-right: auto;
            height: auto;
            width: 100%;
           
  			
        	
        }
    </style>

</head>
<h1 class="header" align="center">
<img src="<c:url value="/resources/images/logo.png" />" class="img-responsive" alt="logo">
</h1>
<!--Navigation bar-->
<nav class="navbar">

        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href='/web/mother/my_children'> Home </a></li>  <!-- #value must given the link -->
                <li><a href='/web/mother/my_child_details'> View My Child </a></li>  <!-- #value must given the link -->
                <li><a href="#view_me"> View Me </a></li>  <!-- #value must given the link -->
                <li><a href="/web/mother/health_alert"> Check Alerts </a></li>  <!-- #value must given the link -->
                <li><a href="#send_message"> Send Message </a></li>  <!-- #value must given the link -->
                <li style="float: right"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li> <!-- #value must given the link -->

            </ul>
        </div>

</nav>

<body>

<!-- video banner  -->
<div class="container bg-2 text-center">
<div class="video text-center" >

  <video autoplay loop poster="<c:url value="/resources/images/banner2.jpg" />" id="bgvid" controls>
    <source src="<c:url value="/resources/video/lovemom.mp4" />" type="video/mp4">
    <source src="<c:url value="/resources/video/lovemom.webm" />" type="video/webm">
  </video>

</div>
</div>

<!-- ModelMap -->
<div class="container-fluid bg-2 text-center">
	<form:form method="POST" action="/mother/my_child_details/show" commandName="child">
		<div class="div_box">
			<form:select path="childId">
                <form:option value="" label="--SELECT--" />
                <form:options items="${children}" itemValue="childId" itemLabel="childName" />
            </form:select>

            <br>
	        	
	    <div align ="justify">
	    	<button type="submit" class="btn btn-success active">View Details</button>
	    </div>
	    	</div>
	</form:form> 
</div>

<!-- footer -->
    <div class="container-fluid footer text-center">
		Copyright � 2016 Hashini Silva, all rights reserved. 
    </div>

</body>
