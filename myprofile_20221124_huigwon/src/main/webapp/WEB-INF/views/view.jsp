<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<table width="55%" height="500px" border="1" cellspacing="0" cellpadding="10" class="contentbox2">					
					<tr class="contentbox2">
						<td align="center" width="7%" height="20px"><span class="content_text01">글번호</span></td>
						<td width="55%"><span class="content_text02">${dto.qnum }</span></td>
						<td align="center" width="13%" height="20px"><span class="content_text01">글쓴이</span></td>
						<td><span class="content_text02">${dto.qname }</span></td>					
					</tr>	
					<tr class="contentbox2">
						<td align="center" width="20%" height="20px"><span class="content_text01">등록일</span></td>
						<td colspan="4"><span class="content_text02">${dto.qdate }</span></td>
					</tr>
					<tr class="contentbox2">
						<td align="center" height="20px"><span class="content_text01">제목</span></td>
						<td colspan="4"><span class="content_text02">${dto.qtitle }</span></td>
					</tr>
					<tr class="contentbox2">
						<td align="center"><span class="content_text01">내용</span></td>
						<td colspan="4"><span class="content_text02">${dto.qcontent }</span></td>
					</tr>
					</table>
					<table width="55%" border="0" cellspacing="0" cellpadding="10">
					<tr>
						<td colspan="4" align="right">
						<input class="button_type02" type="button" value="삭제하기" onclick="script:window.location='qdelete?qnum=${dto.qnum }'">
						<input class="button_type02" type="button" value="수정하기" onclick="script:window.location='qupdate?qnum=${dto.qnum }'">
						<input class="button_type02" type="button" value="목록으로" onclick="script:window.location='list'">
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