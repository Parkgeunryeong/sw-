<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" ,initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title> Jsp 게시판 웹사이트</title>
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
                 <a class="navbar-brand" href="main.jsp">jsp 게시판 웹사이트</a>
           </div>
           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
           <ul class="nav navbar-nav">
              <li class="active"><a href="main.jsp">메인</a></li>
              <li><a href="bbs.jsp">게시판</a></li>
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
		           </li>
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
		               <li><a href="logoutAction.jsp">로그아웃</a></li>
		            </ul>
		           </li>
		     </ul>
		     <%
		         }		     
		     %>
		     </div>
      </nav>
      <div class="container">
           <div class="jumbotron">
               <div class="container">
                   <h1>HELP HOSPITAL</h1>
                   <p>S/W프로젝트입니다.</p>
                   <p><a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a></p>
                   </div> 
           </div>
      </div>
      <div class="container">
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                     <li data-target="#myCarousel" data-side="0" class="active"></li>
                     <li data-target="#myCarousel" data-side="1" ></li>
                     <li data-target="#myCarousel" data-side="2" ></li>
                 </ol>
                 <div class="carousel-inner">
                     <div class="item active">
                         <img src="images/sky.jpg">
                     </div>
                     <div class="item">
                         <img src="images/sky.jpg">
                     </div>
                     <div class="item" >
                         <img src="images/sky.jpg">
                     </div>
                 </div>
                 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                 </a>
                 <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                 </a>
          </div>
      </div>
           
           
           
      
      <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
      <script src="js/bootstrap.js"></script>
</body>
</html>