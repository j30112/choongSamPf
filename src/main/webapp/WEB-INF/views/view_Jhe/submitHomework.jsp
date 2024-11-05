<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>나는 과제 제출 (학생)</h2>
	<form action="/Jhe/submitHomework" method="post" id="submitHomework">
		<table>
			<tr>
				<th><input type="hidden" name="ASMT_NO" value="${upHomework.ASMT_NO}">
					강의명</th>
				<td>${upHomework.lctr_name}</td>
			</tr>
			<tr>
				<th>강사명</th>
				<td>${upHomework.user_name}</td>
			</tr>
			<tr>
				<th>과제명</th>
				<td>${upHomework.ASMT_NM}</td>
			</tr>
			<tr>
				<th>마감일</th>
				<td>${upHomework.SBMSN_END_YMD}</td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="text" name="addfile"></td>
			</tr>
		</table>
		<input type="submit" value="제출">
		<a href="../Jhe/studHomeworkList"><button type="button">취소</button></a>
	</form>
</body>
</html>