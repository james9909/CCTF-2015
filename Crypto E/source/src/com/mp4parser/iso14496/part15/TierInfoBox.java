// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TierInfoBox extends AbstractBox
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
    int a;
    int b;
    int c;
    int d;
    int e;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;

    public TierInfoBox()
    {
        super("tiri");
        e = 0;
        r = 0;
    }

    private static void a()
    {
        Factory factory = new Factory("TierInfoBox.java", com/mp4parser/iso14496/part15/TierInfoBox);
        t = factory.a("method-execution", factory.a("1", "getTierID", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 69);
        u = factory.a("method-execution", factory.a("1", "setTierID", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "tierID", "", "void"), 73);
        D = factory.a("method-execution", factory.a("1", "getVisualWidth", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 109);
        E = factory.a("method-execution", factory.a("1", "setVisualWidth", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "visualWidth", "", "void"), 113);
        F = factory.a("method-execution", factory.a("1", "getVisualHeight", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 117);
        G = factory.a("method-execution", factory.a("1", "setVisualHeight", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "visualHeight", "", "void"), 121);
        H = factory.a("method-execution", factory.a("1", "getDiscardable", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 125);
        I = factory.a("method-execution", factory.a("1", "setDiscardable", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "discardable", "", "void"), 129);
        J = factory.a("method-execution", factory.a("1", "getConstantFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 133);
        K = factory.a("method-execution", factory.a("1", "setConstantFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "constantFrameRate", "", "void"), 137);
        L = factory.a("method-execution", factory.a("1", "getReserved2", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 141);
        M = factory.a("method-execution", factory.a("1", "setReserved2", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "reserved2", "", "void"), 145);
        v = factory.a("method-execution", factory.a("1", "getProfileIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 77);
        N = factory.a("method-execution", factory.a("1", "getFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 149);
        O = factory.a("method-execution", factory.a("1", "setFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "frameRate", "", "void"), 153);
        w = factory.a("method-execution", factory.a("1", "setProfileIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "profileIndication", "", "void"), 81);
        x = factory.a("method-execution", factory.a("1", "getProfile_compatibility", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 85);
        y = factory.a("method-execution", factory.a("1", "setProfile_compatibility", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "profile_compatibility", "", "void"), 89);
        z = factory.a("method-execution", factory.a("1", "getLevelIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 93);
        A = factory.a("method-execution", factory.a("1", "setLevelIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "levelIndication", "", "void"), 97);
        B = factory.a("method-execution", factory.a("1", "getReserved1", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 101);
        C = factory.a("method-execution", factory.a("1", "setReserved1", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "reserved1", "", "void"), 105);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.d(bytebuffer);
        b = IsoTypeReader.f(bytebuffer);
        c = IsoTypeReader.f(bytebuffer);
        d = IsoTypeReader.f(bytebuffer);
        e = IsoTypeReader.f(bytebuffer);
        n = IsoTypeReader.d(bytebuffer);
        o = IsoTypeReader.d(bytebuffer);
        int i = IsoTypeReader.f(bytebuffer);
        p = (i & 0xc0) >> 6;
        q = (i & 0x30) >> 4;
        r = i & 0xf;
        s = IsoTypeReader.d(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.d(bytebuffer, b);
        IsoTypeWriter.d(bytebuffer, c);
        IsoTypeWriter.d(bytebuffer, d);
        IsoTypeWriter.d(bytebuffer, e);
        IsoTypeWriter.b(bytebuffer, n);
        IsoTypeWriter.b(bytebuffer, o);
        IsoTypeWriter.d(bytebuffer, (p << 6) + (q << 4) + r);
        IsoTypeWriter.b(bytebuffer, s);
    }

    protected long d()
    {
        return 13L;
    }

    static 
    {
        a();
    }
}
