<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="true"%>
<c:set var="loginId" value="${sessionScope.id}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'ID='+=loginId}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


  <title>내 안에 숨어있는 직업 찾기!</title>
  <link rel="icon" href="favicon.png">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
  <link rel="stylesheet" href="<c:url value='../css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='../css/results.css'/>">
  <script defer src="<c:url value='../js/share.js'/>"></script>
  <script type="module" defer src="<c:url value='../js/results.js'/>"></script>
</head>
<body>
<h2 class ="page-subtitle">
  내 직업은?
</h2>
<h1 class="page-title"></h1>
<img src=" " alt="" class="character">
<div class="result">
  <div class="box"></div>
  <div class="box"></div>
  <div class="box"></div>
  <div class="box"></div>
</div>
<div class="result">
  <h3>내가 직업을 갖는다면?</h3>
  <div class="jobs">
    <div class="job"></div>
    <div class="job"></div>
  </div>
</div>
<div class="btn btn-green btn-small share-or-copy">
  결과 공유하기
</div>
<a href="/ch4/mbti/mbti" class="btn btn-gray btn-small">
  다시 테스트하기
</a>
</body>
</html>