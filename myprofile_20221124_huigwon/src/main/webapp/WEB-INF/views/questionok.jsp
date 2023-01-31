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
							<h2>등록 완료</h2>
								<tr>
								<td><span class="content_text01">MEMBER ID</span></td>
								<td>${qid}</td>
								</tr>
								<tr>
								<td><span class="content_text01">MEMBER NAME</span></td>
								<td>${qname }</td>
								</tr>
								<tr>
								<td><span class="content_text01">TITLE</span></td>
								<td>${qtitle }</td>
								</tr>		
								<tr>
								<td><span class="content_text01">QUESTION</span></td>
								<td>${qcontent }</td>
								</tr>
								<tr>
								<td><span class="content_text01">E-MAIL</span></td>
								<td>${qemail }</td>
								</tr>	
								<tr>
									<td colspan="2" align="center">
									<input class="button_type01" type="button" value="LIST" onclick="script:window.location='list'">
									</td>
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