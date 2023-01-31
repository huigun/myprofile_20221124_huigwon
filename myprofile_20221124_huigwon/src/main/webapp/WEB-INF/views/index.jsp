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
	<table width="80%" height="100%" border="0" cellspacing="0" cellpadding="20" >
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
					<tr>
						<td class="titletd01"><span class="title03">J</span><span class="title04">AVA</span></td>					
						<td rowspan="6" class="titletd02"><img src="${pageContext.request.contextPath }/resources/img/moko.png"></td>
					</tr>
					<tr>
						<td class="titletd01"><span class="title03">J</span><span class="title04">SP</span></td>					
					</tr>
					<tr>
						<td class="titletd01"><span class="title03">S</span><span class="title04">PRINGBOOT</span></td>					
					</tr>
					<tr>
						<td class="titletd01"><span class="title03">J</span><span class="title04">AVASCRIPT</span></td>					
					</tr>
					<tr>
						<td class="titletd01"><span class="title03">H</span><span class="title04">TML5</span></td>					
					</tr>
					<tr>
						<td class="titletd01"><span class="title03">D</span><span class="title04">ATABASE</span></td>					
					</tr>
				</table>
				</center>
			</td>
		</tr>
	</table>
	</center>
	
	<footer>
	<%@ include file="include/footer.jsp" %>
	</footer>
</body>
</html>