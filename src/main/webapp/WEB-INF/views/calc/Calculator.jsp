<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: sans-serif;    
            width: 470px;
            height: 500px;  
            
        }
       button {
           color: black;
           font-size: 30px;
           outline: none;
       }
       input {
           background-color:  #FEEBB6;
           color: black;
           width: 95%;
           height: 60px;
           text-align: right;
           font-size: 40px;
           border: none;
           outline: none;
       }
       .container {
           display: grid;
           grid-template-columns: repeat(4, 1fr);
           background-color: #FEEBB6;
           color: black;
           padding: 10px;
           border-radius: 10px;
       }
       .result{
           grid-column: 1/4;
       }
       .zero {
           grid-column: 1/3;
       }
       .number {
           display: flex;
           justify-content: center;
           align-items: center;
           background-color: burlywood;
           margin: 3px;
           height: 60px;
           border-radius: 10px;
       }
       .operation {
           display: flex;
           justify-content: center;
           align-items: center;
           background-color: rgb(243, 138, 19);
           margin: 3px;
           height: 60px;
           border-radius: 10px;
       }
       .cancle {
           display: flex;
           justify-content: center;
           align-items: center;
           background-color: gray;
           margin: 3px;
           height: 60px;
           border-radius: 10px;
       }
    </style>
</head>
<body>
    <div class="container">
        <div class="result"><input type="text" class="show" value="0"></div> 
        <button class="cancle" data-Type="ac">C</button>
        <button class="number">7</button>
        <button class="number">8</button>
        <button class="number">9</button>
        <button class="operation" data-Type="operator">+</button>
        <button class="number">4</button>
        <button class="number">5</button>
        <button class="number">6</button>
        <button class="operation" data-Type="operator">-</button>
        <button class="number">1</button>
        <button class="number">2</button>
        <button class="number">3</button>
        <button class="operation" data-Type="operator">*</button>
        <button class="zero number">0</button>
        <button class="operation" data-Type="equals">=</button>
        <button class="operation" data-Type="operator">/</button>           
    </div>
    <script>
        const buttons = document.querySelectorAll("button");
        const input = document.querySelector(".show");

        let result = "";
        let operCheck = false;
        let numberCheck = true;
        let equalsCheck = true;

        function init() {
            buttons.forEach((button) => {
                button.addEventListener("click",() => {
                    switch (button.dataset.type) {
                        case "operator":
                            const oper = button.innerText;
                            operator(oper);
                            break;
                        case "ac":
                            clear();
                            break;
                        case "equals":
                            calc();
                            break;
                        default:
                            const number = button.innerText;
                            displayNumber(number);
                            break;
                    }
                });
            });
        }

        function displayNumber(number) {
            operCheck = true;
            const current = input.value;

            //계산 끝난 후 초기화
            if(equalsCheck) {
                //연산자 눌렀을 시 계산기 값만 초기화
                if(numberCheck) {
                    input.value = current === "0"?number:input.value+number;
                } else {
                    input.value = number;
                    numberCheck = true;
                } 
                result += number;
            } else {
                equalsCheck = true;
                input.value = number;
                result = number;
                console.log(result);
            }
        }

        function calc() {
            //지속적으로 계산기 값 누르는 거 확인
            if(input.value === "0") {
                clear();
            } else {
                //마지막이 연산자로 끝나는지 확인
                if(!operCheck) {
                    alert("값을 확인해주세요")
                } else {
                    if(equalsCheck) {
                        //기존 코드 - 보안 취약
                        //const final = eval(result);
                        //웹 취약 점 우회 함수 구현
                        const final = (new Function ('return '+result))();
                        input.value = final;
                        result="";
                        equalsCheck = false;
                        operCheck = false;
                    } else {
                        clear();
                    }
                }
            }
        }
        function operator(oper) {
            if(!operCheck) {
                alert("연산자 오류");
            } else {
                operCheck = false;
                result += oper;
                numberCheck = false;
            }
        }
        function clear() {
            input.value = 0;
            result = "";
            operCheck = false;
            equalsCheck = true;
        }
        init();

    </script>
</body>
</html>
