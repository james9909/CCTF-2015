// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part30;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class WebVTTConfigurationBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    String a;

    public WebVTTConfigurationBox()
    {
        super("vttC");
    }

    private static void a()
    {
        Factory factory = new Factory("WebVTTConfigurationBox.java", com/mp4parser/iso14496/part30/WebVTTConfigurationBox);
        b = factory.a("method-execution", factory.a("1", "getConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "", "", "", "java.lang.String"), 36);
        c = factory.a("method-execution", factory.a("1", "setConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "java.lang.String", "config", "", "void"), 40);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.a(bytebuffer, bytebuffer.remaining());
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.put(Utf8.a(a));
    }

    protected long d()
    {
        return (long)Utf8.b(a);
    }

    static 
    {
        a();
    }
}
