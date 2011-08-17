package com.taofumi;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Encoding;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Localization;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.ioc.provider.ComboIocProvider;

@IocBy(type = ComboIocProvider.class, args = { "*org.nutz.ioc.loader.json.JsonLoader", "ioc/",
        "*org.nutz.ioc.loader.annotation.AnnotationIocLoader", "com.taofumi" })
@Encoding(input = "utf8", output = "utf8")
@Modules(scanPackage = true)
@Localization("msg")
@Ok("json")
@Fail("void")
public class MainModule {

    @At("/share")
    @Ok("jsp:jsp.share.index")
    public String doShare() {
        return "";
    }

    @At("/user")
    @Ok("jsp:jsp.user.signup")
    public String doUser() {
        return null;
    }
}
