// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.apple:
//            AppleDataBox

public class AppleTrackNumberBox extends AppleDataBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    int d;
    int e;

    public AppleTrackNumberBox()
    {
        super("trkn", 0);
    }

    private static void c()
    {
        Factory factory = new Factory("AppleTrackNumberBox.java", com/googlecode/mp4parser/boxes/apple/AppleTrackNumberBox);
        n = factory.a("method-execution", factory.a("1", "getA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 16);
        o = factory.a("method-execution", factory.a("1", "setA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", "a", "", "void"), 20);
        p = factory.a("method-execution", factory.a("1", "getB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 24);
        q = factory.a("method-execution", factory.a("1", "setB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", "b", "", "void"), 28);
    }

    protected byte[] a()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(8);
        bytebuffer.putInt(d);
        bytebuffer.putInt(e);
        return bytebuffer.array();
    }

    protected int b()
    {
        return 8;
    }

    protected void c(ByteBuffer bytebuffer)
    {
        d = bytebuffer.getInt();
        e = bytebuffer.getInt();
    }

    static 
    {
        c();
    }
}
