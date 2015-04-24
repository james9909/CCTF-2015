// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import org.aspectj.runtime.internal.Conversions;
import org.aspectj.runtime.reflect.Factory;

public class SampleSizeBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    int a;
    private long b;
    private long c[];

    public SampleSizeBox()
    {
        super("stsz");
        c = new long[0];
    }

    private static void c()
    {
        Factory factory = new Factory("SampleSizeBox.java", com/coremedia/iso/boxes/SampleSizeBox);
        d = factory.a("method-execution", factory.a("1", "getSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 50);
        e = factory.a("method-execution", factory.a("1", "setSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "long", "sampleSize", "", "void"), 54);
        n = factory.a("method-execution", factory.a("1", "getSampleSizeAtIndex", "com.coremedia.iso.boxes.SampleSizeBox", "int", "index", "", "long"), 59);
        o = factory.a("method-execution", factory.a("1", "getSampleCount", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 67);
        p = factory.a("method-execution", factory.a("1", "getSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "[J"), 76);
        q = factory.a("method-execution", factory.a("1", "setSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "[J", "sampleSizes", "", "void"), 80);
        r = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "java.lang.String"), 119);
    }

    public long a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    public long a(int i)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(n, this, this, Conversions.a(i));
        RequiresParseDetailAspect.a().a(joinpoint);
        if (b > 0L)
        {
            return b;
        } else
        {
            return c[i];
        }
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        a = CastUtils.a(IsoTypeReader.b(bytebuffer));
        if (b != 0L) goto _L2; else goto _L1
_L1:
        int i;
        c = new long[a];
        i = 0;
_L5:
        if (i < a) goto _L3; else goto _L2
_L2:
        return;
_L3:
        c[i] = IsoTypeReader.b(bytebuffer);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public long b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        if (b > 0L)
        {
            return (long)a;
        } else
        {
            return (long)c.length;
        }
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, b);
        if (b == 0L)
        {
            IsoTypeWriter.b(bytebuffer, c.length);
            long al[] = c;
            int i = al.length;
            int j = 0;
            do
            {
                if (j >= i)
                {
                    return;
                }
                IsoTypeWriter.b(bytebuffer, al[j]);
                j++;
            } while (true);
        } else
        {
            IsoTypeWriter.b(bytebuffer, a);
            return;
        }
    }

    protected long d()
    {
        int i;
        if (b == 0L)
        {
            i = 4 * c.length;
        } else
        {
            i = 0;
        }
        return (long)(i + 12);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("SampleSizeBox[sampleSize=")).append(a()).append(";sampleCount=").append(b()).append("]").toString();
    }

    static 
    {
        c();
    }
}
