<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<title>UserListConfirm画面</title>
	<style type="text/css">
	/* ========TAG LAYOUT======== */
		body {
			margin: 0;
			padding: 0;
			line-height: 1.6;
			letter-spacing: 1px;
			font-family: Verdana, Helvetica, sans-serif;
			font-size: 12px;
			color: #333;
			background: #fff;
		}
	/* ========ID LAYOUT======== */
		#top {
			width: 780px;
			margin: 30px auto;
			border: 1px solid #333;
		}

		#header {
			width: 100%;
			height: 80px;
			background-color: black;
		}

		#text-logo {
			border-radius: 300px 15px 100px 15px / 25px 200px 30px 185px;
			position: absolute;
			background-color: #FFFFEE;
			color: #000099;
			height: 70px;
			line-height: 70px;
			text-align: center;
			width: 140px;
			margin: 5px 0 0 5px;
			font-size: 25px;
		}

		#main {
			width: 100%;
			height: 500px;
			text-align: center;
		}

		#footer {
			width: 100%;
			height: 80px;
			background-color: black;
			clear: both;
		}
	</style>
</head>
<body>
	<div id="header">
		<div id="pr">
			<a href='<s:url action="GoHomeAction"/>' id="text-logo">ECSITE</a>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>UserListDeleteConfirm</p>
		</div>
		<div>
			<h3>"internous"と"admin"以外のユーザー情報を全て削除します。よろしいですか。</h3>
			<s:form action="UserListDeleteCompleteAction">
				<s:submit value="OK"/>
			</s:form>
			<s:form action="UserListAction">
				<s:submit value="キャンセル"/>
			</s:form>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>