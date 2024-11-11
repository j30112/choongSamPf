<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/heStd.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
form#submitHomework table {

width: 1200px;
}





</style>
<body>
<div class="container">
<div class="contents">
	<h1>나는 과제 제출 (학생)</h1>

</div>

	<form action="/Jhe/submitHomework" method="post" id="submitHomework">
		<table>
			<tr>
				<th><input type="hidden" name="ASMT_NO" value="${upHomework.asmt_no}">
					강의명</th>
				<td>${upHomework.lctr_name}</td>
			</tr>
			<tr>
				<th>강사명</th>
				<td>${upHomework.prof_name}</td>
			</tr>
			<tr>
				<th>과제명</th>
				<td>${upHomework.asmt_nm}</td>
			</tr>
			<tr>
				<th>마감일</th>
				<td>${upHomework.sbmsn_end_ymd}</td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="text" name="addfile"></td>
			</tr>
			<tr>
				<th>제출</th>
				<td><input  class="submitBtn" type="submit" value="제출">
		<a href="../Jhe/studHomeworkList"><button  class="submitBtn" type="button">취소</button></a></td>
			</tr>
			
		</table>
		
	</form>




</div>
</body>
</html>