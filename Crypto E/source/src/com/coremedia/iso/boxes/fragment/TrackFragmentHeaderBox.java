// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            SampleFlags

public class TrackFragmentHeaderBox extends AbstractFullBox
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
    private long a;
    private long b;
    private long c;
    private long d;
    private long e;
    private SampleFlags n;
    private boolean o;
    private boolean p;

    public TrackFragmentHeaderBox()
    {
        super("tfhd");
        b = -1L;
        d = -1L;
        e = -1L;
    }

    private static void l()
    {
        Factory factory = new Factory("TrackFragmentHeaderBox.java", com/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox);
        q = factory.a("method-execution", factory.a("1", "hasBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 126);
        r = factory.a("method-execution", factory.a("1", "hasSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 130);
        A = factory.a("method-execution", factory.a("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 166);
        B = factory.a("method-execution", factory.a("1", "isDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 170);
        C = factory.a("method-execution", factory.a("1", "isDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 174);
        D = factory.a("method-execution", factory.a("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "trackId", "", "void"), 178);
        E = factory.a("method-execution", factory.a("1", "setBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "baseDataOffset", "", "void"), 182);
        F = factory.a("method-execution", factory.a("1", "setSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "sampleDescriptionIndex", "", "void"), 191);
        G = factory.a("method-execution", factory.a("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleDuration", "", "void"), 200);
        H = factory.a("method-execution", factory.a("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleSize", "", "void"), 205);
        I = factory.a("method-execution", factory.a("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), 210);
        J = factory.a("method-execution", factory.a("1", "setDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "boolean", "durationIsEmpty", "", "void"), 215);
        s = factory.a("method-execution", factory.a("1", "hasDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 134);
        K = factory.a("method-execution", factory.a("1", "setDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "boolean", "defaultBaseIsMoof", "", "void"), 220);
        L = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "java.lang.String"), 226);
        t = factory.a("method-execution", factory.a("1", "hasDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 138);
        u = factory.a("method-execution", factory.a("1", "hasDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 142);
        v = factory.a("method-execution", factory.a("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 146);
        w = factory.a("method-execution", factory.a("1", "getBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 150);
        x = factory.a("method-execution", factory.a("1", "getSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 154);
        y = factory.a("method-execution", factory.a("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 158);
        z = factory.a("method-execution", factory.a("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 162);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.b(bytebuffer);
        if ((1 & r()) == 1)
        {
            b = IsoTypeReader.h(bytebuffer);
        }
        if ((2 & r()) == 2)
        {
            c = IsoTypeReader.b(bytebuffer);
        }
        if ((8 & r()) == 8)
        {
            d = IsoTypeReader.b(bytebuffer);
        }
        if ((0x10 & r()) == 16)
        {
            e = IsoTypeReader.b(bytebuffer);
        }
        if ((0x20 & r()) == 32)
        {
            n = new SampleFlags(bytebuffer);
        }
        if ((0x10000 & r()) == 0x10000)
        {
            o = true;
        }
        if ((0x20000 & r()) == 0x20000)
        {
            p = true;
        }
    }

    public boolean a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (1 & r()) != 0;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
        if ((1 & r()) == 1)
        {
            IsoTypeWriter.a(bytebuffer, h());
        }
        if ((2 & r()) == 2)
        {
            IsoTypeWriter.b(bytebuffer, i());
        }
        if ((8 & r()) == 8)
        {
            IsoTypeWriter.b(bytebuffer, j());
        }
        if ((0x10 & r()) == 16)
        {
            IsoTypeWriter.b(bytebuffer, k());
        }
        if ((0x20 & r()) == 32)
        {
            n.a(bytebuffer);
        }
    }

    public boolean b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(t, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (0x10 & r()) != 0;
    }

    public long c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(v, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    protected long d()
    {
        long l1 = 8L;
        int i1 = r();
        if ((i1 & 1) == 1)
        {
            l1 += l1;
        }
        if ((i1 & 2) == 2)
        {
            l1 += 4L;
        }
        if ((i1 & 8) == 8)
        {
            l1 += 4L;
        }
        if ((i1 & 0x10) == 16)
        {
            l1 += 4L;
        }
        if ((i1 & 0x20) == 32)
        {
            l1 += 4L;
        }
        return l1;
    }

    public long h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(w, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    public long i()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(x, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    public long j()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(y, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public long k()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(z, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return e;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(L, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackFragmentHeaderBox");
        stringbuilder.append("{trackId=").append(a);
        stringbuilder.append(", baseDataOffset=").append(b);
        stringbuilder.append(", sampleDescriptionIndex=").append(c);
        stringbuilder.append(", defaultSampleDuration=").append(d);
        stringbuilder.append(", defaultSampleSize=").append(e);
        stringbuilder.append(", defaultSampleFlags=").append(n);
        stringbuilder.append(", durationIsEmpty=").append(o);
        stringbuilder.append(", defaultBaseIsMoof=").append(p);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        l();
    }
}
