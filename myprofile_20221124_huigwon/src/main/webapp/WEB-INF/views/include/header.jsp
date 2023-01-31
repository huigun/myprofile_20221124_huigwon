<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/header.css">
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" >
		<tr class="headline01">
			<td width="5%" class="menu01"><a href="index" class="a1">HOME</a></td>
			<td width="60%" class="menu01">&nbsp;</td>
			<%
			String memberid = (String) session.getAttribute("memberid");
			String membername = (String) session.getAttribute("membername");
			
			if(memberid==null) {%>			
			<td width="5%" class="menu01"><a href="login" class="a1">LOGIN</td>
			<td width="5%" class="menu01"><a href="join" class="a1">JOIN</td>
			<%} else {%>
			<td width="10%" class="menu02">[${membername}]님 로그인중</td>
			<td width="5%" class="menu01"><a href="logout" class="a1">LOGOUT</a></td>
			<td width="5%" class="menu01"><a href="memberModify" class="a1">MODIFY</a></td>
			<%} %>		
			<td width="5%" class="menu01"><a href="profile" class="a1">PROFILE</a></td>
			<td width="7%" class="menu01"><a href="list" class="a1">QUESTION</a></td>
			<td width="7%" class="menu01"><a href="contact" class="a1">CONTACT</a></td>
		</tr>
		<tr class="headline02">
		<td>&nbsp;</td></tr>
	</table>
</body>
</html>