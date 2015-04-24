// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part12;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public final class BitRateBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private long a;
    private long b;
    private long c;

    public BitRateBox()
    {
        super("btrt");
    }

    private static void a()
    {
        Factory factory = new Factory("BitRateBox.java", com/mp4parser/iso14496/part12/BitRateBox);
        d = factory.a("method-execution", factory.a("1", "getBufferSizeDb", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", "long"), 74);
        e = factory.a("method-execution", factory.a("1", "setBufferSizeDb", "com.mp4parser.iso14496.part12.BitRateBox", "long", "bufferSizeDb", "", "void"), 82);
        n = factory.a("method-execution", factory.a("1", "getMaxBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", "long"), 90);
        o = factory.a("method-execution", factory.a("1", "setMaxBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "long", "maxBitrate", "", "void"), 98);
        p = factory.a("method-execution", factory.a("1", "getAvgBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", "long"), 106);
        q = factory.a("method-execution", factory.a("1", "setAvgBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "long", "avgBitrate", "", "void"), 114);
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.b(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        c = IsoTypeReader.b(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
    }

    protected long d()
    {
        return 12L;
    }

    static 
    {
        a();
    }
}
