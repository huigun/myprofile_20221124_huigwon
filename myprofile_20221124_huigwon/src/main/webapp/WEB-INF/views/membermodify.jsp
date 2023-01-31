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
							<form action="memberModifyOk" method="post" name="join_form">
								<tr>
								<td><span class="content_text01">MEMBER ID</span></td>
								<td><input class="input_type01" type="text" name="mid" value="${dto.mid }" readonly="readonly"></td>
								</tr>
								<tr>
								<td><span class="content_text01">MEMBER PW</span></td>
								<td><input class="input_type01" type="password" name="mpw"></td>
								</tr>
								<tr>
								<td><span class="content_text01">PW CHECK</span></td>
								<td><input class="input_type01" type="password" name="mpw_check"></td>
								</tr>
								<tr>
								<td><span class="content_text01">NAME</span></td>
								<td><input class="input_type01" type="text" name="mname" value="${dto.mname }"></td>
								</tr>
								<tr>
								<td><span class="content_text01">E-MAIL</span></td>
								<td><input class="input_type01" type="text" name="memail" value="${dto.memail }"></td>
								</tr>
								<tr align="center">
									<td colspan="2">
										<input class="button_type01" type="button" value="MODIFY OK" onclick="joinCheck()">&nbsp;&nbsp;
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