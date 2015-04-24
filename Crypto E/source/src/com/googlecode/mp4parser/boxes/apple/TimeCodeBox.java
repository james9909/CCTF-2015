// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.sampleentry.SampleEntry;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TimeCodeBox extends AbstractBox
    implements SampleEntry
{

    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart B;
    private static final org.aspectj.lang.JoinPoint.StaticPart C;
    private static final org.aspectj.lang.JoinPoint.StaticPart D;
    private static final org.aspectj.lang.JoinPoint.StaticPart E;
    private static final org.aspectj.lang.JoinPoint.StaticPart F;
    private static final org.aspectj.lang.JoinPoint.StaticPart G;
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
    int a;
    int b;
    int c;
    int d;
    int e;
    long n;
    int o;
    byte p[];

    public TimeCodeBox()
    {
        super("tmcd");
        p = new byte[0];
    }

    private static void a()
    {
        Factory factory = new Factory("TimeCodeBox.java", com/googlecode/mp4parser/boxes/apple/TimeCodeBox);
        q = factory.a("method-execution", factory.a("1", "getDataReferenceIndex", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 81);
        r = factory.a("method-execution", factory.a("1", "setDataReferenceIndex", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "dataReferenceIndex", "", "void"), 85);
        A = factory.a("method-execution", factory.a("1", "setReserved1", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "reserved1", "", "void"), 130);
        B = factory.a("method-execution", factory.a("1", "getReserved2", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 134);
        C = factory.a("method-execution", factory.a("1", "setReserved2", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "reserved2", "", "void"), 138);
        D = factory.a("method-execution", factory.a("1", "getFlags", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "long"), 142);
        E = factory.a("method-execution", factory.a("1", "setFlags", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "long", "flags", "", "void"), 146);
        F = factory.a("method-execution", factory.a("1", "getRest", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "[B"), 150);
        G = factory.a("method-execution", factory.a("1", "setRest", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "[B", "rest", "", "void"), 154);
        s = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "java.lang.String"), 91);
        t = factory.a("method-execution", factory.a("1", "getTimeScale", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 102);
        u = factory.a("method-execution", factory.a("1", "setTimeScale", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "timeScale", "", "void"), 106);
        v = factory.a("method-execution", factory.a("1", "getFrameDuration", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 110);
        w = factory.a("method-execution", factory.a("1", "setFrameDuration", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "frameDuration", "", "void"), 114);
        x = factory.a("method-execution", factory.a("1", "getNumberOfFrames", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 118);
        y = factory.a("method-execution", factory.a("1", "setNumberOfFrames", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "numberOfFrames", "", "void"), 122);
        z = factory.a("method-execution", factory.a("1", "getReserved1", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 126);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        bytebuffer.position(6);
        o = IsoTypeReader.d(bytebuffer);
        d = bytebuffer.getInt();
        n = IsoTypeReader.b(bytebuffer);
        a = bytebuffer.getInt();
        b = bytebuffer.getInt();
        c = IsoTypeReader.f(bytebuffer);
        e = IsoTypeReader.c(bytebuffer);
        p = new byte[bytebuffer.remaining()];
        bytebuffer.get(p);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.put(new byte[6]);
        IsoTypeWriter.b(bytebuffer, o);
        bytebuffer.putInt(d);
        IsoTypeWriter.b(bytebuffer, n);
        bytebuffer.putInt(a);
        bytebuffer.putInt(b);
        IsoTypeWriter.d(bytebuffer, c);
        IsoTypeWriter.a(bytebuffer, e);
        bytebuffer.put(p);
    }

    protected long d()
    {
        return (long)(28 + p.length);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(s, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("TimeCodeBox{timeScale=")).append(a).append(", frameDuration=").append(b).append(", numberOfFrames=").append(c).append(", reserved1=").append(d).append(", reserved2=").append(e).append(", flags=").append(n).append('}').toString();
    }

    static 
    {
        a();
    }
}
