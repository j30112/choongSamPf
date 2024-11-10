<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>공지사항</title>
			<style>
				body {
					margin: 0;
					padding: 0;
				}

				.container {
					display: flex;
					flex-direction: column;
					position: relative;
					/* 컨테이너의 배경색을 흰색에 가까운 연한 회색으로 설정합니다. */
					background-color: #fdfdfd;
					/* 컨테이너에 미세한 그림자를 추가하여 입체감을 줍니다. */

					top: 120px;
					/*  컨테이너의 너비 1320px 고정 */
					width: 1320px;
					/* 중앙 정렬 */
					margin: 0 auto;
					/* padding을 width에 포함하여 계산 */

					box-sizing: border-box;
					/* 자동으로 좌우 여백을 설정하여 가운데 정렬 */
					margin: 0 auto;
					height: auto;
					margin-bottom: 200px;
					

				}

				.list {
					margin: 50px 0;
				}

				table {
					padding: 0;
					width: 1280px;
					border-top: 2px solid black;
				}

			

				th {
					color: gray;
					font-weight: bold;
					text-align: center;
					/* 중앙 정렬 */
					padding: 20px 0;
					background-color: #F9F9F9;
					color: black;
					border-bottom: 0.4px solid #e2e8ee;
					border-left:0.4px solid #e2e8ee; 
				}

				td {
					border-bottom: 0.4px solid #e2e8ee;
					border-left:0.4px solid #e2e8ee; 
					cursor: pointer;
					font-weight: bold;
					text-align: center;
					/* 중앙 정렬 */
					color: #323232;
					font-size: px;
					height: 50px;
				}


				.manager_pagination{
					text-align: center;

				}
				h1{
					font-size: 40px;

				}
				
				.contents1{
				display: flex;
				justify-content: space-between;
				}


				
				.writeNoticeBtn{
				width: 200px;
	            height: 50px;
	            background-color: #00664F;
	            border: none;
	            color: white;
	            text-align: center;
	            margin-top: 10px; /* 버튼과 검색 바 간격 */
	            text-decoration: none; /* 링크 스타일 없애기 */
	            display: flex; /* flexbox 사용 */
	            justify-content: center; /* 텍스트 가운데 정렬 */
	            align-items: center; /* 세로 가운데 정렬 */
				}
				
				.pagination_current {
    border-radius: 10px;
    width: 35px; /* 크기를 키움 */
    height: 35px; /* 높이 설정 */
    border: 1px solid black;
    display: inline-flex;
    justify-content: center;
    align-items: center; /* 텍스트 가운데 정렬 */
    font-size: 18px; /* 폰트 크기 조정 */
    background-color: black;
    color: white;
}

.pagination_a {
    border-radius: 10px;
    width: 35px; /* 크기를 키움 */
    height: 35px; /* 높이 설정 */
    border: 1px solid black;
    display: inline-flex;
    justify-content: center;
    align-items: center; /* 텍스트 가운데 정렬 */
    font-size: 18px; /* 폰트 크기 조정 */
    text-decoration: none; /* 링크 스타일 없애기 */
    color: black; /* 링크 색상 설정 */
}

.keyword{
	height: 40px;
	width: 255px;
	border-radius: 10px;
	border: 1px #949494 solid;
	font-size: 20px;
	text-align: center;
}

.search_btn{
	height: 40px;
	border-radius: 10px; 
	background-color:#00664F;
	width: 70px;
	font-size: 20px;
	color: white;
	border: none;
	
}

select{
height: 40px;
	width: 255px;
	border-radius: 10px;
	border: 1px #949494 solid;
	font-size: 20px;
	text-align: center;
	color: #949494;

}

td a{
	color: black;
	text-decoration: none;
}

td a:hover {
	text-decoration: underline;
}



			</style>
		</head>
		<script type="text/javascript">
		
		
		</script>

		<body>
			<header>
				<%@ include file="../header.jsp" %>
			</header>

			<div class="container">
				<div class="contents">
					<h1>공지사항</h1>
				</div>

				<div class="contents1" >
					<form action="/api/notice" id="frm">
						<div class="manager_Qna_header_search">
						<select>
						<option>전체검색</option>
						<option>제목</option>
						<option>내용</option>
						</select>
							<input type="text" name="keyword" class="keyword" id="keyword" >
							<button type="submit" class="search_btn">검색</button>
						</div>
					</form>
					<c:if test="${sessionScope.usertype == 1003}">
					    <a class="writeNoticeBtn" href="/api/notice/new">공지사항 작성</a>
					</c:if>

				</div>


				
					<table class="list">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>등록일</th>
							</tr>
						</thead>
					<c:if test="${total>0}">
						<tbody>
						<c:set var="startIndex" value="${total - (page.currentPage - 1) * page.rowPage}" />
						
							<c:forEach var="notice" items="${noticeList}" varStatus="status">
								<tr>
									<td>${startIndex - status.index}</td>
									<td><a href="/view_Sjm/noticeDetail?ntc_mttr_sn=${notice.ntc_mttr_sn}">${notice.ntc_mttr_ttl}</a></td>
									<td>${notice.ntc_mttr_dt}</td>
								</tr>
							</c:forEach>
						</tbody>
					</c:if>



			<c:if test="${total == 0}">
        <tbody>
            <tr>
                <td colspan="3" style="text-align: center;">등록된 공지사항이 없습니다.</td>
            </tr>
        </tbody>
    </c:if>
					</table>







				<!-- 페이징 네비게이션 ------------------------------------- -->
				<div class="manager_pagination">

					<!-- 이전 페이지 ------------------->
					<c:if test="${page.startPage > page.pageBlock}">
						<a id="page" class="pagination_a_back"
							href="/api/notice?currentPage=${page.startPage - page.pageBlock > 0 ? page.startPage - page.pageBlock : 1}&total=${total}&keyword=${keyword}">
							이전 </a>
					</c:if>


					<!-- 현재 페이지 ------------------->
					<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
						<c:choose>
							<c:when test="${i == page.currentPage}">
								<span class="pagination_current">${i}</span>
							</c:when>
							<c:otherwise>
								<a id="page" class="pagination_a"
									href="/api/notice?currentPage=${i}&total=${total}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<!--  다음 페이지 -------------------->
					<c:if test="${page.endPage < page.totalPage}">
						<a class="pagination_a_next" id="page"
							href="/api/notice?currentPage=${page.startPage+page.pageBlock}&total=${total}&keyword=${keyword}">다음</a>
					</c:if>
				</div>

			</div>

	<footer>
		<%@ include file="../footer.jsp" %>
	
	</footer>



		</body>

		</html>