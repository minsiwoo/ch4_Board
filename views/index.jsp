<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>

<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'ID='+=loginId}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>M_PROJECT</title>
    <link rel="stylesheet" type="text/css" href="reset.css">
    <!--link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/-->
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
            width:100px;
            margin:0;
            padding:20px;
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
    </style>
</head>
<body>
<h1><a href="<c:url value='/'/>">M PROJECT</a></h1>
<div id="grid">
    <ol>
        <li><a href="<c:url value='/'/>"><h2>Home</h2></a></li>
        <li><a href="<c:url value='/board/list'/>"><h2>Board</h2></a></li>
        <li><a href="<c:url value='${loginOutLink}'/>"><h2>${loginOut}</h2></a></li>
        <li><a href="<c:url value='/register/add'/>"><h2>Sign in</h2></a></li>
        <li><a href="<c:url value='/mbti/mbti'/>"><h2>MBTI</h2></a></li>
    </ol>
    <div id="article">
        <h2>MBTI_PROJECT</h2>

            <br>MBTI stands for Myers-Briggs Type Indicator, which is a personality assessment tool that measures psychological preferences in how people perceive the world and make decisions.</br>
            <br>The MBTI identifies a person's preferences in four categories</br>
            <br>Extraversion (E) vs. Introversion (I): This category measures how people interact with the world.</br>
            <br>(E) Extraverts tend to focus on external experiences and are energized by social interactions vs. (I)introverts tend to focus on internal experiences and are energized by solitude and reflection.</br>
            <br>Sensing (S) vs. Intuition (N): This category measures how people perceive information.</br>
            <br>(S) Sensing individuals tend to rely on concrete, observable information, vs. (I) intuitive individuals tend to rely on patterns and abstract concepts.</br>
            <br>Thinking (T) vs. Feeling (F): This category measures how people make decisions.</br>
            <br>(T) Thinking individuals tend to rely on logical analysis and objective criteria, vs. (F) feeling individuals tend to rely on personal values and subjective considerations.</br>
            <br>Judging (J) vs. Perceiving (P): This category measures how people approach the outside world.</br>
            <br>(J) Judging individuals tend to prefer structure, organization, and planning, vs. (P) perceiving individuals tend to prefer flexibility, adaptability, and spontaneity.</br>
            <br>By taking the MBTI, individuals can gain a better understanding of their own preferences and how they interact with others.</br>
    </div>
</div>
</body>
</html>