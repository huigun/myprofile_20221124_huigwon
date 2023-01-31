<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HUIGWON'S PROFILE</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
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
							<form action="qupdateok" method="post" name="board_form">
							<input type="hidden" value="${dto.qnum }" name="qnum">
								<tr>
									<td><span class="content_text01">ID</span></td>
									<td><input class="input_type01" type="text" name="qid" readonly="readonly" value="${dto.qid }"></td>
								</tr>
								<tr>
									<td><span class="content_text01">NAME</span></td>
									<td><input class="input_type01" type="text" name="qname" readonly="readonly" value="${dto.qname }"></td>
								</tr>
								<tr>
									<td><span class="content_text01">TITLE</span></td>	
									<td><input class="textarea_type02" type="text" name="qtitle" value="${dto.qtitle }"></td>
								</tr>
								<tr>
									<td><span class="content_text01">QUESTION</span></td>	
									<td><textarea class="textarea_type01" name="qcontent">${dto.qcontent }</textarea></td>
								</tr>
								<tr>
									<td><span class="content_text01">E-MAIL</span></td>
									<td><input class="input_type01" type="text" name="qemail" readonly="readonly" value="${dto.qemail }"></td>
								</tr>
								<tr align="center">
									<td colspan="2">
										<input class="button_type01" type="button" value="OK" onclick="boardcheck()">&nbsp;&nbsp;
										<input class="button_type01" type="button" value="CANCLE" onclick="script:window.location='list'">
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