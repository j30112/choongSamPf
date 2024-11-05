<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>진행중인 강의 과제 리스트</title>
</head>
<body>
<form action="/Jhe/deleteHomework" method="post">
	<h2>나는 진행중인 내 강의 과제 리스트 (강사)</h2>
	<table id="homeworkList">
		<tr>
			<th>
				강의명</th>
			<th>강사명</th>
			<th>과제명</th>
			<th>진행</th>
			<th>시작일</th>
			<th>마감일</th>
			<th>제출</th>
			<th></th>
		</tr>
		<c:set var="previousName" value="" />
		<c:set var="previousAsmtNm" value="" />
		<c:set var="previousprofNm" value="" />
		<c:forEach var="homeworkList" items="${homeworkList}">
			<c:if test="${homeworkList.lctr_name != previousName}">
				<tr>
					<td>${homeworkList.lctr_name}</td>
					<td>${homeworkList.user_name}</td>
					<td><a href="/Jhe/updateHomework?ASMT_NO=${homeworkList.ASMT_NO}">${homeworkList.ASMT_NM}</a></td>
					<td>${homeworkList.asmtStatus}</td>
					<td>${homeworkList.SBMSN_BGNG_YMD}</td>
					<td>${homeworkList.SBMSN_END_YMD}</td>
					<td>${homeworkList.submissionRate}%</td>
					<td><input type="checkbox" name="delCheck" value="${homeworkList.ASMT_NO}"></td>
				</tr>
				<c:set var="previousName" value="${homeworkList.lctr_name}" />
				<c:set var="previousprofNm" value="${homeworkList.user_name}" />
				<c:set var="previousAsmtNm" value="${homeworkList.ASMT_NM}" />
			</c:if>
			<c:if test="${homeworkList.lctr_name == previousName
						&& homeworkList.user_name == previousprofNm
						&& homeworkList.ASMT_NM != previousAsmtNm}">
				<tr>
					<td></td>
					<td></td>
					<td><a href="/Jhe/updateHomework?ASMT_NO=${homeworkList.ASMT_NO}">${homeworkList.ASMT_NM}</a></td>
					<td>${homeworkList.asmtStatus}</td>
					<td>${homeworkList.SBMSN_BGNG_YMD}</td>
					<td>${homeworkList.SBMSN_END_YMD}</td>
					<td>${homeworkList.submissionRate}%</td>
					<td><input type="checkbox" name="delCheck" value="${homeworkList.ASMT_NO}"></td>
				</tr>
				<c:set var="previousAsmtNm" value="${homeworkList.ASMT_NM}" />
			</c:if>
		</c:forEach>
	</table>
	<a href="/Jhe/insertHomework"><button type="button">과제등록</button></a>
	<button type="submit">삭제</button>
</form>
</body>
</html>