<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리 페이지</title>
</head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
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
<body>
<a href="/weather/WeatherAPI" role="button" class="btn btn-primary">날씨 위젯 추가</a>
<p>--------------------------------------------------------------------------</p>
<p>날씨 위젯 삭제</p>
	<c:forEach var="weather" items="${weatherlist}">
		<form action="/weather/delete" method="post">
			<button class="weatherBtn" type="submit">
				<div class="WeatherContainer">											
		            <img src="${weather.images}" alt="">						
		            <h3>${weather.temp}°C</h3>
		        </div>
		        <p>========================</p>								
		        <div class="weatherCity">
		           	<h2>${weather.city}</h2>
		        </div>
		     </button>
		     <input type="hidden" name="city" value="${weather.city}"/>
	    </form>
     </c:forEach>
<p>--------------------------------------------------------------------------</p>
<a href="/weather/index" role="button" class="btn btn-success">돌아가기</a>
</body>
</html>