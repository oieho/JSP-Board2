<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% 
request.setCharacterEncoding("UTF-8");
String userID = null;
String userPassword = null;
if(request.getParameter("userID") != null){
	userID = (String) request.getParameter("userID");
}
if(request.getParameter("userPassword") != null){
	userPassword = (String) request.getParameter("userPassword");
}
if(userID == null || userPassword == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('�Է��� �� �� ������ �ֽ��ϴ�.')");
	script.println("history.back();");
	script.println("</script>");
	script.close();
	return;
}
UserDAO userDAO = new UserDAO();
int result = userDAO.join(userID, userPassword);
if(result == 1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('ȸ�����Կ� �����߽��ϴ�.')");
	script.println("location.href ='index.jsp';");
	script.println("</script>");
	script.close();
	return;
}
%>