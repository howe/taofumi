/**
 * 初始化文本框
 * 
 * @param {}
 *            $obj
 */
function init($obj) {
	$obj.attr('style', 'color:#707070;').val('请输入或复制要缩短的淘宝或者淘宝商城网址');
	$('#add-keyword').val("");
}

/**
 * 初始化文本框用户输入状态
 * 
 * @param {}
 *            obj
 */
function clearValue(obj) {
	if (obj.value === '请输入或复制要缩短的淘宝或者淘宝商城网址') {
		$(obj).attr("style", "").val('');
	}
}

/**
 * 取服务器类别
 * 
 * @param {}
 *            url String
 */
function fetchServerType(url) {
	var tmp = new String(url.match(/(http(s)?:\/\/)([\w-]+\.)?/g));
	return tmp.slice(tmp.match(/(http(s)?:\/\/)/g)[0].length, -1);
}

/**
 * 搜索关键字
 * 
 * @param {}
 *            url String
 */
function searchKeyWord(url) {
	return url
			.match(/(\bid\b|\bitem_num\b|\bitem_id\b|\bqiugouId\b|\bitemId\b)=(\w+)/g);
}

/**
 * 获取关键字值
 * 
 * @param {}
 *            url
 */
function fetchKeyWordValue(keyWord) {
	return keyWord.substr(keyWord.match(/\w+=/g)[0].length);
}

/**
 * 获取查询前部
 * 
 * @param {}
 *            url
 */
function fetchSearchFront(url) {
	return url
			.match(/^(http(s)?:\/\/)?([\w-]+\.)?taobao\.com(\/)?(\w+)?.(\w+)\?/g);
}

/**
 * 同步url与关键字模式1
 */
function synchronousData1(obj) {
	var tmp = searchKeyWord(obj.value);
	if ('ju' === fetchServerType(obj.value)) {
		$('#add-keyword').val('j' + fetchKeyWordValue(tmp[0]));
		$(obj)
				.val(obj.value
						.match(/^(http(s)?:\/\/)?((\bju\b)\.)?taobao\.com(\/)?tg\/\w+\.htm\?/g)
						+ tmp);
	} else {
		$(obj).val(fetchSearchFront(obj.value) + tmp);
		$('#add-keyword').val(fetchKeyWordValue(tmp[0]));
	}
}

/**
 * 同步url与关键字模式2
 */
function synchronousData2(obj) {
	var tmp = new String(obj.value
			.match(/^(http(s)?:\/\/)?([\w-]+\.)?taobao\.com(\/)?/g));
	if ("/" === tmp.charAt(tmp.length - 1)) {// 去掉url末尾/符号
		$(obj).val(tmp.slice(0, tmp.length - 1));
	} else {
		$(obj).val(tmp);
	}
	$('#add-keyword').val(fetchServerType(obj.value));
}

/**
 * 输入帮助
 * 
 * @param {}
 *            obj
 */
function setInputTip(obj) {// 如果用户什么都没有输入，则重置文本框
	if ($(obj).val() == "") {
		init($(obj));
	} else {
		var flag = true;// 状态标记

		if (obj.value
				.match(/^(http(s)?:\/\/)?((\bitem\b|\bgame\b|\bju\b|\bershou\b)\.)?taobao\.com(\/)?/g)) {// 淘宝
			flag = false;
			var tmp = fetchServerType(obj.value);
			if (searchKeyWord(obj.value)) {
				synchronousData1(obj);
			} else {
				if (tmp === 'item') {
					init($(obj));
				} else {
					synchronousData2(obj);
				}
			}
		}

		if (obj.value.match(/^(http(s)?:\/\/)?((\bitem\b)\.)?tmall\.com(\/)?/g)) {// 淘宝商城
			flag = false;
			if (searchKeyWord(obj.value)) {
				var tmp = searchKeyWord(obj.value);
				$('#add-keyword').val(fetchKeyWordValue(tmp[0]));
				tmp = obj.value
						.match(/^(http(s)?:\/\/)?((\bitem\b)\.)?tmall\.com(\/)?\/\w+\.htm\?/g)
						+ tmp;
				$(obj).val(tmp.replace(/tmall/, 'taobao'));
			} else {
				init($(obj));
			}
		}

		if (obj.value
				.match(/^(http(s)?:\/\/)?((\blab\b|\bshang\b)\.)?alipay\.com(\/)?/g)) {// 支付宝
			flag = false;
			if (searchKeyWord(obj.value)) {
				if (fetchServerType(obj.value) === 'lab') {// 担保交易
					var tmp = searchKeyWord(obj.value);
					$(obj)
							.val(obj.value
									.match(/^(http(s)?:\/\/)?((\blab\b|\bshang\b)\.)?alipay\.com(\/)?\w+\.htm\?/g)
									+ tmp);
					$('#add-keyword').val('d' + fetchKeyWordValue(tmp[0]));
				}

				if (fetchServerType(obj.value) === 'shang') {// 悬赏交易
					var tmp = searchKeyWord(obj.value);
					$(obj)
							.val(obj.value
									.match(/^(http(s)?:\/\/)?((\blab\b|\bshang\b)\.)?alipay\.com(\/)?\w+\/\w+\.htm\?/g)
									+ tmp);
					$('#add-keyword').val(fetchKeyWordValue(tmp[0]).toLowerCase());
				}
			} else {
				init($(obj));
			}
		}

		if (flag) {
			init($(obj));
		}
	}
}

/**
 * 根据用户输入的url生成系统需要的url格式
 */
function generateUrl() {

}

$(function() {
			init($('#url'));// 初始化输入文本框
		});