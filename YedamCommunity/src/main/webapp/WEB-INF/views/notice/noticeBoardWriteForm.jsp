<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>�������� ���</h1>
		</div>
		<form id="frm" action="noticeBoardInsert.do" method="post"
			enctype="multipart/form-data">
			<div>
				<table border="1">
					<tr>
						<th width="100">�ۼ���</th>
						<td>
							<!-- �α����� ����� �̸��� value�� �ھƼ� required �ʿ� ����. --> <input
							type="text" id="noticeBoardWriter" name="noticeBoardWriter" value="${name}"
							readonly="readonly">
						</td>
						<th width="150">�ۼ�����</th>
						<td><input type="date" id="noticeBoardDate" name="noticeBoardDate"
							required="required"></td>
					</tr>
					<tr>
						<th>����</th>
						<td colspan="3"><input type="text" size="87" id="noticeBoardTitle"
							name="noticeBoardTitle" required="required"></td>
					</tr>
					<tr>
						<th>����</th>
						<td colspan="3"><textArea rows="10" cols="88"
								id="noticeBoardSubject" name="noticeBoardSubject"></textArea></td>
					</tr>
					<tr>
						<th>÷������</th>
						<td colspan="3"><input type="file" id="ufile" name="ufile">
						</td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				<input type="submit" value="���">&nbsp;&nbsp;&nbsp; <input
					type="reset" value="���">&nbsp;&nbsp;&nbsp; <input
					type="button" value="���"
					onclick="location.href='noticeBoardSelectList.do'">&nbsp;&nbsp;&nbsp;
			</div>
		</form>
	</div>
</body>
</html>