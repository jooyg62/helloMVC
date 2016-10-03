<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- �� ���� core�� ����� �Ҷ� �����Ƚ��μ� c�� ����ϰڴ�. --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<%-- JSP Expression Language --%>
	<ul>
		<li>Name: ${customer.id}</li>
		<li>Name: ${customer.email}</li>
		<li>Name: ${customer.name}</li>
	</ul>

	<%-- JSTL�� ����ؼ� ����� �غ��ڴ�.--%>

	<table style="border: 1px solid red; padding: 10px;">
		<%-- prefix�� c�� ���� ����Ͽ� ������ �����ڴ�
	c:forEach��� �±׸� ����ؼ� ������ ���µ� items�� customerList�̰� �ϳ��� ������ ������ �����ϰڴ�.--%>
		<c:forEach> var="customer" items="${customerList}">
	 <tr>
				<td>${customer.id }</td>
				<td>${customer.name }</td>
				<td>${customer.email }</td>
		</c:forEach>

	</table>
</body>
</html>