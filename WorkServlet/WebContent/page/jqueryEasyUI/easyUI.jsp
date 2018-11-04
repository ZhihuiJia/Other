<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Validate Password - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="../../css/easyui.css">
	<link rel="stylesheet" type="text/css" href="../../css/mobile.css">
	<link rel="stylesheet" type="text/css" href="../../css/icon.css">
	<script type="text/javascript" src="../../js/jquery.min.js"></script>
	<script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
</head>
<body>
	<h2>Validate Password</h2>
	<p>This example shows how to validate whether a user enters the same password.</p>
	<div style="margin:20px 0;"></div>
	<div class="easyui-panel" style="width:400px;padding:50px 60px">
		<div style="margin-bottom:20px">
			<input class="easyui-textbox" prompt="Username" iconWidth="28" style="width:100%;height:34px;padding:10px;">
		</div>
		<div style="margin-bottom:20px">
			<input id="pass" class="easyui-passwordbox" prompt="Password" iconWidth="28" style="width:100%;height:34px;padding:10px">
		</div>
		<div style="margin-bottom:20px">
			<input class="easyui-passwordbox" prompt="Confirm your password" iconWidth="28" validType="confirmPass['#pass']" style="width:100%;height:34px;padding:10px">
		</div>
	</div>

	<script type="text/javascript">
		$.extend($.fn.validatebox.defaults.rules, {
			confirmPass: {
				validator: function(value, param){
					var pass = $(param[0]).passwordbox('getValue');
					return value == pass;
				},
				message: 'Password does not match confirmation.'
			}
		})
	</script>
</body>
</html>
