<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage="404.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="淘宝网 - 亚洲最大、最安全的网上交易平台，提供各类服饰、美容、家居、数码、话费/点卡充值… 8亿优质特价商品，同时提供担保交易(先收货后付款)、先行赔付、假一赔三、七天无理由退换货、数码免费维修等安全交易保障服务，让你全面安心享受网上购物乐趣！" />
<meta name="keywords" content="淘网址分享,淘宝购物,网上购物,购物分享" />
<title>淘网址分享 - 淘宝购物网址社会化分享</title>
<script type="text/javascript">
//	document.oncontextmenu = function(e) {return false;}
</script>
<link rel="stylesheet" href="./css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="./css/share.css" type="text/css" media="screen" />
<script type="text/javascript" src="./js/jquery-1.6.2.js"></script>
<script type="text/javascript" src="./js/index.js"></script>
<script src="./js/ZeroClipboard.js" type="text/javascript"></script>
<script src="./js/ZeroTool.js" type="text/javascript"></script>
<style>
body {
	-moz-user-select: none;
}
</style>
</head>

<body class="index desktop" onselectstart="return false;">
<%@ include file="head.jsp" %> 
	<div id="wrap" style="width: 830px">
		<br />
		<form method="post" action="">
			<p align="center">
				<label>
					<input style="color: #707070;" onblur="setInputTip(this)" onclick="clearValue(this)" type="text"
						class="text" id="url" name="url" size="100" />
				</label> <br/> 
				<label>
					<input class="text" style="color: #707070;" type="text" id="add-keyword" name="keyword" size="15"
						readonly="readonly" />
				</label>
			</p>
			<center>
				<input type="submit" id="add-button" onmouseout="this.className='button'"
					onmousedown="this.className='btn'" name="add-button" class="button"
					style="font-size: 16px" value="立即生成" />
			</center>
		</form>
	</div>
	
<%@ include file="foot.jsp" %> 
</body>
</html>