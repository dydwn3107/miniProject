<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>��������</title>
<style type="text/css">
td {
	text-align: center;
}
</style>
</head>
<body>
	<div align="center">
		<div>
			<h1>�������� ���</h1>
		</div>
		<div>
			<form id="searchfrm" method="post">
				<select id="key" name="key">
					<option value="0">��ü</option>
					<option value="1">����</option>
					<option value="2">�ۼ���</option>
					<option value="3">����</option>
				</select> <input type="text" value="�˻�� �Է��ϼ���.">&nbsp;&nbsp;
				<button type="button" class="btn btn-dark">�˻�</button>
			</form>
			&nbsp;&nbsp;
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th width="70">�۹�ȣ</th>
						<th width="250">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</th>
						<th width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ۼ���</th>
						<th width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ۼ�����</th>
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
							<tr onMouseover="this.style.backgroundColor='yellow';"
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
		<br>
		<div>
			<form id="NoticeBoardfrm" action="noticeBoardSelect.do" method="post">
				<input type="hidden" id="id" name="id">
				<c:if test="${memberAuthor eq 'ADMIN' }">
					<button type="button"
						onclick="location.href='noticeBoardWriteForm.do'">�۾���</button>
				</c:if>
				<input type="hidden" id="noticeBoardId" name="noticeBoardId">
			</form>
		</div>

		<br>
		<div id="paging">
			<c:url var="action" value="" />
			<p>1 2 3 4 5</p>
		</div>
	<!-- 	<div>
			<form id="NoticeBoardSfrm" name="NoticeBoardSfrm" method="post">
			</form>
		</div> -->
	</div>
	<script type="text/javascript">
		function noticeBoard(id) {
			document.getElementById("id").value = id
			NoticeBoardfrm.submit();
		}
	</script>
</body>
</html>