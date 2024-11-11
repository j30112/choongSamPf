<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" type="text/css" href="/css/heStd.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 출결 현황</title>
</head>
<body>

<div class="container">
		<div class="contents">
	<h1>내 출결 현황</h1>
		
		</div>
	<table>
		<tr>
			<th>차시</th>
			<th>출석 상태</th>
		</tr>
		<c:forEach var="studAtt" items="${studAttList}">
		<tr>
		 	<td>${studAtt.lctr_no}</td>
			<td>
				<c:choose>
					<c:when test="${studAtt.att_status == 5001}">출석</c:when>
					<c:when test="${studAtt.att_status == 5002}">지각</c:when>
					<c:when test="${studAtt.att_status == 5003}">결석</c:when>
				</c:choose>
			</td>
		</tr>
		</c:forEach>
	</table>




</div>
</body>
</html>