<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��� jsp</title>
<style>
tbody, td, tfoot, th, thead, tr {
	padding:5px;
}


</style>
</head>
<body>
<div align="center">
	<br>
	<br>
	
	<div align="center"><h1>���� ����ϱ�</h1></div>
	<br>
	
	<div>
		<form id="frm" action="foodInfoInsert.do" method="post" enctype="multipart/form-data" > <!-- ���� ���̳ʸ��� �ִٴ� �� �˷��� -->
			<div align="center">
				<table border="1">
					<tr>
					
						<th width="150">NO/����</th>
						<td >
							<input type="text"  value="������" readonly="readonly">
						</td>
					
						<th width="150">�����̸�</th>
						<td width="200">
							<input type="text" id="infoName" name="infoName" required="required">
						</td>
						
						<th>�����ð�</th>
						<td >
							<input type="text" id="infoTime" name="infoTime" required="required">
						</td>
					
						
					</tr>
					<tr>
						<th width="150">�ּ�</th>
						<td>
							<input type="text" id="infoAddr" name="infoAddr" required="required">
						</td>
						
						<th>���� ��ȣ</th>
						<td >
							<input type="tel" id="infoTel" name="infoTel" required="required">
						</td>
						
						<th width="150">#�±�#</th>
						<td>
							<input type="text" id="infoTag" name="infoTag" required="required">
						</td>
						
						
						
					</tr>
						<tr>
						<th>�󼼳���</th>
						<td colspan="4">
							<textarea rows="10" cols="80" id="infoDetail" name="infoDetail" required="required"></textarea>
						</td>
					</tr>
					<tr>
						<th>÷������</th>
						<td>
							<input type="file" id="ufile" name="ufile">
						</td>
					</tr>
					
					
		
				</table>
			
			</div><br>
			<br>
			
			<div align="center">
				<input type="submit" value="���">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="���" onclick="location.href='infoFoodSelectList.do'">&nbsp;&nbsp;&nbsp;
				
			</div>
			<br>
			<br>
			<br>
			
		
		</form>
	</div>
	</div>



</body>
</html>