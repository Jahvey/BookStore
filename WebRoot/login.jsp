<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>��̨��¼</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>
<script>
	$(document).ready(function() {
		//���ӱ�����Ч
		$('body').particleground({
			dotColor : '#5cbdaa',
			lineColor : '#5cbdaa'
		});
		//��֤��
		createCode();
		//�����ύ���Խӳ���ɾ������
		$(".submit_btn").click(function() {
			location.href = "index.html";
		});
	});
</script>
</head>
<body>
	<dl class="admin_login">
		<dt>
			<strong>վ���̨����ϵͳ</strong> <em>Management System</em>
		</dt>
		<form action="loginServlet" method="post">
		<dd class="user_icon">
			<input type="text" placeholder="�˺�" name="account" class="login_txtbx" />
		</dd>
		<dd class="pwd_icon">
			<input type="password" placeholder="����" name="password"  class="login_txtbx" />
		</dd>
		<dd class="val_icon">
			<div class="checkcode">
				<input type="text" id="J_codetext" placeholder="��֤��" maxlength="4"
					class="login_txtbx">
				<canvas class="J_codeimg" id="myCanvas" onclick="createCode()">�Բ��������������֧��canvas�����������°������!</canvas>
			</div>
			<input type="button" value="��֤�����" class="ver_btn"
				onClick="validate();">
		</dd>
		<dd>
			<input type="submit" value="������½" class="submit_btn" />
		</dd>
		</form>
		<dd>
			<p>�0�8 2015-2016 DeathGhost ��Ȩ����</p>
			<p>��B2-20080224-1</p>
		</dd>
	</dl>
</body>
</html>