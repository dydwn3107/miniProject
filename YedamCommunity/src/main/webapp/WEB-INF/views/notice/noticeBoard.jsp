<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
			<h1>�Խñ� ���</h1>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th width="70">�۹�ȣ</th>
						<th width="250">����</th>
						<th width="150">�ۼ���</th>
						<th width="150">�ۼ�����</th>
						<th width="150">÷������</th>
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
								<td>${notice.noticeBoardAttech}</td>
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
					<button type="button" onclick="location.href='noticeBoardWriteForm.do'">�۾���</button>
				</c:if>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function noticeBoard(id) {
			document.getElementById("id").value = id
			NoticeBoardfrm.submit();
		}
	</script>
</body>
</html>