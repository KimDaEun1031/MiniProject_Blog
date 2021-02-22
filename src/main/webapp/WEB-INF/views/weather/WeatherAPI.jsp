<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>위젯 추가 버튼 누른 후</title>
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
        <input type="text" id="searchCityVal"/>
        <button id="searchCity">도시 검색</button>
        <form action="/weather/insert" method="post">
	        <div class="test"></div>       
        </form>

       
        
        <script>
            $(document).ready(function(){
                $("#searchCity").click(function(){
                    
                    var CityVal = $('#searchCityVal').val();
                    if(CityVal=="서울"){
                        var CityVal="Seoul";
                    }
                    $(".test").empty();								
                    var weather="";
                    
                    if($('#searchCityVal').val()=="") {
                        alert("검색을 입력해주세요.");
                    }
                    
                    var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+CityVal+"&units=metric"+"&appid="+"bea3c0e7ae728728d9d42ee97bcb873e";
                    $.ajax({
                        url: apiURI,
                        dataType: "json",
                        type: "GET",
                        async: "false",
                        success: function(resp) {					
                            var imgURL = "/resources/img/sun.png";
                            if(resp.weather[0].main==("Clouds")) {
                                imgURL = "/resources/img/cloud.png";
                            } else if ((resp.weather[0].main==("Mist")) || (resp.weather[0].main==("Fog"))) {
                                imgURL = "/resources/img/mist.png";
                            } else if (resp.weather[0].main==("Snow")) {
                                imgURL = "/resources/img/snow.png";
                            } else if (resp.weather[0].main==("Rain")) {
                                imgURL = "/resources/img/rain.png";
                            } else if (resp.weather[0].main==("Drizzle")) {
                                imgURL = "/resources/img/drizzle.png";
                            } else if (resp.weather[0].main==("Thunderstorm")) {
                                imgURL = "/resources/img/storm.png";
                            } 
                            var cityName = resp.name;
                            if(cityName=="Seoul") {
                                cityName="서울";
                            }
                            
                            weather += "<button class='weatherBtn' type='submit'><div class='WeatherContainer'>";												
                            weather += "<img src='" + imgURL + "' alt=''>";							
                            weather += "<h3>"+Math.round(resp.main.temp)+"°C</h3></div>";	
                            weather += "<p>========================</p>";										
                            weather += "<div class='weatherCity'>";
                            weather += "<h2>"+ cityName +"</h2>";
                            weather += "</div></button>";
                            weather += "<input type='hidden' name='temp' value='"+Math.round(resp.main.temp)+"' readonly/>"
                            weather += "<input type='hidden' name='city' value='"+resp.name+"' readonly/>"
                            weather += "<input type='hidden' name='images' value='"+imgURL+"' readonly/>"
                            weather += "<input type='hidden' name='weather_main' value='"+resp.weather[0].main+"' readonly/>"
                            weather += "<input type='hidden' name='weather_des' value='"+resp.weather[0].description+"' readonly/>"
                            weather += "<input type='hidden' name='wind' value='"+Math.round(resp.wind.speed)+"' readonly/>"
                            weather += "<input type='hidden' name='country' value='"+resp.sys.country+"' readonly/>"
                            weather += "<input type='hidden' name='humidity' value='"+resp.main.humidity+"' readonly/>"
                            $(".test").append(weather);
                                                    
				           
                        }
                    })
                    
                })
            })
            
                
        </script>
    </body>
    </html>