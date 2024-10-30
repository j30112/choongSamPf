<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<style>
	#listBody{
		width: 1560px;
		height: 100%;
		background-color: #F1F1F1;
		float: right;
	}
	
	.lectureName {
		width: 1560px;
		height: 119px;
		text-align: center;
		font-size: 45px;
	}
	
	.teachName {
		font-size: 30px;
		color: #D9D9D9;
	}
	
	.list {
		width: 1400px;
		height: 203px;
		background-color: white;
		margin-bottom: 11px;
	}
	
	#thumbnail {
		width: 328px;
		height: 191px;
		margin-left: 5px;
	}
	
	.vdoInfor {
		width: 566px;
	}
	
	.button {
		width: 240px;
		height: 86px;
	}
	
</style>

<body>

	<div id="listBody">
		<div class="infor">
			<div id="lectureName">
				${lectName }
			</div>
			<div id="teachName">
				${teacherName }
			</div>
		</div>
		<div class="notice">
			
		</div>
	
		<c:forEach var="conts" items="${contentList}">
			<div class="list">
				<img id="thumbnail" alt="��Ʃ�� �����" src="https://img.youtube.com/vi/${conts.vdo_url_addr }/default.jpg">
				
				<div class="vdoInfor">
					<div class="time">
						<div id="chashi">${conts.lctr_no }</div>
						<div id="gigan"></div>
					</div>
					
					<div id="name">
						${conts.lctr_no }
					</div>
					
					<div id="jindo">
						<meter min="0" max="" value=""></meter>
					</div>
					
					<div class="button">
						<div id="state"></div>
						<div id="start">�н� ����</div>
					</div>
					
				</div>
			</div>
		</c:forEach>
	</div>
	

	
	
</body>
</html>