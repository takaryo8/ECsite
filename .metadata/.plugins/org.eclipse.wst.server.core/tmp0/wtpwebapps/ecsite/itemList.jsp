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
	<title>ItemList</title>
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

		table {
			text-align: center;
			margin: 0 auto;
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
			<p>ItemList</p>
		</div>
		<div>
			<s:if test="itemList == null">
				<h3>商品情報はありません。</h3>
			</s:if>
			<s:else>
				<h3>商品情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>商品名</th>
						<th>値段</th>
						<th>在庫</th>
						<th>登録日時</th>
					</tr>
					<s:iterator value="itemList">
					<tr>
						<th><s:property value="itemName"/></th>
						<th><s:property value="itemPrice"/><span>円</span></th>
						<th><s:property value="itemStock"/><span>個</span></th>
						<th><s:property value="insert_date"/></th>
					</tr>
					</s:iterator>
				</table>
				<s:form action="ItemListDeleteConfirmAction">
					<s:submit value="削除"/>
				</s:form>
			</s:else>
			<div>
				<a href='<s:url action="AdminAction"/>'>管理者TOPへ</a>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>