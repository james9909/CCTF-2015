// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part12;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class SampleAuxiliaryInformationSizesBox extends AbstractFullBox
{

    static final boolean a;
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
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    private short b;
    private short c[];
    private int d;
    private String e;
    private String n;

    public SampleAuxiliaryInformationSizesBox()
    {
        super("saiz");
        c = new short[0];
    }

    private static void a()
    {
        Factory factory = new Factory("SampleAuxiliaryInformationSizesBox.java", com/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox);
        o = factory.a("method-execution", factory.a("1", "getSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "index", "", "short"), 57);
        p = factory.a("method-execution", factory.a("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 107);
        y = factory.a("method-execution", factory.a("1", "setSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "sampleCount", "", "void"), 144);
        z = factory.a("method-execution", factory.a("1", "toString", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 149);
        q = factory.a("method-execution", factory.a("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        r = factory.a("method-execution", factory.a("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 115);
        s = factory.a("method-execution", factory.a("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        t = factory.a("method-execution", factory.a("1", "getDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 123);
        u = factory.a("method-execution", factory.a("1", "setDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "defaultSampleInfoSize", "", "void"), 127);
        v = factory.a("method-execution", factory.a("1", "getSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "[S"), 132);
        w = factory.a("method-execution", factory.a("1", "setSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "[S", "sampleInfoSizes", "", "void"), 136);
        x = factory.a("method-execution", factory.a("1", "getSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 140);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if ((1 & r()) == 1)
        {
            e = IsoTypeReader.m(bytebuffer);
            n = IsoTypeReader.m(bytebuffer);
        }
        b = (short)IsoTypeReader.f(bytebuffer);
        d = CastUtils.a(IsoTypeReader.b(bytebuffer));
        if (b != 0) goto _L2; else goto _L1
_L1:
        int i;
        c = new short[d];
        i = 0;
_L5:
        if (i < d) goto _L3; else goto _L2
_L2:
        return;
_L3:
        c[i] = (short)IsoTypeReader.f(bytebuffer);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if ((1 & r()) == 1)
        {
            bytebuffer.put(IsoFile.a(e));
            bytebuffer.put(IsoFile.a(n));
        }
        IsoTypeWriter.d(bytebuffer, b);
        if (b == 0)
        {
            IsoTypeWriter.b(bytebuffer, c.length);
            short aword0[] = c;
            int i = aword0.length;
            int j = 0;
            do
            {
                if (j >= i)
                {
                    return;
                }
                IsoTypeWriter.d(bytebuffer, aword0[j]);
                j++;
            } while (true);
        } else
        {
            IsoTypeWriter.b(bytebuffer, d);
            return;
        }
    }

    protected long d()
    {
        byte byte0 = 4;
        if ((1 & r()) == 1)
        {
            byte0 = 12;
        }
        int i = byte0 + 5;
        int j;
        if (b == 0)
        {
            j = c.length;
        } else
        {
            j = 0;
        }
        return (long)(j + i);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(z, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize=")).append(b).append(", sampleCount=").append(d).append(", auxInfoType='").append(e).append('\'').append(", auxInfoTypeParameter='").append(n).append('\'').append('}').toString();
    }

    static 
    {
        a();
        boolean flag;
        if (!com/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
