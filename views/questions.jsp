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
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/questions.css'/>">
    <script type="module" defer src="<c:url value='/js/questions.js'/>"></script>
</head>
<body>
<div class="progress">
    <div class="value"></div>
</div>
<div class="question-box">
    <div class="number"></div>
    <div class="question"></div>
    <div class="btn btn-gray choice choice1"></div>
    <div class="btn btn-gray choice choice2"></div>
</div>
</body>
</html>