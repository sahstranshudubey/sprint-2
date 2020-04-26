<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="hello" method="get">
		<table>
			<th>Student details!!!!!</th>
			<tr>
				<td>Student ID:</td>
				<td><input type="text" name="sid"></td>
			</tr>
			<tr>
				<td>Student Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Student email:</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Student Marks:</td>
				<td><input type="text" name="marks"></td>
			</tr>
			<tr>
				<td><input type="submit" value="AddData"></td>

			</tr>
		</table>
	</form>
	<table border="1">
		<tr>
			<th>Student Id</th>
			<th>Student Name</th>
			<th>Student email</th>
			<th>Student Marks</th>
		</tr>
		<c:forEach var="stu" items="${students}">
			<tr>
				<td>${stu.sid}</td>
				<td>${stu.name}</td>
				<td>${stu.email}</td>
				<td>${stu.marks}</td>
				<td><a href="removeStudent?sid=${stu.sid}">Delete</a></td>
				<td><a href="updateStudent?sid=${stu.sid}">Update</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>