<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title> JSP 게시판 웹 사이트  </title>
</head>
<body>
    <%
        String userID = null;
        if (session.getAttribute("userID") != null) {
        	userID = (String) session.getAttribute("userID");
        }
    
    %>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" 
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>

			</button>
			<a class="navbar-brand" href="main.jsp"> S/W 프로젝트 준비</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		     <ul class="nav navbar-nav">
		        <li class= "active"><a href="main.jsp">메인</a><li>
		        <li><a href="bbs.jsp">게시판</a><li>
		     </ul>
		     <%
		         if(userID == null) {
 		     %>
		     <ul class="nav navbar-nav navbar-right">
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle"
		               data-toggle="dropdown" role="button" aria-haspopup="true"
		               aria-expanded="false">접속하기<span class="caret"></span></a>
		            <ul class="dropdown-menu">
		               <li class="active"><a href="login.jsp">로그인</a>
		               <li><a href="join.jsp">회원가입</a>
		            </ul>
		     </ul>
		     <% 
		         } else {
		      %>
		      <ul class="nav navbar-nav navbar-right">
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle"
		               data-toggle="dropdown" role="button" aria-haspopup="true"
		               aria-expanded="false">회원관리<span class="caret"></span></a>
		            <ul class="dropdown-menu">
		               <li><a href="logoutAction.jsp">로그아웃</a>
		            </ul>
		     </ul>
		      
		      
		      <% }
		      %>
		</div>
	</nav>
	<div class="container">
	    <div class="jumbotron">
	         <div class="container">
	              <h1>웹 사이트 소개</h1>
	              <p>이 웹 사이트는 부트스트랩으로 만든 jsp웹사이트 입니다. 최소한의 간단한 로직으로 만들었습니다. </p>
	             <P><a class= "btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a></P>
	         </div>
	    </div>
	
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>




</body>
</html>