// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public final class OmaDrmAccessUnitFormatBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private boolean a;
    private byte b;
    private int c;
    private int d;

    public OmaDrmAccessUnitFormatBox()
    {
        super("odaf");
    }

    private static void a()
    {
        Factory factory = new Factory("OmaDrmAccessUnitFormatBox.java", com/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox);
        e = factory.a("method-execution", factory.a("1", "isSelectiveEncryption", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "boolean"), 46);
        n = factory.a("method-execution", factory.a("1", "getKeyIndicatorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "int"), 50);
        o = factory.a("method-execution", factory.a("1", "getInitVectorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "int"), 54);
        p = factory.a("method-execution", factory.a("1", "setInitVectorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "int", "initVectorLength", "", "void"), 58);
        q = factory.a("method-execution", factory.a("1", "setKeyIndicatorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "int", "keyIndicatorLength", "", "void"), 62);
        r = factory.a("method-execution", factory.a("1", "setAllBits", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "byte", "allBits", "", "void"), 66);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        b = (byte)IsoTypeReader.f(bytebuffer);
        boolean flag;
        if ((0x80 & b) == 128)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        c = IsoTypeReader.f(bytebuffer);
        d = IsoTypeReader.f(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.d(bytebuffer, b);
        IsoTypeWriter.d(bytebuffer, c);
        IsoTypeWriter.d(bytebuffer, d);
    }

    protected long d()
    {
        return 7L;
    }

    static 
    {
        a();
    }
}
