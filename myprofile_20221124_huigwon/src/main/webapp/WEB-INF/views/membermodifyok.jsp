<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HUIGWON'S PROFILE</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
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
							<h2>정보 수정 완료</h2>
								<tr>
								<td><span class="content_text01">MEMBER ID</span></td>
								<td>${dto.mid }</td>
								</tr>
								<tr>
								<td><span class="content_text01">MEMBER PW</span></td>
								<td>${dto.mpw }</td>
								</tr>		
								<tr>
								<td><span class="content_text01">NAME</span></td>
								<td>${dto.mname }</td>
								</tr>
								<tr>
								<td><span class="content_text01">E-MAIL</span></td>
								<td>${dto.memail }</td>
								</tr>								
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