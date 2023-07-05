<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'ID='+=loginId}"/>

<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<!--div lang="en"-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" /-->

    <style>
        body{
            margin:0;
        }
        a {
            color:black;
        }
        h1 {
            font-size:45px;
            text-align: center;
            border-bottom:2px solid black;
            margin:0;
            padding:20px;
        }
        ol{
            border-right:2px solid black;
            margin:0;
            padding:20px;
            width:100px;
        }
        #grid{
            display: grid;
            grid-template-columns: 150px 1fr;
        }
        #grid ol{
            padding-left:33px;
        }
        #grid #article{
            padding-left:25px;
        }
        @media(max-width:800px){
            #grid{
                display: block;
            }
            ol{
                border-right:none;
            }
            h1 {
                border-bottom:none;
            }
        }


        form {
            top: 450px;
            width:400px;
            height:600px;
            display : flex;
            flex-direction: column;
            align-items:center;
            position : absolute;
            left:50%;
            transform: translate(-50%, -50%) ;
            border: 1px solid black;
            border-radius: 10px;
        }
        .input-field {
            width: 300px;
            height: 40px;
            border : 1px solid black;
            border-radius:5px;
            padding: 0 10px;
            margin-bottom: 10px;
        }

        label {
            width:300px;
            height:30px;
            margin-top :4px;
        }
        button {
            background-color: black;
            color : white;
            width:300px;
            height:50px;
            font-size: 17px;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        .title {
            font-size : 50px;
            margin: 40px 0 30px 0;
        }
        .msg {
            height: 30px;
            text-align:center;
            font-size:16px;
            color:red;
            margin-bottom: 20px;
        }

        .sns-chk {
            margin-top : 5px;
        }
    </style>
</head>
<body>
    <h1><a href="<c:url value='/'/>">M PROJECT</a></h1>
    <div id="grid">
        <ol>
            <li><a href="<c:url value='/'/>"><h2>Home</h2></a></li>
            <li><a href="<c:url value='/board/list'/>"><h2>Board</h2></a></li>
            <li><a href="<c:url value='/login/login'/>"><h2>Login</h2></a></li>
            <li><a href="<c:url value='/register/add'/>"><h2>Sign in</h2></a></li>
            <li><a href="<c:url value='/mbti/mbti'/>"><h2>MBTI</h2></a></li>
        </ol>
    </div>
    <title>Register</title>
<!-- form action="<c:url value="/register/save"/>" method="POST" onsubmit="return formCheck(this)"-->
<form:form modelAttribute="user">
    <div class="title">Register</div>
    <div id="msg" class="msg"><form:errors path="id"/></div>
    <label for="">아이디</label>
    <input class="input-field" type="text" name="id" placeholder="5~12자리의 영대소문자와 숫자 조합">
    <label for="">비밀번호</label>
    <input class="input-field" type="text" name="pwd" placeholder="8~12자리의 영대소문자와 숫자 조합">
    <label for="">이름</label>
    <input class="input-field" type="text" name="name" placeholder="홍길동">
    <label for="">이메일</label>
    <input class="input-field" type="text" name="email" placeholder="abcd@abcd.com">
    <label for="">생일</label>
    <input class="input-field" type="text" name="birth" placeholder="2020-12-31">
    <div class="sns-chk">
        <label><input type="checkbox" name="sns" value="facebook"/>페이스북</label>
        <label><input type="checkbox" name="sns" value="kakaotalk"/>카카오톡</label>
        <label><input type="checkbox" name="sns" value="instagram"/>인스타그램</label>
    </div>
    <button>회원 가입</button>
</form:form>
<script>
    function formCheck(frm) {
        let msg ='';

        if(frm.id.value.length<3) {
            setMessage('id의 길이는 3이상이어야 합니다.', frm.id);
            return false;
        }
        return true;
    }
    function setMessage(msg, element){
        document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle"> ${'${msg}'}</i>`;
        if(element) {
            element.select();
        }
    }
    </script>
</body>
</html>