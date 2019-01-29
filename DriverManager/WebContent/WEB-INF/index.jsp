<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link
	href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"
	rel="stylesheet" type="text/css">

<style type="text/css">
html, body, div {
	padding: 0;
	margin: 0;
}

html {
	font-family: '微软雅黑', Arial, Verdana, arial, serif;
}

#content div {
	padding: 10px;
	background: #f2f2f2;
	margin-bottom: 1px;
}
</style>

<script type="text/javascript" charset="UTF-8"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<!-- DataTables -->
<script type="text/javascript" charset="UTF-8"
	src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="./js/page.js"></script>
<script type="text/javascript" src="./js/jquery.jpostal.js"></script>
<!-- jQuery -->
<script>
	$(function() {
		$("#clickbutton").click(function() {
			var i = $("#message").val();
			alert(i);
		});
	});

	$(function() {
		$('#post1').jpostal({
			click : '#btn',
			postcode : [ '#post1', '#post2' ],
			address : {
				'#address1' : '%3',
				'#address2' : '%4',
				'#address3' : '%5'
			}
		});
	});

	$(function() {
		$('#namequerysumit').click(function() {
			var input_name = $('#queryname').val();
			var username = /^[a-zA-Z]+$/;
			if (input_name == "" || input_name == null) {
				alert("名前を入力必要です。");
				return false;
			} else if (!username.test($('#queryname').val())) {
				alert("英字を入力してください。");
				return false;
			}
		})
	})

	$(function() {
		$('#idquerysumit').click(function() {
			var input_id = $('#queryid').val();
			var userid = /^[0-9]+$/;
			if (input_id == "" || input_id == null) {
				alert("IDを入力必要です。");
				return false;
			} else if (!userid.test($('#queryid').val())) {
				alert("数字を入力してください。");
				return false;
			}
		})
	})

	function cop() {
		var str = document.getElementById("post1").value;
		document.getElementById("addpost").value = str;

		var str = document.getElementById("post2").value;
		document.getElementById("addcode").value = str;
	}

	function cop1() {
		var str = document.getElementById("addpost").value;
		document.getElementById("editpost").value = str;

		var str = document.getElementById("addcode").value;
		document.getElementById("editcode").value = str;

		var str = document.getElementById("address1").value;
		document.getElementById("editprefecture").value = str;

		var str = document.getElementById("address2").value;
		document.getElementById("editcity").value = str;

		var str = document.getElementById("address3").value;
		document.getElementById("edittown").value = str;
	}
</script>
</head>
<body>

	<img src="./images/header.jpg" />
	<h1 align="center">ドライバー管理システム</h1>
	<table id="table_id" border="8" align="center">
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
	<p>
	<div class="pager tc" align="center">
		<input name="" type="button" value="上のページ" onclick="change(1)"
			class="btn_prev" /> <span id="pageShow-up" class="btn_page">1/1</span>
		<input name="" type="button" value="次のページ" onclick="change(2)"
			class="btn_next" /> <input name="" type="button" value="戻る"
			onclick="javascript:history.go(-1)" class="btn_back" />
	</div>

	<div id="edit_comm" class="pageaall" align="center">
		<h2 id="edit_title">ドライバー編集</h2>
		<form id="editForm" action="update" method="post">
			<input id="editid" type="text" placeholder="要修改的id" id="edit_id"
				name="id" /><br> <input id="editname" type="text"
				placeholder="氏名" name="name" /> <input id="editmile" type="text"
				placeholder="キロメートル" name="mile" /><input id="editpost" type="text"
				placeholder="郵便" name="post" /><input id="editcode" type="text"
				placeholder="番号" name="code" /><input id="editprefecture"
				type="text" placeholder="都道府県" name="prefecture" /><input
				id="editcity" type="text" placeholder="市区" name="city" /><input
				id="edittown" type="text" placeholder="町村" name="town" /><input
				type="submit" value="修正の確認" />
		</form>
	</div>

	<div id="edit_comm" class="pageaall" align="center">
		<h2>ドライバー削除</h2>
		<form id="delForm" action="delbyid" method="post">
			<input id="delid" type="text" placeholder="刪除ドライバーのid" name="id" />
			<input type="submit" value="刪除ドライバー" />
		</form>
	</div>

	<div id="add_comm" class="pageaall" align="center">
		<h2 id="edit_title">ドライバーの追加</h2>
		<form id="addForm" action="add" method="post" class="checkform">
			<input id="addid" type="text" placeholder="番号" name="id" /> <input
				id="addname" type="text" placeholder="氏名" name="name" /> <input
				id="addmile" type="text" placeholder="キロメートル" name="mile" /><input
				id="addpost" type="text" placeholder="郵便" name="post"
				oninput="cop1()" /><input id="addcode" type="text" placeholder="番号"
				name="code" oninput="cop1()" /><input id="address1" type="text"
				placeholder="都道府県" name="prefecture" oninput="cop1()" /><input
				id="address2" type="text" placeholder="市区" name="city"
				oninput="cop1()" /><input id="address3" type="text"
				placeholder="町村" name="town" oninput="cop1()" /><input
				type="submit" value="添加" />
		</form>
	</div>

	<div class="block" align="center">
		<p>郵便番号を入力してください。</p>
		<input id="post1" maxlength="3" type="text" placeholder="000"
			oninput="cop()"> <input id="post2" maxlength="4" type="text"
			placeholder="0000" oninput="cop()"> <input id="btn"
			type="button" value="住所検索">
	</div>

	<!-- 	<div class="block" align="center">
		<p>住所検索ボタンを押すとここに住所が表示されます。</p>
		<input id="address1" type="text" placeholder="都道府県"> <input
			id="address2" type="text" placeholder="市区"> <input
			id="address3" type="text" placeholder="町村">
	</div>-->

	<div id="edit_comm" class="pageaall" align="center">
		<h2>学生Id查詢</h2>
		<form id="IDForm" action="querybyid" method="post">
			<input id="queryid" type="text" placeholder="要查詢的id" name="id" /> <input
				id="idquerysumit" type="submit" value="查詢" />
		</form>
	</div>

	<div id="edit_comm" class="pageaall" align="center">
		<h2>学生 name查詢</h2>
		<form id="nameForm" action="querybyname" method="post">
			<input id="queryname" type="text" placeholder="要查詢的name" name="name" />
			<!--  <input id="namequerysumit" type="submit" value="查詢" /> -->
			<button id="namequerysumit">查詢</button>
		</form>
	</div>

	<div id="Pratice" class="pageaall" align="center">
		<h2>New Message</h2>
		<form id="newMessage" method="post">
			<input id="message" type="text" placeholder="表示されるメッセージです。" />
			<button id="clickbutton">ShowMessage</button>
		</form>
	</div>
	<p>
	<p>
</body>
</html>