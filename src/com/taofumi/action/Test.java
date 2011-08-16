package com.taofumi.action;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

public class Test {
    @At("/test")
    @Ok("jsp:jsp.test")
    public String doTest() {
        return "this is a test";
    }
}
