// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.coremedia.iso.boxes:
//            ChunkOffsetBox

public class StaticChunkOffsetBox extends ChunkOffsetBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private long a[];

    public StaticChunkOffsetBox()
    {
        super("stco");
        a = new long[0];
    }

    private static void b()
    {
        Factory factory = new Factory("StaticChunkOffsetBox.java", com/coremedia/iso/boxes/StaticChunkOffsetBox);
        b = factory.a("method-execution", factory.a("1", "getChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "", "", "", "[J"), 39);
        c = factory.a("method-execution", factory.a("1", "setChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "[J", "chunkOffsets", "", "void"), 47);
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

    public void a(long al[])
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this, al);
        RequiresParseDetailAspect.a().a(joinpoint);
        a = al;
    }

    public long[] a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(b, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
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

    static 
    {
        b();
    }
}
