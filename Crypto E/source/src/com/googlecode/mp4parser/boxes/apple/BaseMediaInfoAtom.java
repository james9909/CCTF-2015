// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class BaseMediaInfoAtom extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart A;
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
    short a;
    int b;
    int c;
    int d;
    short e;
    short n;

    public BaseMediaInfoAtom()
    {
        super("gmin");
        a = 64;
        b = 32768;
        c = 32768;
        d = 32768;
    }

    private static void a()
    {
        Factory factory = new Factory("BaseMediaInfoAtom.java", com/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom);
        o = factory.a("method-execution", factory.a("1", "getGraphicsMode", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "short"), 54);
        p = factory.a("method-execution", factory.a("1", "setGraphicsMode", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "short", "graphicsMode", "", "void"), 58);
        y = factory.a("method-execution", factory.a("1", "getReserved", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "short"), 94);
        z = factory.a("method-execution", factory.a("1", "setReserved", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "short", "reserved", "", "void"), 98);
        A = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "java.lang.String"), 103);
        q = factory.a("method-execution", factory.a("1", "getOpColorR", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 62);
        r = factory.a("method-execution", factory.a("1", "setOpColorR", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorR", "", "void"), 66);
        s = factory.a("method-execution", factory.a("1", "getOpColorG", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 70);
        t = factory.a("method-execution", factory.a("1", "setOpColorG", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorG", "", "void"), 74);
        u = factory.a("method-execution", factory.a("1", "getOpColorB", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 78);
        v = factory.a("method-execution", factory.a("1", "setOpColorB", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorB", "", "void"), 82);
        w = factory.a("method-execution", factory.a("1", "getBalance", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "short"), 86);
        x = factory.a("method-execution", factory.a("1", "setBalance", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "short", "balance", "", "void"), 90);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = bytebuffer.getShort();
        b = IsoTypeReader.d(bytebuffer);
        c = IsoTypeReader.d(bytebuffer);
        d = IsoTypeReader.d(bytebuffer);
        e = bytebuffer.getShort();
        n = bytebuffer.getShort();
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.putShort(a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.b(bytebuffer, d);
        bytebuffer.putShort(e);
        bytebuffer.putShort(n);
    }

    protected long d()
    {
        return 16L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(A, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("BaseMediaInfoAtom{graphicsMode=")).append(a).append(", opColorR=").append(b).append(", opColorG=").append(c).append(", opColorB=").append(d).append(", balance=").append(e).append(", reserved=").append(n).append('}').toString();
    }

    static 
    {
        a();
    }
}
