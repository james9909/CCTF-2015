// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.DateHelper;
import java.nio.ByteBuffer;
import java.util.Date;
import org.aspectj.runtime.reflect.Factory;

public class MediaHeaderBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart n;
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
    private Date a;
    private Date b;
    private long c;
    private long d;
    private String e;

    public MediaHeaderBox()
    {
        super("mdhd");
        a = new Date();
        b = new Date();
        e = "eng";
    }

    private static void j()
    {
        Factory factory = new Factory("MediaHeaderBox.java", com/coremedia/iso/boxes/MediaHeaderBox);
        n = factory.a("method-execution", factory.a("1", "getCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 46);
        o = factory.a("method-execution", factory.a("1", "getModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 50);
        x = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 118);
        p = factory.a("method-execution", factory.a("1", "getTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 54);
        q = factory.a("method-execution", factory.a("1", "getDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 58);
        r = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 62);
        s = factory.a("method-execution", factory.a("1", "setCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "creationTime", "", "void"), 79);
        t = factory.a("method-execution", factory.a("1", "setModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "modificationTime", "", "void"), 83);
        u = factory.a("method-execution", factory.a("1", "setTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "timescale", "", "void"), 87);
        v = factory.a("method-execution", factory.a("1", "setDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "duration", "", "void"), 91);
        w = factory.a("method-execution", factory.a("1", "setLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "java.lang.String", "language", "", "void"), 95);
    }

    public Date a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(n, this, this);
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
        e = IsoTypeReader.l(bytebuffer);
        IsoTypeReader.d(bytebuffer);
    }

    public Date b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
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
        IsoTypeWriter.b(bytebuffer, 0);
    }

    public long c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(p, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    protected long d()
    {
        long l;
        if (q() == 1)
        {
            l = 4L + 28L;
        } else
        {
            l = 4L + 16L;
        }
        return 2L + (l + 2L);
    }

    public long h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public String i()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return e;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(x, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("MediaHeaderBox[");
        stringbuilder.append("creationTime=").append(a());
        stringbuilder.append(";");
        stringbuilder.append("modificationTime=").append(b());
        stringbuilder.append(";");
        stringbuilder.append("timescale=").append(c());
        stringbuilder.append(";");
        stringbuilder.append("duration=").append(h());
        stringbuilder.append(";");
        stringbuilder.append("language=").append(i());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        j();
    }
}
