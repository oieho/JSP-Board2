<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="util.SHA256"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
String code = null;
if(request.getParameter("code") != null){
	code = request.getParameter("code");
}
UserDAO userDAO = new UserDAO();
String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID");
}
if(userID == null) { 
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 해주세요.');");
	script.println("location.href= 'userLogin.jsp' ");
	script.println("</script>");
	script.close();
	return;
}

String userEmail = userDAO.getUserEmail(userID);
boolean isRight = (new SHA256().getSHA256(userEmail).equals(code)) ? true : false;
if(isRight == true){
	userDAO.setUserEmailChecked(userID);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('인증에 성공했습니다.');");
	script.println("location.href= 'index.jsp'");
	script.println("</script>");
	script.close();
} else {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 코드입니다.');");
	script.println("location.href= 'index.jsp' ");
	script.println("</script>");
	script.close();
}

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="vieport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>강의평가 웹 사이트 Test</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp">강의평가 웹 사이트</a>
		<button class="navbar-toggler" style="button" data-toggle="collapse"
			data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">메인</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="dropdown"
					data-toggle="dropdown">회원 관리</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="userLogin.jsp">로그인</a> <a class="dropdown-item"
							href="userJoin.jsp">회원가입</a> <a class="dropdown-item" href="userLogout.jsp">로그아웃</a>
					</div></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="내용을 입력하세요." aria-label="search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
			</form>
		</div>
	</nav>
	
	<section class="container mt-3" style="max-width:560px;">
<div class="alert alert-success mt-4" role="alert">
이메일 주소 인증 메일이 전송되었습니다. 회원가입시 입력했던 이메일에 들어가셔서 인증해주세요.</div>
		
	</section>

	
	<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">
	Footer Area</footer>
	<script src="./js/jquery.min.js"></script>
	<script src="./js/pooper.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>