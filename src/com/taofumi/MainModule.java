package com.taofumi;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.Ok;

@Modules(scanPackage = true)
public class MainModule {

    @At("/share")
    @Ok("jsp:jsp.share.index")
    public String doShare() {
        return "";
    }

    @At("/user")
    @Ok("jsp:jsp.user.index")
    public String doUser() {
        return null;
    }
}
