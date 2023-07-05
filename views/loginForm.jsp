<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'ID='+=loginId}"/>
<!DOCTYPE html>
<html>
<head>
  <!--link rel="stylesheet" type="text/css" href="reset.css"-->
  <meta charset="UTF-8">
  <title>M_PROJECT</title>
  <link rel="stylesheet" type="text/css" href="reset.css">
  <!--link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/-->
  <!--link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
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
      width:400px;
      height:500px;
      display : flex;
      flex-direction: column;
      align-items:center;
      position : absolute;
      top:50%;
      left:50%;
      transform: translate(-50%, -50%) ;
      border: 1px solid black;
      border-radius: 10px;
    }
    input[type='text'], input[type='password'] {
      width: 300px;
      height: 40px;
      border : 1px solid rgb(89,117,196);
      border-radius:5px;
      padding: 0 10px;
      margin-bottom: 10px;
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
    #title {
      font-size : 50px;
      margin: 40px 0 30px 0;
    }
    #msg {
      height: 30px;
      text-align:center;
      font-size:16px;
      color:red;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
<h1><a href="<c:url value='/'/>">M_PROJECT</a></h1>
<div id="grid">
  <ol>
    <li><a href="<c:url value='/'/>"><h2>Home</h2></a></li>
    <li><a href="<c:url value='/board/list'/>"><h2>Board</h2></a></li>
    <li><a href="<c:url value='${loginOutLink}'/>"><h2>${loginOut}</h2></a></li>
    <li><a href="<c:url value='/register/add'/>"><h2>Sign in</h2></a></li>
    <li><a href="<c:url value='/mbti/mbti'/>"><h2>MBTI</h2></a></li>
  </ol>
</div>
<form action="<c:url value="/login/login"/>" method="post" onsubmit="return formCheck(this);">
  <h3 id="title">Login</h3>
  <div id="msg">
    <c:if test="${not empty param.msg}">
      <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
    </c:if>
  </div>
  <input type="text" name="id" value="${cookie.id.value}" placeholder="이메일 입력" autofocus>
  <input type="password" name="pwd" placeholder="비밀번호">
  <input type="hidden" name="toURL" value="${param.toURL}">
  <button>로그인</button>
  <div>
    <label><input type="checkbox" name="rememberId" value="on" ${empty cookie.id.value ? "":"checked"}> 아이디 기억</label> |
    <a href="">비밀번호 찾기</a> |
    <a href="">회원가입</a>
  </div>
  <script>
    function formCheck(frm) {
      let msg ='';
      if(frm.id.value.length==0) {
        setMessage('id를 입력해주세요.', frm.id);
        return false;
      }
      if(frm.pwd.value.length==0) {
        setMessage('password를 입력해주세요.', frm.pwd);

      return true;
    }
    function setMessage(msg, element){
      document.getElementById("msg").innerHTML = ` ${'${msg}'}`;
      if(element) {
        element.select();
      }
    }
    }
  </script>
</form>
</body>
</html>