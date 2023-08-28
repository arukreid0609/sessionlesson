<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css">
<link rel="stylesheet" href="css/main.css">
<title>Insert title here</title>
</head>
<body>
	<h1>お問い合わせフォーム</h1>
	<p class="normalP">以下の内容でよろしいですか？</p>
	<table>
		<tr><th>お名前</th><td><%=1 %></td></tr>
		<tr><th>メールアドレス</th><td><%=1 %></td></tr>
		<tr><th>お問い合わせ内容</th><td><%=1 %></td></tr>
	</table>
	<div id="btBox">
		<a href="Contact?mode=back" class="button2">戻る</a>
		<a href="Contact?mode=send" class="button2">送信</a>
	</div>
</body>
</html>