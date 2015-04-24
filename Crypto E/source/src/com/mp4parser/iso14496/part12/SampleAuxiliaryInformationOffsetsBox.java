// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part12;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class SampleAuxiliaryInformationOffsetsBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private long a[];
    private String b;
    private String c;

    public SampleAuxiliaryInformationOffsetsBox()
    {
        super("saio");
        a = new long[0];
    }

    private static void a()
    {
        Factory factory = new Factory("SampleAuxiliaryInformationOffsetsBox.java", com/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox);
        d = factory.a("method-execution", factory.a("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 107);
        e = factory.a("method-execution", factory.a("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        n = factory.a("method-execution", factory.a("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 115);
        o = factory.a("method-execution", factory.a("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        p = factory.a("method-execution", factory.a("1", "getOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "[J"), 123);
        q = factory.a("method-execution", factory.a("1", "setOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "[J", "offsets", "", "void"), 127);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if ((1 & r()) == 1)
        {
            b = IsoTypeReader.m(bytebuffer);
            c = IsoTypeReader.m(bytebuffer);
        }
        int i = CastUtils.a(IsoTypeReader.b(bytebuffer));
        a = new long[i];
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            if (q() == 0)
            {
                a[j] = IsoTypeReader.b(bytebuffer);
            } else
            {
                a[j] = IsoTypeReader.h(bytebuffer);
            }
            j++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if ((1 & r()) == 1)
        {
            bytebuffer.put(IsoFile.a(b));
            bytebuffer.put(IsoFile.a(c));
        }
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
            Long long1 = Long.valueOf(al[j]);
            if (q() == 0)
            {
                IsoTypeWriter.b(bytebuffer, long1.longValue());
            } else
            {
                IsoTypeWriter.a(bytebuffer, long1.longValue());
            }
            j++;
        } while (true);
    }

    protected long d()
    {
        int i;
        int j;
        byte byte0;
        if (q() == 0)
        {
            i = 4 * a.length;
        } else
        {
            i = 8 * a.length;
        }
        j = i + 8;
        if ((1 & r()) == 1)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        return (long)(byte0 + j);
    }

    static 
    {
        a();
    }
}
