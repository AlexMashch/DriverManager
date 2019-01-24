<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>TAG index Webサイト</title>

</head>
<body>
<h2 align="center">個人情報</h2>
<table align="center">
	<tr>
		<td>姓（漢字）：</td>
		<td><form><input type="text"></form></td>
		<td>名（漢字）：</td>
		<td><form><input type="text"></form></td>
	</tr>
	<tr>
		<td>姓（カナ）：</td>
		<td><form><input type="text"></form></td>
		<td>名（カナ）：</td>
		<td><form><input type="text"></form></td>
		<td>性別：</td>
		<td><form><select>
		<option value="0">男
		<option value="1">女
		</select></form></td>
	</tr>
	<tr>
		<td>趣味：</td>
		<td>
		<table>
		<tr>
		<td><form><input type="checkbox">サッカー</form></td>
		<td><form><input type="checkbox">フッドサル</form></td>
		</tr>
		<tr>
		<td><form><input type="checkbox">ダンス</form></td>
		<td><form><input type="checkbox">旅行</form></td>
		<td><form><input type="checkbox">撮影</form></td>
		</tr>
		</table>
		</td>
	</tr>
	<tr>
	<td><form><input type="submit" value="レセット"></form></td>
	<td><form><input type="submit" value="決定"></form></td>
	</tr>
</table>


</body>
</html>