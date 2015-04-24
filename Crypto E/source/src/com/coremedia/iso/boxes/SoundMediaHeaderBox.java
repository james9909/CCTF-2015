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

public class SoundMediaHeaderBox extends AbstractMediaHeaderBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private float a;

    public SoundMediaHeaderBox()
    {
        super("smhd");
    }

    private static void b()
    {
        Factory factory = new Factory("SoundMediaHeaderBox.java", com/coremedia/iso/boxes/SoundMediaHeaderBox);
        b = factory.a("method-execution", factory.a("1", "getBalance", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "float"), 36);
        c = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "java.lang.String"), 58);
    }

    public float a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(b, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.k(bytebuffer);
        IsoTypeReader.d(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.c(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, 0);
    }

    protected long d()
    {
        return 8L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("SoundMediaHeaderBox[balance=")).append(a()).append("]").toString();
    }

    static 
    {
        b();
    }
}
