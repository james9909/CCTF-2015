// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class SchemeTypeBox extends AbstractFullBox
{

    static final boolean d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    String a;
    long b;
    String c;

    public SchemeTypeBox()
    {
        super("schm");
        a = "    ";
        c = null;
    }

    private static void a()
    {
        Factory factory = new Factory("SchemeTypeBox.java", com/coremedia/iso/boxes/SchemeTypeBox);
        e = factory.a("method-execution", factory.a("1", "getSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 44);
        n = factory.a("method-execution", factory.a("1", "getSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "long"), 48);
        o = factory.a("method-execution", factory.a("1", "getSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 52);
        p = factory.a("method-execution", factory.a("1", "setSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeType", "", "void"), 56);
        q = factory.a("method-execution", factory.a("1", "setSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "int", "schemeVersion", "", "void"), 61);
        r = factory.a("method-execution", factory.a("1", "setSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeUri", "", "void"), 65);
        s = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 93);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.m(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        if ((1 & r()) == 1)
        {
            c = IsoTypeReader.g(bytebuffer);
        }
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(IsoFile.a(a));
        IsoTypeWriter.b(bytebuffer, b);
        if ((1 & r()) == 1)
        {
            bytebuffer.put(Utf8.a(c));
        }
    }

    protected long d()
    {
        int i;
        if ((1 & r()) == 1)
        {
            i = 1 + Utf8.b(c);
        } else
        {
            i = 0;
        }
        return (long)(i + 12);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(s, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Schema Type Box[");
        stringbuilder.append("schemeUri=").append(c).append("; ");
        stringbuilder.append("schemeType=").append(a).append("; ");
        stringbuilder.append("schemeVersion=").append(b).append("; ");
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        a();
        boolean flag;
        if (!com/coremedia/iso/boxes/SchemeTypeBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
    }
}
