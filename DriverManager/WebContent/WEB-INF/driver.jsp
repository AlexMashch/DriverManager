<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ドライバー管理</title>
<link rel="stylesheet" type="text/css" href="./css/all.css" />
<style type="text/css">
</style>
 <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
  <!-- jQuery -->
  <!-- DataTables -->
</head>
<body>
	<img src="./images/header.jpg" /> ${msg}
	<h1 align="center">ドライバー信息管理</h1>

	<div id="all_comm" class="all">
		<h2 align="center">ドライバー信息一览</h2>
		<table id="table_id" border="8">
			<tr>
				<td>id</td>
				<td>name</td>
				<td>mile</td>
				<td>post</td>
				<td>code</td>
				<td>prefecture</td>
				<td>city</td>
				<td>town</td>


			</tr>

			<c:forEach items="${drivers}" var="driver">
				<tr>
					<td id="${driver.id }">${driver.id}</td>
					<td id="${driver.id }">${driver.name}</td>
					<td id="${driver.id}">${driver.mile}</td>
					<td id="${driver.id}">${driver.post}</td>
					<td id="${driver.id}">${driver.code}</td>
					<td id="${driver.id}">${driver.prefecture}</td>
					<td id="${driver.id}">${driver.city}</td>
					<td id="${driver.id}">${driver.town}</td>


				</tr>
			</c:forEach>
		</table>
	</div>

		<ul>
		<c:forEach var="pageNum" begin="0" end="${pageCounts}" step="1">
　			<a href="http://localhost:8080/DriverManager/all?sPage=${pageNum}">第 ${pageNum+1}ページ></a>
		</c:forEach>
		</ul>
</body>
</html>