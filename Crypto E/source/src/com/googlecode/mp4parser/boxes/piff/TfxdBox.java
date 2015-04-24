// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TfxdBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    public long a;
    public long b;

    public TfxdBox()
    {
        super("uuid");
    }

    private static void a()
    {
        Factory factory = new Factory("TfxdBox.java", com/googlecode/mp4parser/boxes/piff/TfxdBox);
        c = factory.a("method-execution", factory.a("1", "getFragmentAbsoluteTime", "com.googlecode.mp4parser.boxes.piff.TfxdBox", "", "", "", "long"), 79);
        d = factory.a("method-execution", factory.a("1", "getFragmentAbsoluteDuration", "com.googlecode.mp4parser.boxes.piff.TfxdBox", "", "", "", "long"), 83);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if (q() == 1)
        {
            a = IsoTypeReader.h(bytebuffer);
            b = IsoTypeReader.h(bytebuffer);
            return;
        } else
        {
            a = IsoTypeReader.b(bytebuffer);
            b = IsoTypeReader.b(bytebuffer);
            return;
        }
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if (q() == 1)
        {
            IsoTypeWriter.a(bytebuffer, a);
            IsoTypeWriter.a(bytebuffer, b);
            return;
        } else
        {
            IsoTypeWriter.b(bytebuffer, a);
            IsoTypeWriter.b(bytebuffer, b);
            return;
        }
    }

    protected long d()
    {
        int i;
        if (q() == 1)
        {
            i = 20;
        } else
        {
            i = 12;
        }
        return (long)i;
    }

    public byte[] o()
    {
        return (new byte[] {
            109, 29, -101, 5, 66, -43, 68, -26, -128, -30, 
            20, 29, -81, -9, 87, -78
        });
    }

    static 
    {
        a();
    }
}
