// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class AlbumBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private String a;
    private String b;
    private int c;

    public AlbumBox()
    {
        super("albm");
    }

    private static void h()
    {
        Factory factory = new Factory("AlbumBox.java", com/coremedia/iso/boxes/AlbumBox);
        d = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 51);
        e = factory.a("method-execution", factory.a("1", "getAlbumTitle", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 55);
        n = factory.a("method-execution", factory.a("1", "getTrackNumber", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "int"), 59);
        o = factory.a("method-execution", factory.a("1", "setLanguage", "com.coremedia.iso.boxes.AlbumBox", "java.lang.String", "language", "", "void"), 63);
        p = factory.a("method-execution", factory.a("1", "setAlbumTitle", "com.coremedia.iso.boxes.AlbumBox", "java.lang.String", "albumTitle", "", "void"), 67);
        q = factory.a("method-execution", factory.a("1", "setTrackNumber", "com.coremedia.iso.boxes.AlbumBox", "int", "trackNumber", "", "void"), 71);
        r = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 103);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.l(bytebuffer);
        b = IsoTypeReader.g(bytebuffer);
        if (bytebuffer.remaining() > 0)
        {
            c = IsoTypeReader.f(bytebuffer);
            return;
        } else
        {
            c = -1;
            return;
        }
    }

    public String b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(e, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.a(bytebuffer, a);
        bytebuffer.put(Utf8.a(b));
        bytebuffer.put((byte)0);
        if (c != -1)
        {
            IsoTypeWriter.d(bytebuffer, c);
        }
    }

    public int c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(n, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    protected long d()
    {
        int i = 1 + (6 + Utf8.b(b));
        int j;
        if (c == -1)
        {
            j = 0;
        } else
        {
            j = 1;
        }
        return (long)(j + i);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AlbumBox[language=").append(a()).append(";");
        stringbuilder.append("albumTitle=").append(b());
        if (c >= 0)
        {
            stringbuilder.append(";trackNumber=").append(c());
        }
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        h();
    }
}
