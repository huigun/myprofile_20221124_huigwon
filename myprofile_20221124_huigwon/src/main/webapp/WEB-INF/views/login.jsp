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
						<center>
						<table border="0" cellspacing="0" cellpadding="10">
							<form action="loginok" method="post">
								<tr>
								<td><span class="content_text01">MEMBER ID</span></td>
								<td><input class="input_type01" type="text" name="id"></td>
								</tr>
								<tr>
								<td><span class="content_text01">MEMBER PW</span></td>
								<td><input class="input_type01" type="password" name="pw"></td>
								</tr>
								<tr align="center">
									<td colspan="2">
										<input class="button_type01" type="submit" value="LOGIN">
										<input class="button_type01" type="button" value="JOIN" onclick="script:window.location='join'">
										<input class="button_type01" type="button" value="CANCLE" onclick="script:window.location='index'">
									</td>
								</tr>
							</form>
						</table>
						</center>
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