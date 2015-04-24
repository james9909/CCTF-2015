// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public final class AppleLosslessSpecificBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart B;
    private static final org.aspectj.lang.JoinPoint.StaticPart C;
    private static final org.aspectj.lang.JoinPoint.StaticPart D;
    private static final org.aspectj.lang.JoinPoint.StaticPart E;
    private static final org.aspectj.lang.JoinPoint.StaticPart F;
    private static final org.aspectj.lang.JoinPoint.StaticPart G;
    private static final org.aspectj.lang.JoinPoint.StaticPart H;
    private static final org.aspectj.lang.JoinPoint.StaticPart I;
    private static final org.aspectj.lang.JoinPoint.StaticPart J;
    private static final org.aspectj.lang.JoinPoint.StaticPart K;
    private static final org.aspectj.lang.JoinPoint.StaticPart L;
    private static final org.aspectj.lang.JoinPoint.StaticPart M;
    private static final org.aspectj.lang.JoinPoint.StaticPart N;
    private static final org.aspectj.lang.JoinPoint.StaticPart O;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    private long a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int n;
    private int o;
    private int p;
    private long q;
    private long r;
    private long s;

    public AppleLosslessSpecificBox()
    {
        super("alac");
    }

    private static void a()
    {
        Factory factory = new Factory("AppleLosslessSpecificBox.java", com/coremedia/iso/boxes/apple/AppleLosslessSpecificBox);
        t = factory.a("method-execution", factory.a("1", "getMaxSamplePerFrame", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 34);
        u = factory.a("method-execution", factory.a("1", "setMaxSamplePerFrame", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "maxSamplePerFrame", "", "void"), 38);
        D = factory.a("method-execution", factory.a("1", "getKModifier", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 74);
        E = factory.a("method-execution", factory.a("1", "setKModifier", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "kModifier", "", "void"), 78);
        F = factory.a("method-execution", factory.a("1", "getChannels", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 82);
        G = factory.a("method-execution", factory.a("1", "setChannels", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "channels", "", "void"), 86);
        H = factory.a("method-execution", factory.a("1", "getUnknown2", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 90);
        I = factory.a("method-execution", factory.a("1", "setUnknown2", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "unknown2", "", "void"), 94);
        J = factory.a("method-execution", factory.a("1", "getMaxCodedFrameSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 98);
        K = factory.a("method-execution", factory.a("1", "setMaxCodedFrameSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "maxCodedFrameSize", "", "void"), 102);
        L = factory.a("method-execution", factory.a("1", "getBitRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 106);
        M = factory.a("method-execution", factory.a("1", "setBitRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "bitRate", "", "void"), 110);
        v = factory.a("method-execution", factory.a("1", "getUnknown1", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 42);
        N = factory.a("method-execution", factory.a("1", "getSampleRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 114);
        O = factory.a("method-execution", factory.a("1", "setSampleRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "sampleRate", "", "void"), 118);
        w = factory.a("method-execution", factory.a("1", "setUnknown1", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "unknown1", "", "void"), 46);
        x = factory.a("method-execution", factory.a("1", "getSampleSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 50);
        y = factory.a("method-execution", factory.a("1", "setSampleSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "sampleSize", "", "void"), 54);
        z = factory.a("method-execution", factory.a("1", "getHistoryMult", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 58);
        A = factory.a("method-execution", factory.a("1", "setHistoryMult", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "historyMult", "", "void"), 62);
        B = factory.a("method-execution", factory.a("1", "getInitialHistory", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 66);
        C = factory.a("method-execution", factory.a("1", "setInitialHistory", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "initialHistory", "", "void"), 70);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.b(bytebuffer);
        b = IsoTypeReader.f(bytebuffer);
        c = IsoTypeReader.f(bytebuffer);
        d = IsoTypeReader.f(bytebuffer);
        e = IsoTypeReader.f(bytebuffer);
        n = IsoTypeReader.f(bytebuffer);
        o = IsoTypeReader.f(bytebuffer);
        p = IsoTypeReader.d(bytebuffer);
        q = IsoTypeReader.b(bytebuffer);
        r = IsoTypeReader.b(bytebuffer);
        s = IsoTypeReader.b(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.d(bytebuffer, b);
        IsoTypeWriter.d(bytebuffer, c);
        IsoTypeWriter.d(bytebuffer, d);
        IsoTypeWriter.d(bytebuffer, e);
        IsoTypeWriter.d(bytebuffer, n);
        IsoTypeWriter.d(bytebuffer, o);
        IsoTypeWriter.b(bytebuffer, p);
        IsoTypeWriter.b(bytebuffer, q);
        IsoTypeWriter.b(bytebuffer, r);
        IsoTypeWriter.b(bytebuffer, s);
    }

    protected long d()
    {
        return 28L;
    }

    static 
    {
        a();
    }
}
