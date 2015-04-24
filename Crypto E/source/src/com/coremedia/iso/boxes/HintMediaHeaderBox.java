// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.coremedia.iso.boxes:
//            AbstractMediaHeaderBox

public class HintMediaHeaderBox extends AbstractMediaHeaderBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private int a;
    private int b;
    private long c;
    private long d;

    public HintMediaHeaderBox()
    {
        super("hmhd");
    }

    private static void a()
    {
        Factory factory = new Factory("HintMediaHeaderBox.java", com/coremedia/iso/boxes/HintMediaHeaderBox);
        e = factory.a("method-execution", factory.a("1", "getMaxPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 42);
        n = factory.a("method-execution", factory.a("1", "getAvgPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 46);
        o = factory.a("method-execution", factory.a("1", "getMaxBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 50);
        p = factory.a("method-execution", factory.a("1", "getAvgBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 54);
        q = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "java.lang.String"), 84);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.d(bytebuffer);
        b = IsoTypeReader.d(bytebuffer);
        c = IsoTypeReader.b(bytebuffer);
        d = IsoTypeReader.b(bytebuffer);
        IsoTypeReader.b(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.b(bytebuffer, d);
        IsoTypeWriter.b(bytebuffer, 0L);
    }

    protected long d()
    {
        return 20L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("HintMediaHeaderBox{maxPduSize=")).append(a).append(", avgPduSize=").append(b).append(", maxBitrate=").append(c).append(", avgBitrate=").append(d).append('}').toString();
    }

    static 
    {
        a();
    }
}
