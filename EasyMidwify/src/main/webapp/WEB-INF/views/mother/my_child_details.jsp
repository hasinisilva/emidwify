<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.12.4.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <style>

		.bg-1 {
            color: #1a001a;
            margin-top: auto;
            margin-top: 1%;
            margin-bottom: auto;
            padding: 40px;
            margin-left:5% ;
            margin-right: 5%;
        }
        .bg-2 {
			color:black;
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
        .bg-4 {
            background-color: white;
            color: cornflowerblue;
            width: auto;
            height: auto;
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
            height: auto;
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
            letter-spacing: 2px;
            background-color: CornflowerBlue;
			width:auto;
			height:5%;
			box-shadow:0 -10px 10px -10px white  inset;

        }
        .navbar-nav li a{
            color: white  !important;

        }
        .navbar-nav  li a:hover {
            color: #adad85 !important;

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
            padding: 12px 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: lightgray;
        }


        .div-1 {
            margin-right: 20%;
            margin-left: 20%;
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            width: auto;

        }

        .jh{
            color: black;
            text-align: left;
            position: relative;
        }

    </style>

    <link rel="icon" type="image/gif/png" href="<c:url value="/resources/images/logo.png" />">

</head>
<h1 class="header" align="center">
<img src="<c:url value="/resources/images/logo.png" />" class="img-responsive" alt="logo">
</h1>
<!--Navigation bar-->
<nav class="navbar">
			
            <a class="navbar-brand" href="#">${child.childName}</a>
                 <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                         <li style="color: white"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </div>
</nav>



<div class="container-fluid bg-4 text-center">

    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home">Information</a></li>
        <li><a data-toggle="tab" href="#menu1">Vaccines</a></li>
        <li><a data-toggle="tab" href="#menu2">Graphs</a></li>
        <li><a data-toggle="tab" href="#menu3">Alerts</a></li>
        <li><a data-toggle="tab" href="#menu4">Clinic</a></li>
    </ul>

    <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
            <h3 class="jh">Information</h3>
            <br><br>
            <table class="table">
                <tr>
                    <td><label for="name">Name: </label></td>
                    <td><span id="name"> ${child.childName}</span></td>
                </tr>
                <tr>
                    <td><label for="weight">Birth weight: </label></td>
                    <td><span id="weight"> ${child.childBirthWeight} kg</span></td>
                </tr>
                <tr>
                    <td><label for="dod">Date of delivary: </label></td>
                    <td><span id="dod"> ${child.childDateofDelivary}</span></td>
                </tr>
                <tr>
                    <td><label for="regDate">Registered date: </label></td>
                    <td><span id="regDate"> ${child.childRegisteredDate}</span></td>
                </tr>
            </table>
        </div>

        <div id="menu1" class="tab-pane fade">
            <h3 class="jh">Given Vaccines</h3>
            <br><br>
            <table class="table">
                <tr>
                    <th>Date</th>
                    <th>Vaccine</th>
                    <th>Qty</th>
                </tr>
                <c:forEach items="${given_vacc}" var="vacc" varStatus="status">
                    <tr>
                        <td>${vacc.clinicDate}</td>
                        <td>${vacc.vaccineName}</td>
                        <td>${vacc.vaccineAmount}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <div id="menu2" class="tab-pane fade">

        </div>

        <div id="menu3" class="tab-pane fade">

        </div>

        <div id="menu4" class="tab-pane fade">
            <h3 class="jh">Clinic Details</h3>
            <br><br>
            <table class="table">
                <tr>
                    <th>Clinic Date</th>
                    <th>Updated Date</th>
                    <th>Age</th>
                    <th>Weight</th>
                </tr>
                <c:forEach items="${clinic}" var="cli" varStatus="status">
                    <tr>
                        <td>${cli.clinicDetails}</td>
                        <td>${cli.updatedDate}</td>
                        <td>${cli.age}</td>
                        <td>${cli.weight} kg</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</div>

<!-- footer -->
    <div class="container-fluid footer text-center">
		Copyright © 2016 Hashini Silva, all rights reserved. 
    </div>

</body>
</html>
