<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>
	img {
		width: 197px;
		height: 304px;
	}
</style>
</head>
<body>
<div class="book"></div>
<button>서재에 담기</button>
<script>
	const url = new URL(window.location.href);
	console.log(url);
	const urlParams = url.searchParams;
	console.log(urlParams);
	var isbn = urlParams.get('isbn');
	console.log(isbn)
	
	$.ajax({
		method:"GET",
		url: "https://dapi.kakao.com/v3/search/book?target=isbn",
		data : { query: isbn},
		headers: { 'Authorization': 'KakaoAK 31acda86a987939db8ad7335775751d7'}							
	})
	.done(function(msg) {
		$(".book").append("<img src='"+msg.documents[0].thumbnail+"'>")
		$(".book").append("<h1>"+msg.documents[0].title+"</h1>")
		$(".book").append("<p>"+msg.documents[0].contents+"</p>")
		$(".book").append("<span>"+msg.documents[0].isbn+"</span>")
		$(".book").append("<h5>"+msg.documents[0].datetime+"</h5>")
		$(".book").append("<h5>"+msg.documents[0].authors+"</h5>")
		$(".book").append("<h5>"+msg.documents[0].publisher+"</h5>")
		$(".book").append("<h5>"+msg.documents[0].translators+"</h5>")
		$(".book").append("<h5>"+msg.documents[0].price+"</h5>")
		$(".book").append("<h5>"+msg.documents[0].sale_price+"</h5>")
		$(".book").append("<strong>"+msg.documents[0].status+"</strong>")
		//$(".book").append("<strong>"+msg.documents[0].url+"</strong>")

		
		
	});
</script>
</body>
</html>