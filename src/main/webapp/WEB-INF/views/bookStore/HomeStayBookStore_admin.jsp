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
            margin-top: 20px;
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
            height: 53px;
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
            font-size: 26px;
        }
        .book a, .order a , .back a{
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: bold;
        }
        .book a:hover, .order a:hover , .back a:hover{
            color: tomato;
        }
        
   </style>
</head>
<body>
	 <header class="homestay-header">     
        <div class="mainMenu-container">
            <nav class="mainMenu">
                <ul>   
                    <li class="allCategories"><i class="fas fa-bars"></i></li>
                    <li class="book"><a href="">책관리</a></li>
                    <li class="order"><a href="">주문관리</a></li>
                    <li class="back"><a href="">돌아가기</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <section>
    	<div class="global-banner">
            <div class="homestay search-container">                                
                <input class="search" type="text">
                <button class="search-button"><i class="fas fa-search"></i></button>             
            </div> 
    	</div>
    </section>
</body>
</html>