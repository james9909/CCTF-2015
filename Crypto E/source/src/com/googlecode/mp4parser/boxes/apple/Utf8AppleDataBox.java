// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.apple:
//            AppleDataBox

public abstract class Utf8AppleDataBox extends AppleDataBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    String d;

    protected Utf8AppleDataBox(String s)
    {
        super(s, 1);
    }

    private static void c()
    {
        Factory factory = new Factory("Utf8AppleDataBox.java", com/googlecode/mp4parser/boxes/apple/Utf8AppleDataBox);
        e = factory.a("method-execution", factory.a("1", "getValue", "com.googlecode.mp4parser.boxes.apple.Utf8AppleDataBox", "", "", "", "java.lang.String"), 21);
        n = factory.a("method-execution", factory.a("1", "setValue", "com.googlecode.mp4parser.boxes.apple.Utf8AppleDataBox", "java.lang.String", "value", "", "void"), 30);
    }

    public byte[] a()
    {
        return Utf8.a(d);
    }

    protected int b()
    {
        return d.getBytes(Charset.forName("UTF-8")).length;
    }

    protected void c(ByteBuffer bytebuffer)
    {
        d = IsoTypeReader.a(bytebuffer, bytebuffer.remaining());
    }

    static 
    {
        c();
    }
}
