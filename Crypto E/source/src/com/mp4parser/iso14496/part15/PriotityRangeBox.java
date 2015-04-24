// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class PriotityRangeBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    int a;
    int b;
    int c;
    int d;

    public PriotityRangeBox()
    {
        super("svpr");
        a = 0;
        c = 0;
    }

    private static void a()
    {
        Factory factory = new Factory("PriotityRangeBox.java", com/mp4parser/iso14496/part15/PriotityRangeBox);
        e = factory.a("method-execution", factory.a("1", "getReserved1", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 45);
        n = factory.a("method-execution", factory.a("1", "setReserved1", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "reserved1", "", "void"), 49);
        o = factory.a("method-execution", factory.a("1", "getMin_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 53);
        p = factory.a("method-execution", factory.a("1", "setMin_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "min_priorityId", "", "void"), 57);
        q = factory.a("method-execution", factory.a("1", "getReserved2", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 61);
        r = factory.a("method-execution", factory.a("1", "setReserved2", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "reserved2", "", "void"), 65);
        s = factory.a("method-execution", factory.a("1", "getMax_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 69);
        t = factory.a("method-execution", factory.a("1", "setMax_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "max_priorityId", "", "void"), 73);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        b = IsoTypeReader.f(bytebuffer);
        a = (0xc0 & b) >> 6;
        b = 0x3f & b;
        d = IsoTypeReader.f(bytebuffer);
        c = (0xc0 & d) >> 6;
        d = 0x3f & d;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.d(bytebuffer, (a << 6) + b);
        IsoTypeWriter.d(bytebuffer, (c << 6) + d);
    }

    protected long d()
    {
        return 2L;
    }

    static 
    {
        a();
    }
}
