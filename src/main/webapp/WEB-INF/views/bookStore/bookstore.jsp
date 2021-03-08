<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서점 메인 화면</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style type="text/css">
	
	.book-container {
	 	display: flex;
	 	flex-wrap: wrap;
	 	margin: 10px;
	 	
	}
	.book-info {
		border: 1px solid black;
		margin: 10px;
		text-align: center;
		width : 150px;
	 	overflow: hidden;
		text-overflow: ellipsis;
		white-space  : nowrap;
		display: block;
		padding: 10px;
	}
	
	

</style>
</head>
<body>
	<h1>책 제목을 검색해주세요</h1>
	<input type="text" id="bookName"/>
	<button id="search">검색</button>
	<select id="sort">
		<option value="accuracy">정확도순</option>
		<option value="latest">발간일순</option>
	</select>
	<div class="total"></div>
	<form action="" method="get" id="form">
		
		<input type="hidden" name="isbn" class="isbn"/>
		<div class="book-container">
			
		</div>
	</form>
	
	<script>
		$("input").empty();
		$(function(){
			$("#search").click(function(){
				$(".book-container").empty();
				
				//var formtest  = new Array();
				var actionForm = $("#form");

				$.ajax({
					method:"GET",
					url: "https://dapi.kakao.com/v3/search/book?target=title,isbn,publisher,person",
					data : { query: $("#bookName").val(), sort: $("#sort").val(), page: 50, size: 50},
					headers: { 'Authorization': 'KakaoAK 31acda86a987939db8ad7335775751d7'}							
				})
				
				.done(function(msg) {
					console.log(msg.meta.total_count)
					for(var i=0; i< 10; i++) {
						var isbn = msg.documents[i].isbn;
						console.log(isbn);
						var bookIsbn = isbn.split(" ");
						//console.log("isbn10 : "+bookIsbn[0]);
						//console.log(bookIsbn[1]);
						//$(".total").append("<h3>"+msg.meta[i].total_count+"</h3>")
						$(".book-container").append("<div class='book-info'><img class='bookimg' src='" + msg.documents[i].thumbnail + "' alt='이미지가 존재하지 않습니다.'><a href='"+bookIsbn[0]+"' class='mtitle'><br><strong>"
								+ msg.documents[i].title
								+ "</strong><p>"
								+ bookIsbn[0]
								+ "</p><p>"
								+ msg.documents[i].publisher
								+ "</p><a/></div>");

						
						const tset = $(".isbn").val(bookIsbn[0]);
						console.log($(".isbn").val());
						
						
					}
					$(".mtitle").click(function(e) {
						e.preventDefault();	
						
						actionForm.find(".isbn").val($(this).attr("href"));
						
						actionForm.attr("action","chooseBook");
						actionForm.submit();
					});
					
										
				});
			})
		});
	</script>
</body>
</html>