<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body{
            margin: 0;
            padding: 0;
        }

        .header__{
            display: block;
            width: 1920px;
            background-color:white;
            height: 70px;
            font-size: 20px;
            color: black;
            position: absolute;
        }

        .header__color{
            margin: 0;
            padding: 0;
            background-color: #00664F;
            width: 1920px;
            height: 28px;
        }
        
        .header__nav{
            display: flex;
            justify-content: space-between;;
            align-items: center;
            padding: 0 50px;
            font-weight: bold;
            height: 42px;
            border-bottom: 0.1px solid rgb(186, 186, 186);
        }


        .header__navBar a {
            text-decoration: none;
            color: black;
            width: 100px;
            margin: 0 125px;

        }
       

    </style>
</head>
<body>
    <div class="header__">
        <div class="header__color"></div>
        <div class="header__nav">
        <div class="header__logo">로고</div>
        <div class="header__navBar">
            <a href="#">이건</a>
            <a href="#">헤더</a>
            <a href="#">입니다</a>
            <a href="#">커뮤니티</a>
        </div>
            <div class="heder_login">로그인</div>
        </div>
    </div>
</body>
</html>