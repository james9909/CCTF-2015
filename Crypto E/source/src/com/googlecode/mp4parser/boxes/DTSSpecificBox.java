// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class DTSSpecificBox extends AbstractBox
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
    private static final org.aspectj.lang.JoinPoint.StaticPart P;
    private static final org.aspectj.lang.JoinPoint.StaticPart Q;
    private static final org.aspectj.lang.JoinPoint.StaticPart R;
    private static final org.aspectj.lang.JoinPoint.StaticPart S;
    private static final org.aspectj.lang.JoinPoint.StaticPart T;
    private static final org.aspectj.lang.JoinPoint.StaticPart U;
    private static final org.aspectj.lang.JoinPoint.StaticPart V;
    private static final org.aspectj.lang.JoinPoint.StaticPart W;
    private static final org.aspectj.lang.JoinPoint.StaticPart X;
    private static final org.aspectj.lang.JoinPoint.StaticPart Y;
    private static final org.aspectj.lang.JoinPoint.StaticPart Z;
    private static final org.aspectj.lang.JoinPoint.StaticPart aa;
    private static final org.aspectj.lang.JoinPoint.StaticPart ab;
    private static final org.aspectj.lang.JoinPoint.StaticPart ac;
    private static final org.aspectj.lang.JoinPoint.StaticPart ad;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    long a;
    long b;
    long c;
    int d;
    int e;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    int u;
    int v;
    int w;
    int x;

    public DTSSpecificBox()
    {
        super("ddts");
    }

    private static void a()
    {
        Factory factory = new Factory("DTSSpecificBox.java", com/googlecode/mp4parser/boxes/DTSSpecificBox);
        y = factory.a("method-execution", factory.a("1", "getAvgBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "long"), 89);
        z = factory.a("method-execution", factory.a("1", "setAvgBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "long", "avgBitRate", "", "void"), 93);
        I = factory.a("method-execution", factory.a("1", "getStreamConstruction", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 129);
        J = factory.a("method-execution", factory.a("1", "setStreamConstruction", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "streamConstruction", "", "void"), 133);
        K = factory.a("method-execution", factory.a("1", "getCoreLFEPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 137);
        L = factory.a("method-execution", factory.a("1", "setCoreLFEPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreLFEPresent", "", "void"), 141);
        M = factory.a("method-execution", factory.a("1", "getCoreLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 145);
        N = factory.a("method-execution", factory.a("1", "setCoreLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreLayout", "", "void"), 149);
        O = factory.a("method-execution", factory.a("1", "getCoreSize", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 153);
        P = factory.a("method-execution", factory.a("1", "setCoreSize", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreSize", "", "void"), 157);
        Q = factory.a("method-execution", factory.a("1", "getStereoDownmix", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 161);
        R = factory.a("method-execution", factory.a("1", "setStereoDownmix", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "stereoDownmix", "", "void"), 165);
        A = factory.a("method-execution", factory.a("1", "getDTSSamplingFrequency", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "long"), 97);
        S = factory.a("method-execution", factory.a("1", "getRepresentationType", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 169);
        T = factory.a("method-execution", factory.a("1", "setRepresentationType", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "representationType", "", "void"), 173);
        U = factory.a("method-execution", factory.a("1", "getChannelLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 177);
        V = factory.a("method-execution", factory.a("1", "setChannelLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "channelLayout", "", "void"), 181);
        W = factory.a("method-execution", factory.a("1", "getMultiAssetFlag", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 185);
        X = factory.a("method-execution", factory.a("1", "setMultiAssetFlag", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "multiAssetFlag", "", "void"), 189);
        Y = factory.a("method-execution", factory.a("1", "getLBRDurationMod", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 193);
        Z = factory.a("method-execution", factory.a("1", "setLBRDurationMod", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "LBRDurationMod", "", "void"), 197);
        aa = factory.a("method-execution", factory.a("1", "getReserved", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 201);
        ab = factory.a("method-execution", factory.a("1", "setReserved", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "reserved", "", "void"), 205);
        B = factory.a("method-execution", factory.a("1", "setDTSSamplingFrequency", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "long", "DTSSamplingFrequency", "", "void"), 101);
        ac = factory.a("method-execution", factory.a("1", "getReservedBoxPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 209);
        ad = factory.a("method-execution", factory.a("1", "setReservedBoxPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "reservedBoxPresent", "", "void"), 213);
        C = factory.a("method-execution", factory.a("1", "getMaxBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "long"), 105);
        D = factory.a("method-execution", factory.a("1", "setMaxBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "long", "maxBitRate", "", "void"), 109);
        E = factory.a("method-execution", factory.a("1", "getPcmSampleDepth", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 113);
        F = factory.a("method-execution", factory.a("1", "setPcmSampleDepth", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "pcmSampleDepth", "", "void"), 117);
        G = factory.a("method-execution", factory.a("1", "getFrameDuration", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 121);
        H = factory.a("method-execution", factory.a("1", "setFrameDuration", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "frameDuration", "", "void"), 125);
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.b(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        c = IsoTypeReader.b(bytebuffer);
        d = IsoTypeReader.f(bytebuffer);
        BitReaderBuffer bitreaderbuffer = new BitReaderBuffer(bytebuffer);
        e = bitreaderbuffer.a(2);
        n = bitreaderbuffer.a(5);
        o = bitreaderbuffer.a(1);
        p = bitreaderbuffer.a(6);
        q = bitreaderbuffer.a(14);
        r = bitreaderbuffer.a(1);
        s = bitreaderbuffer.a(3);
        t = bitreaderbuffer.a(16);
        u = bitreaderbuffer.a(1);
        v = bitreaderbuffer.a(1);
        w = bitreaderbuffer.a(1);
        x = bitreaderbuffer.a(5);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.d(bytebuffer, d);
        BitWriterBuffer bitwriterbuffer = new BitWriterBuffer(bytebuffer);
        bitwriterbuffer.a(e, 2);
        bitwriterbuffer.a(n, 5);
        bitwriterbuffer.a(o, 1);
        bitwriterbuffer.a(p, 6);
        bitwriterbuffer.a(q, 14);
        bitwriterbuffer.a(r, 1);
        bitwriterbuffer.a(s, 3);
        bitwriterbuffer.a(t, 16);
        bitwriterbuffer.a(u, 1);
        bitwriterbuffer.a(v, 1);
        bitwriterbuffer.a(w, 1);
        bitwriterbuffer.a(x, 5);
    }

    protected long d()
    {
        return 20L;
    }

    static 
    {
        a();
    }
}
