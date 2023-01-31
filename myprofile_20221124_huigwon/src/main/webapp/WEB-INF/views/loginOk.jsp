<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HUIGWON'S PROFILE</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/content.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
	<table width="80%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox">
				<span class="title01">HUIGWON'S PROFILE</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">반갑습니다.</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="70%" border="0" cellspacing="0" cellpadding="10" class="contentbox2">
					<tr class="contentbox">
						<td class="content">
							<% 
							int idcheck = Integer.parseInt(request.getAttribute("idcheck").toString());
							if(idcheck==0) {
							%>
							<script type="text/javascript">
								alert("아이디를 다시 확인해주세요.")
								history.go(-1)
							</script>
							<%} else if(idcheck==2) {%>
							<script type="text/javascript">
								alert("비밀번호를 다시 확인해주세요.")
								history.go(-1)
								</script>
							<%} else if(idcheck==1) {%>
								${memberid}님 로그인 하셨습니다. 환영합니다.<br><br>
								<a href="index">메인으로 가기</a>
							<%}%>
							
						</td>					
					</tr>					
				</table>
				</center>
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>