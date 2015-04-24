// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TierBitRateBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    long a;
    long b;
    long c;
    long d;
    long e;
    long n;

    public TierBitRateBox()
    {
        super("tibr");
    }

    private static void a()
    {
        Factory factory = new Factory("TierBitRateBox.java", com/mp4parser/iso14496/part15/TierBitRateBox);
        o = factory.a("method-execution", factory.a("1", "getBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 52);
        p = factory.a("method-execution", factory.a("1", "setBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "baseBitRate", "", "void"), 56);
        y = factory.a("method-execution", factory.a("1", "getTierAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 92);
        z = factory.a("method-execution", factory.a("1", "setTierAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "tierAvgBitRate", "", "void"), 96);
        q = factory.a("method-execution", factory.a("1", "getMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 60);
        r = factory.a("method-execution", factory.a("1", "setMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "maxBitRate", "", "void"), 64);
        s = factory.a("method-execution", factory.a("1", "getAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 68);
        t = factory.a("method-execution", factory.a("1", "setAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "avgBitRate", "", "void"), 72);
        u = factory.a("method-execution", factory.a("1", "getTierBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 76);
        v = factory.a("method-execution", factory.a("1", "setTierBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "tierBaseBitRate", "", "void"), 80);
        w = factory.a("method-execution", factory.a("1", "getTierMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 84);
        x = factory.a("method-execution", factory.a("1", "setTierMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "tierMaxBitRate", "", "void"), 88);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.b(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        c = IsoTypeReader.b(bytebuffer);
        d = IsoTypeReader.b(bytebuffer);
        e = IsoTypeReader.b(bytebuffer);
        n = IsoTypeReader.b(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.b(bytebuffer, d);
        IsoTypeWriter.b(bytebuffer, e);
        IsoTypeWriter.b(bytebuffer, n);
    }

    protected long d()
    {
        return 24L;
    }

    static 
    {
        a();
    }
}
