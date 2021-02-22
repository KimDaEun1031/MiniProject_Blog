select * from weather_info;

delete from WEATHER_INFO where temp = 4;

insert into WEATHER_INFO values(4, 67,'맑음','구름 조금 맑음','/resources/img/sun.png',2,'KR','Seoul');
insert into WEATHER_INFO(temp,weather_main,images,city) values(4, '맑음','/resources/img/sun.png','Busan');