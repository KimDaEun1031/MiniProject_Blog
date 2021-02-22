<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
 <style>
       .weatherBtn {
           width: 250px;
           height: 300px;
           background-color: #FEEBB6;
           border: none;
           outline:none;
           border-radius: 40px;
           text-align: center;
           margin: 30px;
       }

       .weatherBtn:hover {
          background-color: #ffe9ae;
       }

       .WeatherContainer img {
           margin-top: 30px;
       }

       .WeatherContainer h3 {
          font-size: 25px;
          color: firebrick;
       }

       p {
           color: #FD9F28;
           font-size: 15px;
       }

      
     
    </style>
</head>
<body>
	<c:forEach var="weather" items="${weather}" begin="0" end="2">
		<button class="weatherBtn" >
			<div class="WeatherContainer">											
	            <img src="${weather.images}" alt="">						
	            <h3>${weather.temp}°C</h3>
	        </div>
	        <p>========================</p>								
	        <div class="weatherCity">
	           	<h2>${weather.city}</h2>	           	
	        </div>
	     </button>
	     
     </c:forEach>

</body>
</html>