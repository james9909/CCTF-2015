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

public class VideoMediaHeaderBox extends AbstractMediaHeaderBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private int a;
    private int b[];

    public VideoMediaHeaderBox()
    {
        super("vmhd");
        a = 0;
        b = new int[3];
        c(1);
    }

    private static void c()
    {
        Factory factory = new Factory("VideoMediaHeaderBox.java", com/coremedia/iso/boxes/VideoMediaHeaderBox);
        c = factory.a("method-execution", factory.a("1", "getGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "int"), 39);
        d = factory.a("method-execution", factory.a("1", "getOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "[I"), 43);
        e = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "java.lang.String"), 71);
        n = factory.a("method-execution", factory.a("1", "setOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "[I", "opcolor", "", "void"), 75);
        o = factory.a("method-execution", factory.a("1", "setGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "int", "graphicsmode", "", "void"), 79);
    }

    public int a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.d(bytebuffer);
        b = new int[3];
        int i = 0;
        do
        {
            if (i >= 3)
            {
                return;
            }
            b[i] = IsoTypeReader.d(bytebuffer);
            i++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
        int ai[] = b;
        int i = ai.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            IsoTypeWriter.b(bytebuffer, ai[j]);
            j++;
        } while (true);
    }

    public int[] b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    protected long d()
    {
        return 12L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(e, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("VideoMediaHeaderBox[graphicsmode=")).append(a()).append(";opcolor0=").append(b()[0]).append(";opcolor1=").append(b()[1]).append(";opcolor2=").append(b()[2]).append("]").toString();
    }

    static 
    {
        c();
    }
}
