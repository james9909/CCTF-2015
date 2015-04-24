// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class OriginalFormatBox extends AbstractBox
{

    static final boolean a;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private String b;

    public OriginalFormatBox()
    {
        super("frma");
        b = "    ";
    }

    private static void b()
    {
        Factory factory = new Factory("OriginalFormatBox.java", com/coremedia/iso/boxes/OriginalFormatBox);
        c = factory.a("method-execution", factory.a("1", "getDataFormat", "com.coremedia.iso.boxes.OriginalFormatBox", "", "", "", "java.lang.String"), 42);
        d = factory.a("method-execution", factory.a("1", "setDataFormat", "com.coremedia.iso.boxes.OriginalFormatBox", "java.lang.String", "dataFormat", "", "void"), 47);
        e = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.OriginalFormatBox", "", "", "", "java.lang.String"), 67);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    public void a(ByteBuffer bytebuffer)
    {
        b = IsoTypeReader.m(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.put(IsoFile.a(b));
    }

    protected long d()
    {
        return 4L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(e, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("OriginalFormatBox[dataFormat=")).append(a()).append("]").toString();
    }

    static 
    {
        b();
        boolean flag;
        if (!com/coremedia/iso/boxes/OriginalFormatBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
