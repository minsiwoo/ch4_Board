<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="true"%>
<c:set var="loginId" value="${sessionScope.id}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'ID='+=loginId}"/>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="reset.css">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Open Graph -->
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="내숨캐" />
    <meta property="og:title" content="내 안에 숨어있는 직업캐 찾기!" />
    <meta property="og:description" content="누구나 찰떡인 직업이 있어요! 내 안에 숨어있는 직업캐를 찾아보세요!" />
    <meta property="og:image" content="/images/thumbnail.jpg" />
    <meta property="og:url" content="https://prismatic-monstera-4c9d6a.netlify.app/" />

    <!-- Twitter Cards -->
    <meta property="twitter:card" content="summary" />
    <meta property="twitter:site" content="내숨캐" />
    <meta property="twitter:title" content="내 안에 숨어있는 직업캐 찾기!" />
    <meta property="twitter:description" content="누구나 찰떡인 직업이 있어요! 내 안에 숨어있는 직업캐를 찾아보세요!" />
    <meta property="twitter:image" content="/images/thumbnail.jpg" />
    <meta property="twitter:url" content="https://prismatic-monstera-4c9d6a.netlify.app/" />

    <title>내 안에 숨어있는 직업 찾기!</title>
    <link rel="icon" href="favicon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
    <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
    <link rel="stylesheet" href="<c:url value='../css/home.css'/>">
    <link rel="stylesheet" href="<c:url value='../css/common.css'/>">
    <script defer src="<c:url value='../js/share.js'/>"></script>
    <%--<!--script defer src="../resources/js/share.js"></script-->--%>
</head>
<body>
<h2 class="page-subtitle">
    M_PROJECT
</h2>
<h1 class="page-title">
    내 안에 숨어있는<br>
    직업 찾기!
</h1>
<img src="./" alt="" class="character">
<a href="./questions" class="btn btn-orange">
    직업 찾으로 가기!
</a>
<div class="btn btn-green btn-small share-or-copy">
    공유하기
</div>
<a href="/ch4/" class="btn btn-skyblue btn-small">
    홈으로 가기!
</a>
</body>
</html>