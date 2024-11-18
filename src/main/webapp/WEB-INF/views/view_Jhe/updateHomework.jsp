<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../headerGreen.jsp" %>
<%@ include file="../myStudyHomeNav.jsp" %>
<link rel="stylesheet" type="text/css" href="/css/heStd.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
	textarea {
	padding: 10px;
    width: 190px;
    height: 85px;
	}
	#upButton {
	margin-left: 200px;
	}
	button {
	margin-top: 10px;
	}
</style>
<title>진행중인 강의 과제 수정</title>
</head>
<body>
	<div class="container">
	<div class="contents">
		<h1>과제 수정</h1>
	</div>
	<form action="/Jhe/updateHomework" method="post" id="updateHomework" enctype="multipart/form-data">
		<table>
			<tr>
				<th><input type="hidden" name="asmt_no" value="${upHomework.asmt_no}">
					강의명</th>
				<td>${upHomework.lctr_name}</td>
			</tr>
			<tr>
				<th>과제명</th>
				<td><input type="text" name="asmt_nm" value="${upHomework.asmt_nm}" style="width: 300px; text-align: center;" required></td>
			</tr>
			<tr>
				<th>과제 시작일</th>
				<td><input type="text" name="sbmsn_bgng_ymd" value="${upHomework.sbmsn_bgng_ymd}" style="width: 90px; text-align: center;" required></td>
			</tr>
			<tr>
				<th>과제 마감일</th>
				<td><input type="text" name="sbmsn_end_ymd" value="${upHomework.sbmsn_end_ymd}" style="width: 90px; text-align: center;" required></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td style="padding-left: 80px;">
					<c:if test="${not empty upHomework.file_group}">
						<a href="/api/files/${upHomework.file_group}/1">${upHomework.file_nm}</a>
						<c:if test="${upHomework.file_group != 0}"><input type="checkbox" name="deleteFile" value="true"> 삭제</c:if></c:if>
					<input type="file" name="file" accept="application/pdf, image/*, .doc, .docx, .txt">
					<input type="hidden" name="file_group" value="${upHomework.file_group}"></td>
			</tr>
			<tr>
				<th>과제 내용</th>
				<td><textarea name="asmt_cn">${upHomework.asmt_cn}</textarea>
				<input type="hidden" name="lctr_id" value="${upHomework.lctr_id}"></td>
			</tr>
		</table>
			<button type="submit" id="upButton">수정</button>
			<a href="../Jhe/profHomeworkList?lctr_id=${upHomework.lctr_id}"><button type="button">취소</button></a>
	</form>
	</div>
</body>
</html>