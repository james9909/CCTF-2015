// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.apple:
//            AppleDataBox

public class AppleCoverBox extends AppleDataBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private byte d[];

    public AppleCoverBox()
    {
        super("covr", 1);
    }

    private static void c()
    {
        Factory factory = new Factory("AppleCoverBox.java", com/googlecode/mp4parser/boxes/apple/AppleCoverBox);
        e = factory.a("method-execution", factory.a("1", "getCoverData", "com.googlecode.mp4parser.boxes.apple.AppleCoverBox", "", "", "", "[B"), 21);
        n = factory.a("method-execution", factory.a("1", "setJpg", "com.googlecode.mp4parser.boxes.apple.AppleCoverBox", "[B", "data", "", "void"), 25);
        o = factory.a("method-execution", factory.a("1", "setPng", "com.googlecode.mp4parser.boxes.apple.AppleCoverBox", "[B", "data", "", "void"), 29);
    }

    protected byte[] a()
    {
        return d;
    }

    protected int b()
    {
        return d.length;
    }

    protected void c(ByteBuffer bytebuffer)
    {
        d = new byte[bytebuffer.limit()];
        bytebuffer.get(d);
    }

    static 
    {
        c();
    }
}
