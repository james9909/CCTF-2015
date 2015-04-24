// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.FullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.internal.Conversions;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser:
//            AbstractBox, RequiresParseDetailAspect

public abstract class AbstractFullBox extends AbstractBox
    implements FullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private int a;
    private int b;

    public AbstractFullBox(String s)
    {
        super(s);
    }

    public AbstractFullBox(String s, byte abyte0[])
    {
        super(s, abyte0);
    }

    private static void a()
    {
        Factory factory = new Factory("AbstractFullBox.java", com/googlecode/mp4parser/AbstractFullBox);
        c = factory.a("method-execution", factory.a("1", "setVersion", "com.googlecode.mp4parser.AbstractFullBox", "int", "version", "", "void"), 51);
        d = factory.a("method-execution", factory.a("1", "setFlags", "com.googlecode.mp4parser.AbstractFullBox", "int", "flags", "", "void"), 64);
    }

    public void b(int i)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this, Conversions.a(i));
        RequiresParseDetailAspect.a().a(joinpoint);
        a = i;
    }

    public final long c(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.f(bytebuffer);
        b = IsoTypeReader.c(bytebuffer);
        return 4L;
    }

    public void c(int i)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this, Conversions.a(i));
        RequiresParseDetailAspect.a().a(joinpoint);
        b = i;
    }

    public final void d(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.d(bytebuffer, a);
        IsoTypeWriter.a(bytebuffer, b);
    }

    public int q()
    {
        if (!g)
        {
            n();
        }
        return a;
    }

    public int r()
    {
        if (!g)
        {
            n();
        }
        return b;
    }

    static 
    {
        a();
    }
}
