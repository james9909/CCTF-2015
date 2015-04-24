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

public class MovieHeaderBox extends AbstractFullBox
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
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    private Date a;
    private Date b;
    private long c;
    private long d;
    private double e;
    private float n;
    private Matrix o;
    private long p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;

    public MovieHeaderBox()
    {
        super("mvhd");
        e = 1.0D;
        n = 1.0F;
        o = Matrix.j;
    }

    private static void l()
    {
        Factory factory = new Factory("MovieHeaderBox.java", com/coremedia/iso/boxes/MovieHeaderBox);
        w = factory.a("method-execution", factory.a("1", "getCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 63);
        x = factory.a("method-execution", factory.a("1", "getModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 67);
        G = factory.a("method-execution", factory.a("1", "setModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "modificationTime", "", "void"), 203);
        H = factory.a("method-execution", factory.a("1", "setTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "timescale", "", "void"), 211);
        I = factory.a("method-execution", factory.a("1", "setDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "duration", "", "void"), 215);
        J = factory.a("method-execution", factory.a("1", "setRate", "com.coremedia.iso.boxes.MovieHeaderBox", "double", "rate", "", "void"), 222);
        K = factory.a("method-execution", factory.a("1", "setVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "float", "volume", "", "void"), 226);
        L = factory.a("method-execution", factory.a("1", "setMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 230);
        M = factory.a("method-execution", factory.a("1", "setNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "nextTrackId", "", "void"), 234);
        N = factory.a("method-execution", factory.a("1", "getPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 238);
        O = factory.a("method-execution", factory.a("1", "setPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewTime", "", "void"), 242);
        P = factory.a("method-execution", factory.a("1", "getPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 246);
        y = factory.a("method-execution", factory.a("1", "getTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 71);
        Q = factory.a("method-execution", factory.a("1", "setPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewDuration", "", "void"), 250);
        R = factory.a("method-execution", factory.a("1", "getPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 254);
        S = factory.a("method-execution", factory.a("1", "setPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "posterTime", "", "void"), 258);
        T = factory.a("method-execution", factory.a("1", "getSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 262);
        U = factory.a("method-execution", factory.a("1", "setSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionTime", "", "void"), 266);
        V = factory.a("method-execution", factory.a("1", "getSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 270);
        W = factory.a("method-execution", factory.a("1", "setSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionDuration", "", "void"), 274);
        X = factory.a("method-execution", factory.a("1", "getCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 278);
        Y = factory.a("method-execution", factory.a("1", "setCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "currentTime", "", "void"), 282);
        z = factory.a("method-execution", factory.a("1", "getDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 75);
        A = factory.a("method-execution", factory.a("1", "getRate", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "double"), 79);
        B = factory.a("method-execution", factory.a("1", "getVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "float"), 83);
        C = factory.a("method-execution", factory.a("1", "getMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 87);
        D = factory.a("method-execution", factory.a("1", "getNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 91);
        E = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.lang.String"), 139);
        F = factory.a("method-execution", factory.a("1", "setCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "creationTime", "", "void"), 195);
    }

    public Date a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(w, this, this);
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
            d = IsoTypeReader.h(bytebuffer);
        } else
        {
            a = DateHelper.a(IsoTypeReader.b(bytebuffer));
            b = DateHelper.a(IsoTypeReader.b(bytebuffer));
            c = IsoTypeReader.b(bytebuffer);
            d = IsoTypeReader.b(bytebuffer);
        }
        e = IsoTypeReader.i(bytebuffer);
        n = IsoTypeReader.k(bytebuffer);
        IsoTypeReader.d(bytebuffer);
        IsoTypeReader.b(bytebuffer);
        IsoTypeReader.b(bytebuffer);
        o = Matrix.a(bytebuffer);
        q = bytebuffer.getInt();
        r = bytebuffer.getInt();
        s = bytebuffer.getInt();
        t = bytebuffer.getInt();
        u = bytebuffer.getInt();
        v = bytebuffer.getInt();
        p = IsoTypeReader.b(bytebuffer);
    }

    public Date b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(x, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if (q() == 1)
        {
            IsoTypeWriter.a(bytebuffer, DateHelper.a(a));
            IsoTypeWriter.a(bytebuffer, DateHelper.a(b));
            IsoTypeWriter.b(bytebuffer, c);
            IsoTypeWriter.a(bytebuffer, d);
        } else
        {
            IsoTypeWriter.b(bytebuffer, DateHelper.a(a));
            IsoTypeWriter.b(bytebuffer, DateHelper.a(b));
            IsoTypeWriter.b(bytebuffer, c);
            IsoTypeWriter.b(bytebuffer, d);
        }
        IsoTypeWriter.a(bytebuffer, e);
        IsoTypeWriter.c(bytebuffer, n);
        IsoTypeWriter.b(bytebuffer, 0);
        IsoTypeWriter.b(bytebuffer, 0L);
        IsoTypeWriter.b(bytebuffer, 0L);
        o.b(bytebuffer);
        bytebuffer.putInt(q);
        bytebuffer.putInt(r);
        bytebuffer.putInt(s);
        bytebuffer.putInt(t);
        bytebuffer.putInt(u);
        bytebuffer.putInt(v);
        IsoTypeWriter.b(bytebuffer, p);
    }

    public long c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(y, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    protected long d()
    {
        long l1;
        if (q() == 1)
        {
            l1 = 4L + 28L;
        } else
        {
            l1 = 4L + 16L;
        }
        return l1 + 80L;
    }

    public long h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(z, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public double i()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(A, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return e;
    }

    public float j()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(B, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return n;
    }

    public long k()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(D, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return p;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(E, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("MovieHeaderBox[");
        stringbuilder.append("creationTime=").append(a());
        stringbuilder.append(";");
        stringbuilder.append("modificationTime=").append(b());
        stringbuilder.append(";");
        stringbuilder.append("timescale=").append(c());
        stringbuilder.append(";");
        stringbuilder.append("duration=").append(h());
        stringbuilder.append(";");
        stringbuilder.append("rate=").append(i());
        stringbuilder.append(";");
        stringbuilder.append("volume=").append(j());
        stringbuilder.append(";");
        stringbuilder.append("matrix=").append(o);
        stringbuilder.append(";");
        stringbuilder.append("nextTrackId=").append(k());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        l();
    }
}
