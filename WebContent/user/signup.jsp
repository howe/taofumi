<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册帐号 - 淘富蜜 - 淘宝商家辅助秘书</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen, projection">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/signup_002.css" type="text/css">
<link rel="stylesheet" href="css/signup.css" type="text/css">
</head>

<body class="container">
	<div class="clear"></div>
	<br />
	<br />
	<div id="pageHolder"
		style="border: 1px solid #2A85B3; border-radius: 15px 15px 15px 15px; padding: 10px; margin-top: -13px; -moz-border-radius: 15px; -webkit-border-radius: 15px;">

		<div class="clear"></div>

		<div id="pageInner">
			<img src="images/signup.gif" id="pageTitle" height="35">
			<hr style="height: 1px; margin-bottom: 35px; background: #444444;">
			<form id="signUpForm" name="signUpForm" onSubmit="return false;">
				<div id="signLeftWrap">
					<div id="signLeft">
						<h2>您的注册信息</h2>
						<table celpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td>用户名</td>
									<td><input name="username" id="username" type="text"></td>
								</tr>
								<tr>
									<td>密码</td>
									<td><input name="password" id="password" type="text"></td>
								</tr>
								<tr>
									<td>确认密码</td>
									<td><input name="confirm_password" id="confirm_password" type="text"></td>
								</tr>
						</table>
						<div id="split"></div>
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>电子邮件</td>
								<td><input name="email" id="email" type="text"></td>
							</tr>
							<tr>
								<td>密保安全码</td>
								<td><input name="safecode" id="safecode" type="text"></td>
							</tr>
							</tbody>
						</table>
						<div id="paymentTermsWrap" style="margin-bottom: 15px;">
							<input value="1" name="agree" id="agree" style="width: auto;" type="checkbox" /> 我同意 <a href="#" target="_blank">淘富蜜用户协议</a>,
							并遵守相关协议.
						</div>


						<div id="signUpBut" align="right">
							<input src="images/continue.gif" alt="Continue" title="Continue" style="width: 106px; height: 30px;"
								type="image" />&nbsp;&nbsp;<input src="images/undo.gif" alt="Continue" title="Continue"
								style="width: 106px; height: 30px;" type="image" />
						</div>
					</div>
				</div>
			</form>

			<div id="signRight" style="width: 265px">
				<h3>合作网站帐号登录</h3>
				<div id="social" style="border: thick; background-color: #F6F6F6" align="center">
					<ul>
						<a class="social_sina" href="#" title="与新浪微博连接">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_tb" href="#" title="用淘宝帐号登录">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_alipay" href="#" title="支付宝快捷登录">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_tenpay" href="#" title="与财付通链接">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_sohu" href="#" title="与搜狐微博连接">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_163" href="#" title="与网易微博链接">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_qq" href="#" title="用QQ帐号登录">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_51" href="#" title="与51.com连接">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_gg" href="#" title="与Google连接">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_msn" href="#" title="用MSN帐号登录">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_ty" href="#" title="天涯社区用户登录">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_db" href="#" title="用豆瓣帐号登录">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_yahoo" href="#" title="与Yahoo!连接">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_baidu" href="#" title="与百度连接">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_sd" href="#" title="与盛大网络连接">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_kx" href="#" title="用开心帐号登录">&nbsp;</a>
					</ul>
					<ul>
						<a class="social_renren" href="#" title="与人人网连接">&nbsp;</a>&nbsp;&nbsp;
						<a class="social_360" href="#" title="用360帐号登录">&nbsp;</a>
					</ul>
				</div>
			</div>

			<div class="clear"></div>
		</div>
		<br>
		<br>
		<div class="clear"></div>
	</div>

</body>
</html>