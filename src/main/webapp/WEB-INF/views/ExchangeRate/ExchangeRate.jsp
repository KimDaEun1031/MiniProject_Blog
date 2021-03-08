<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>
	<h1>환율 정보</h1>
	<div class="exchange"></div>
    <script>
	    var Exra = "";
	    $(".exchange").empty();
	    var ExURL = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=1PfcLPdPxjmdiuE9npbCm9ijj7MDjr90&data=AP01";
	    $.ajax({
	        url: ExURL,
	        dataType: "json",
	        type: "GET",
	        async: "false",
	        success: function(rate) {
	          console.log(rate);
	        }
	
	    })
       

    </script>
</body>
</html>