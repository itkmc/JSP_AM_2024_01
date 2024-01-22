<%@ page import="java.util.Map"%>
<%@ page import="com.KoreaIT.java.Jsp_AM.util.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 삭제</title>
</head>
<body>

	<h2>게시물 삭제</h2>

	<div>
		번호 :
		<%=articleRow.get("id")%></div>
	<%
	if (articleRow.get("id") == null) {
	%>
	<div>없는 게시물입니다</div>
	<%
	}
	%>
	<div>
		<%
		DBUtil.delete(conn, sql);
		%>
	</div>

	<div>
		<a style="color: green" href="list">리스트로 돌아가기</a>
	</div>

</body>
</html>