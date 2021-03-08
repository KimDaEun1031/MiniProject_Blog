<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <style>
        * {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        /*global-menu 영역*/
        .homestay-container {
            background-color: rgb(248, 169, 169);
            margin-bottom: 20px;
        }
        .global-menu ul {
            display: flex;
            flex-flow: row-reverse wrap;           
        }
        .top {
            margin: 10px;          
        } 
        .top a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: bold;
        }
        .top a:hover {
            color: tomato;
        }
        /*search 영역*/
        .global-banner {
            margin-bottom: 20px;
        }
        .search-container{
            display: flex; 
            justify-content: center;           
        }
        .search {
            width: 500px;
            height: 50px;
            outline: none;
            background-color: rgb(248, 169, 169);
            border-color: mediumvioletred;
            border-style: double;
            color: rgb(255, 246, 246);
            font-size: 20px;
           
        }
        .search-button {
            width: 50px;
            height: 50px;
            outline: none;
            border-style: none;
            background-color: rgb(223, 120, 120);
        }
        .search-button:hover {
            background-color: rgb(211, 91, 91);
        }
        .fa-search {
            font-size: 20px;
            color: white;   
        }
        /*main-menu 영역*/
        .mainMenu-container {
            background-color: rgb(248, 169, 169);
        }
        .mainMenu ul{
            display: flex;
            flex-flow: row wrap; 
        }
        .mainMenu ul li {
            padding: 13px; 
            color: white;     
        }
        .mainMenu ul li:first-child {
            margin-right: 10px;
            margin-left: 10px;
        }
        .allCategories {
            background-color: rgb(223, 120, 120);           
        }
        .allCategories:hover {
            background-color: rgb(211, 91, 91);
        }
        .fa-bars {
            font-size: 24px;
        }
        .kor a, .foreign a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: bold;
        }
        .kor a:hover, .foreign a:hover {
            color: tomato;
        }
        /*slide 영역*/
        .slide {
            height: 300px;
            overflow: hidden;
            position: relative;
        }
        .slide ul {
            width: 400%;
            height: 100%;
            animation: slide 20s infinite;
        }
        .slide ul:after {
           content: "";
           display: block;
           clear: both;
        }
        .slide li {
            float: left;
            width: 25%;
            height: 100%;
        }
        .slide li:nth-child(1) {background: coral;}
        .slide li:nth-child(2) {background: blue;}
        .slide li:nth-child(3) {background: brown;}
        .slide li:nth-child(4) {background: chartreuse;}
        .slide input {display: none;}
        .slide .pos {
            position: absolute;
            bottom: 10px;
            left: 0;
            text-align: center;
            width: 100%;
        }
        .slide label {
            width: 10px;
            height: 10px;
            border: 2px solid #666;
            display: inline-block;
            vertical-align: middle;
            background: #fff;
            transition: 0.3s;
            border-radius: 50%;
            cursor: pointer;
        }
        /*슬라이드 조작*/
        #pos1:checked ~ ul {margin-left: 0%;}
        #pos2:checked ~ ul {margin-left:-100%;}
        #pos3:checked ~ ul {margin-left:-200%;}
        #pos4:checked ~ ul {margin-left:-300%;}

        #pos1:checked ~ .pos label:nth-child(1) {background: #666;}
        #pos2:checked ~ .pos label:nth-child(2) {background: #666;}
        #pos3:checked ~ .pos label:nth-child(3) {background: #666;}
        #pos4:checked ~ .pos label:nth-child(4) {background: #666;}

        /*자동 슬라이드*/
        @keyframes slide {
            0% {margin-left: 0;}
            10% {margin-left: 0;}
            25% {margin-left:-100%;}
            35% {margin-left:-100%;}
            50% {margin-left:-200%;}
            60% {margin-left:-200%;}
            75% {margin-left:-300%;}
            85% {margin-left:-300%;}
            100% {margin-left: 0;}
        }
    </style>
</head>
<body>
	  <header class="homestay-header">
        <div class="homestay-container">
            <nav class="global-menu">
                <ul>
                    <li class="top"><a href="/bookStore/HomeStayBookStore_admin">서점 관리</a></li>
                    <li class="top"><a href="">내 서재</a></li>
                </ul>
            </nav>
        </div>
        <div class="global-banner">
            <div class="homestay search-container">                
                <form class="homestay-search" action="" method="">
                    <input class="search" type="text">
                    <button class="search-button"><i class="fas fa-search"></i></button>
                </form>              
            </div>
        </div> 
        <div class="mainMenu-container">
            <nav class="mainMenu">
                <ul>   
                    <li class="allCategories"><i class="fas fa-bars"></i></li>
                    <li class="kor"><a href="">국내도서</a></li>
                    <li class="foreign"><a href="">외국도서</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <section class="main-slide">
        <div class="slide">
            <!--
            <input type="radio" name="pos" id="pos1" checked>
            <input type="radio" name="pos" id="pos2">
            <input type="radio" name="pos" id="pos3">
            <input type="radio" name="pos" id="pos4">-->
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <!--
            <p class="pos">
                <label for="pos1"></label>
                <label for="pos2"></label>
                <label for="pos3"></label>
                <label for="pos4"></label>
            </p>-->
        </div>
    </section>
    <section>
    	<div>
    	
    	</div>
    </section>
</body>
</html>