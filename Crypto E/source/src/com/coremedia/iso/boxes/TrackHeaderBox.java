// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.DateHelper;
import com.googlecode.mp4parser.util.Matrix;
import java.nio.ByteBuffer;
import java.util.Date;
import org.aspectj.runtime.reflect.Factory;

public class TrackHeaderBox extends AbstractFullBox
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
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    private Date a;
    private Date b;
    private long c;
    private long d;
    private int e;
    private int n;
    private float o;
    private Matrix p;
    private double q;
    private double r;

    public TrackHeaderBox()
    {
        super("tkhd");
        p = Matrix.j;
    }

    private static void s()
    {
        Factory factory = new Factory("TrackHeaderBox.java", com/coremedia/iso/boxes/TrackHeaderBox);
        s = factory.a("method-execution", factory.a("1", "getCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 60);
        t = factory.a("method-execution", factory.a("1", "getModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 64);
        C = factory.a("method-execution", factory.a("1", "getContent", "com.coremedia.iso.boxes.TrackHeaderBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 142);
        D = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.lang.String"), 170);
        E = factory.a("method-execution", factory.a("1", "setCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "creationTime", "", "void"), 196);
        F = factory.a("method-execution", factory.a("1", "setModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "modificationTime", "", "void"), 203);
        G = factory.a("method-execution", factory.a("1", "setTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "trackId", "", "void"), 211);
        H = factory.a("method-execution", factory.a("1", "setDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "duration", "", "void"), 215);
        I = factory.a("method-execution", factory.a("1", "setLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "layer", "", "void"), 222);
        J = factory.a("method-execution", factory.a("1", "setAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "alternateGroup", "", "void"), 226);
        K = factory.a("method-execution", factory.a("1", "setVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "float", "volume", "", "void"), 230);
        L = factory.a("method-execution", factory.a("1", "setMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 234);
        u = factory.a("method-execution", factory.a("1", "getTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 68);
        M = factory.a("method-execution", factory.a("1", "setWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "width", "", "void"), 238);
        N = factory.a("method-execution", factory.a("1", "setHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "height", "", "void"), 242);
        O = factory.a("method-execution", factory.a("1", "isEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 247);
        P = factory.a("method-execution", factory.a("1", "isInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 251);
        Q = factory.a("method-execution", factory.a("1", "isInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 255);
        R = factory.a("method-execution", factory.a("1", "isInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 259);
        S = factory.a("method-execution", factory.a("1", "setEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "enabled", "", "void"), 263);
        T = factory.a("method-execution", factory.a("1", "setInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inMovie", "", "void"), 271);
        U = factory.a("method-execution", factory.a("1", "setInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPreview", "", "void"), 279);
        V = factory.a("method-execution", factory.a("1", "setInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPoster", "", "void"), 287);
        v = factory.a("method-execution", factory.a("1", "getDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 72);
        w = factory.a("method-execution", factory.a("1", "getLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 76);
        x = factory.a("method-execution", factory.a("1", "getAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 80);
        y = factory.a("method-execution", factory.a("1", "getVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "float"), 84);
        z = factory.a("method-execution", factory.a("1", "getMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 88);
        A = factory.a("method-execution", factory.a("1", "getWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 92);
        B = factory.a("method-execution", factory.a("1", "getHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 96);
    }

    public Date a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(s, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if (q() == 1)
        {
            a = DateHelper.a(IsoTypeReader.h(bytebuffer));
            b = DateHelper.a(IsoTypeReader.h(bytebuffer));
            c = IsoTypeReader.b(bytebuffer);
            IsoTypeReader.b(bytebuffer);
            d = bytebuffer.getLong();
            if (d < -1L)
            {
                throw new RuntimeException("The tracks duration is bigger than Long.MAX_VALUE");
            }
        } else
        {
            a = DateHelper.a(IsoTypeReader.b(bytebuffer));
            b = DateHelper.a(IsoTypeReader.b(bytebuffer));
            c = IsoTypeReader.b(bytebuffer);
            IsoTypeReader.b(bytebuffer);
            d = IsoTypeReader.b(bytebuffer);
        }
        IsoTypeReader.b(bytebuffer);
        IsoTypeReader.b(bytebuffer);
        e = IsoTypeReader.d(bytebuffer);
        n = IsoTypeReader.d(bytebuffer);
        o = IsoTypeReader.k(bytebuffer);
        IsoTypeReader.d(bytebuffer);
        p = Matrix.a(bytebuffer);
        q = IsoTypeReader.i(bytebuffer);
        r = IsoTypeReader.i(bytebuffer);
    }

    public Date b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(t, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    public void b(ByteBuffer bytebuffer)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(C, this, this, bytebuffer);
        RequiresParseDetailAspect.a().a(joinpoint);
        d(bytebuffer);
        if (q() == 1)
        {
            IsoTypeWriter.a(bytebuffer, DateHelper.a(a));
            IsoTypeWriter.a(bytebuffer, DateHelper.a(b));
            IsoTypeWriter.b(bytebuffer, c);
            IsoTypeWriter.b(bytebuffer, 0L);
            IsoTypeWriter.a(bytebuffer, d);
        } else
        {
            IsoTypeWriter.b(bytebuffer, DateHelper.a(a));
            IsoTypeWriter.b(bytebuffer, DateHelper.a(b));
            IsoTypeWriter.b(bytebuffer, c);
            IsoTypeWriter.b(bytebuffer, 0L);
            IsoTypeWriter.b(bytebuffer, d);
        }
        IsoTypeWriter.b(bytebuffer, 0L);
        IsoTypeWriter.b(bytebuffer, 0L);
        IsoTypeWriter.b(bytebuffer, e);
        IsoTypeWriter.b(bytebuffer, n);
        IsoTypeWriter.c(bytebuffer, o);
        IsoTypeWriter.b(bytebuffer, 0);
        p.b(bytebuffer);
        IsoTypeWriter.a(bytebuffer, q);
        IsoTypeWriter.a(bytebuffer, r);
    }

    public long c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(u, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    protected long d()
    {
        long l1;
        if (q() == 1)
        {
            l1 = 4L + 32L;
        } else
        {
            l1 = 4L + 20L;
        }
        return l1 + 60L;
    }

    public long h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(v, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public int i()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(w, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return e;
    }

    public int j()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(x, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return n;
    }

    public float k()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(y, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return o;
    }

    public double l()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(A, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return q;
    }

    public double m()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(B, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return r;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(D, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackHeaderBox[");
        stringbuilder.append("creationTime=").append(a());
        stringbuilder.append(";");
        stringbuilder.append("modificationTime=").append(b());
        stringbuilder.append(";");
        stringbuilder.append("trackId=").append(c());
        stringbuilder.append(";");
        stringbuilder.append("duration=").append(h());
        stringbuilder.append(";");
        stringbuilder.append("layer=").append(i());
        stringbuilder.append(";");
        stringbuilder.append("alternateGroup=").append(j());
        stringbuilder.append(";");
        stringbuilder.append("volume=").append(k());
        stringbuilder.append(";");
        stringbuilder.append("matrix=").append(p);
        stringbuilder.append(";");
        stringbuilder.append("width=").append(l());
        stringbuilder.append(";");
        stringbuilder.append("height=").append(m());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        s();
    }
}
