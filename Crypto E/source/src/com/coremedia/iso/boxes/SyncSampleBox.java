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
import org.aspectj.runtime.reflect.Factory;

public class SyncSampleBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private long a[];

    public SyncSampleBox()
    {
        super("stss");
    }

    private static void a()
    {
        Factory factory = new Factory("SyncSampleBox.java", com/coremedia/iso/boxes/SyncSampleBox);
        b = factory.a("method-execution", factory.a("1", "getSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "[J"), 46);
        c = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "java.lang.String"), 77);
        d = factory.a("method-execution", factory.a("1", "setSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "[J", "sampleNumber", "", "void"), 81);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        int i = CastUtils.a(IsoTypeReader.b(bytebuffer));
        a = new long[i];
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            a[j] = IsoTypeReader.b(bytebuffer);
            j++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a.length);
        long al[] = a;
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
    }

    protected long d()
    {
        return (long)(8 + 4 * a.length);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("SyncSampleBox[entryCount=")).append(a.length).append("]").toString();
    }

    static 
    {
        a();
    }
}
