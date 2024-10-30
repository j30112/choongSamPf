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
	
	.form {
		width: 1360px;
		height: auto;
		background-color: white;
		margin: 0 auto;
	}
	
	#inserts {
		padding: 50px;
	}
	
	.chapter .file{
		background-color: white;
		border: 1px, black, solid;
	}
	
</style>

<script type="text/javascript">
	
	function plusChapter() {
		// ���ο� ���� �Է� �ʵ带 ����� �߰��մϴ�.
		var chapterDiv = document.createElement("div");
		chapterDiv.className = "file";
		chapterDiv.innerHTML = `
			<div class="chapterTime">
				<label class="text">é�ͽð� �Է�</label>
				<input type="time" name="chapterTime">
			</div>
			<div class="chapterTitle">
				<label class="text">é�� ���� �Է�</label>
				<input type="text" name="chapterTitle">
			</div>`;

		document.getElementById("inserts").appendChild(chapterDiv);
	}
</script>

<body>

	<div id="listBody">
		<form action="/contsUpload" class="form">
			<div id="inserts">
				<div class="oneLine">
					<label id="text">���� ���� �Է�</label>
					<input type="text" placeholder="���� ������ �Է����ּ���" name="title">
				</div>
				
				<div class="oneLine">
					<label id="text">���� �Է�</label>
					<input type="number" name="chashi">
				</div>
				
				<div class="twoLine">
					<label class="text">�⼮ ���� �Ⱓ ����</label>
					<input type="date" name="minDate">~<input type="date" name="maxDate">
				</div>
				
				<div class="twoLine">
					<label class="text">��Ʃ�� ID</label>
					<input type="text" name="youtubeId">
					<div>
						<button type="button" onclick="videoChk()">���� Ȯ��</button>
					</div>
				</div>
				
				<div class="video">
					
				</div>
				
				<div class="chapter">
					<div class="butt"><button type="button" onclick="plusChapter()">é���߰�</button></div>
					<div class="chapterTime">
						<label class="text">é�ͽð� �Է�</label>
						<input type="time" name="chapterTime">
					</div>
					<div class="chapterTitle">
						<label class="text">é�� ���� �Է�</label>
						<input type="text" name="chapterTitle">
					</div>
				</div>
				
				<div class="file">
					<div class="butt"><button type="button" onclick="plusFile()">�����߰�</button></div>
					<label class="text">÷������</label>
					<input type="file" name="file1">
				</div>
				<div class="file">
					<div class="butt"><button type="button" onclick="plusFile()">�����߰�</button></div>
					<label class="text">÷������</label>
					<input type="file" name="file2">
				</div>
				<div class="file">
					<div class="butt"><button type="button" onclick="plusFile()">�����߰�</button></div>
					<label class="text">÷������</label>
					<input type="file" name="file3">
				</div>
				
				<button type="submit">���� ���</button>
			
			</div>
		</form>
	</div>
	

	
	
</body>
</html>