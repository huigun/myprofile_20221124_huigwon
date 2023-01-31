<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HUIGWON'S PROFILE</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/content.css">
</head>
<body>
<%@ include file="include/header.jsp"%>
	<%String sessionId = (String) session.getAttribute("sessionId"); %>
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
				<table width="70%" border="1" cellspacing="0" cellpadding="10" class="contentbox2">					
					<tr >
						<td align="center" width="7%"><span class="content_text01">번호</span></td>		
						<td align="center" width="60%"><span class="content_text01">질문</span></td>
						<td align="center" width="13%"><span class="content_text01">글쓴이</span></td>
						<td align="center" width="20%"><span class="content_text01">등록일</span></td>
					</tr>
					<c:forEach items="${dto }" var="qbdto">
					<tr>
						<td class="qtext" align="center">${qbdto.qnum }</td>
						<td class="qtext"><a href="view?qnum=${qbdto.qnum }" class="a2">
						<c:choose>
						<c:when test="${fn:length(qbdto.qtitle)>15}">
							<c:out value="${fn:substring(qbdto.qtitle,0,20)}"></c:out>...
						</c:when>
						<c:otherwise>
							<c:out value="${qbdto.qtitle}"></c:out>
						</c:otherwise>
						
						</c:choose>
						</a></td>
					<!-- <td class="qtext"><a href="view?qnum=${qbdto.qnum }" class="a2">${qbdto.qtitle }</a></td> -->
						
						<td class="qtext" align="center">${qbdto.qname }</td>
						<td class="qtext">${qbdto.qdate }</td>
					</tr>
					</c:forEach>
					</table align="right">	
					<br>
					<table border="0" width="70%">	
					<tr class="page">
					<c:if test="${pagepage>1 }">
          				<a class="a1" href="list?pagepage=${pagepage-1}&pagesu=${firstgl-1 }">◀ 이전  </a>
 			        </c:if>
         	          <c:if test="${page>5 }">
			           <c:forEach begin="${firstgl }" end="${lastgl }" var="pagesu">
			          	 <c:if test="${checkpage>=pagesu}">
			          	 <c:if test="${pagesu<=page}">
			           <a class="a1" href="list?pagesu=${pagesu}&pagepage=${pagepage}">${pagesu }  </a>	          		      		    
		       		    </c:if></c:if></c:forEach>
		       		  <c:if test="${pagepage<=ppsu}">
		       		   <a class="a1" href="list?pagepage=${pagepage+1}&pagesu=${lastgl+1 }">다음 ▶</a>  
		       		   </c:if>         
		         	  </c:if>
		         	  
		         	  <c:if test="${page<=5 }">
					  <c:forEach begin="1" end="${page}" var="pagesu">
			           <a class="a1" href="list?pagesu=${pagesu}">${pagesu }  </a>
			          </c:forEach>
					  </c:if>
		  			</tr>
					<tr>
						<td align="right">
						<td>pagesu = ${pagesu }</td>
						<td>page = ${page }</td>
						<input class="button_type01" type="button" value="질문하기" onclick="script:window.location='question'">
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