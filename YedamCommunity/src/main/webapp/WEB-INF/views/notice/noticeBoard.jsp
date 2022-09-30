<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>��������</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#noticeBoard-search .search-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#noticeBoard-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#noticeBoard-search .search-window .search-wrap input {
	height: 40px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
}

#noticeBoard-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#noticeBoard-search .search-window .search-wrap .btn {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.noticeBoard-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.noticeBoard-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.noticeBoard-table a:hover {
	text-decoration: underline;
}

.noticeBoard-table th {
	text-align: center;
}

.noticeBoard-table .th-num {
	width: 100px;
	text-align: center;
}

.noticeBoard-table .th-date {
	width: 200px;
}

.noticeBoard-table th, .noticeBoard-table td {
	padding: 14px 0;
}

.noticeBoard-table tbody td {
	border-top: 1px solid #e7e7e7;
	text-align: center;
}

.noticeBoard-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #e7e7e7;
	text-align: left;
}

.noticeBoard-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}
section.heading-page {
   background-image: url(headercss/images/notice.jpg);
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
   padding-top: 230px;
   padding-bottom: 110px;
   text-align: center;
}
</style>
</head>
<body>
<section class="heading-page header-text" id="top">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <h1 class="display-4" style="font-weight:lighter; color:white">��������</h1>
            </div>
         </div>
      </div>
   </section>

			<!-- board seach area -->
			<div id="noticeBoard-search">
				<div class="container">
					<div class="search-window">
						<form action="">
							<div class="search-wrap">
								<input id="search" type="search" name=""
									placeholder="�˻�� �Է����ּ���." value="">
								<button type="submit" class="btn btn-dark">�˻�</button>
							</div>
						</form>
					</div>
				</div>
			</div>

			<!-- board list area -->
			<div id="noticeBoard-list">
				<div class="container">
					<table class="noticeBoard-table">
						<thead>
							<tr>
								<th width="70">�۹�ȣ</th>
								<th width="250">����</th>
								<th width="150">�ۼ���</th>
								<th width="150">�ۼ�����</th>
								<th width="70">��ȸ��</th>
							</tr>
						<thead>
						<tbody>
							<c:if test="${empty list}">
								<tr>
									<td colspan="6">�Խñ��� �������� �ʽ��ϴ�.</td>
								</tr>
							</c:if>
							<c:if test="${not empty list}">
								<c:forEach items="${list}" var="notice">
									<tr onMouseover="this.style.backgroundColor='#E2E2E2';"
										onMouseout="this.style.backgroundColor='white';"
										onclick="noticeBoard('${notice.noticeBoardId}')">
										<td>${notice.noticeBoardId}</td>
										<td>${notice.noticeBoardTitle}</td>
										<td>${notice.memberId}</td>
										<td>${notice.noticeBoardDate}</td>
										<td>${notice.noticeBoardHit}</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>

		</section>
		<br>
		<div>
			<form id="NoticeBoardfrm" action="noticeBoardSelect.do" method="post">
				<input type="hidden" id="id" name="id">
				<c:if test="${memberAuthor eq 'ADMIN' }">
					<button type="button"
						onclick="location.href='noticeBoardWriteForm.do'" class="btn btn-dark">�۾���</button>
				</c:if>
				<input type="hidden" id="noticeBoardId" name="noticeBoardId">
			</form>
		</div>
		<br><br><br>
		<div>
			<small><a href="freeBoard.do">�� 1 2 3 4 5 ��</a></small>
		</div><br><br>
	</div>
	<script type="text/javascript">
		function noticeBoard(id) {
			document.getElementById("id").value = id
			NoticeBoardfrm.submit();
		}
	</script>
</body>
</html>