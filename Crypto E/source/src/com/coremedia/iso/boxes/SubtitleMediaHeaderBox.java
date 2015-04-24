// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.coremedia.iso.boxes:
//            AbstractMediaHeaderBox

public class SubtitleMediaHeaderBox extends AbstractMediaHeaderBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart a;

    public SubtitleMediaHeaderBox()
    {
        super("sthd");
    }

    private static void a()
    {
        Factory factory = new Factory("SubtitleMediaHeaderBox.java", com/coremedia/iso/boxes/SubtitleMediaHeaderBox);
        a = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SubtitleMediaHeaderBox", "", "", "", "java.lang.String"), 30);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
    }

    protected long d()
    {
        return 4L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(a, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return "SubtitleMediaHeaderBox";
    }

    static 
    {
        a();
    }
}
