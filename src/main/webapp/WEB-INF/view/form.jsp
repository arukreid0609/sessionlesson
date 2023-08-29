<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.Person"%>
<%
Person person = (Person) session.getAttribute("person");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css">
<link rel="stylesheet" href="css/main.css">
<title>お問い合わせフォーム</title>
</head>
<body>
	<h1>お問い合わせフォーム</h1>
	<form action="Contact" method="post">
		<table>
			<tr><th>お名前</th><td><input type="text" name="name" value="<%=person != null ? person.getName() : ""%>"></td></tr>
			<tr><th>メールアドレス</th><td><input type="email" name="email" value="<%=person != null ? person.getEmail() : ""%>"></td></tr>
			<tr><th>お問い合わせ内容</th><td><textarea rows="10" cols="30" name="memo"><%=person != null ? person.getMemo() : ""%></textarea></td></tr>
		</table>
		<input class="button" type="submit" value="確認">
	</form>
</body>
</html>