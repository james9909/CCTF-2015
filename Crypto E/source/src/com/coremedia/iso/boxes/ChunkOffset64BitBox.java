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

public class ChunkOffset64BitBox extends ChunkOffsetBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private long a[];

    public ChunkOffset64BitBox()
    {
        super("co64");
    }

    private static void b()
    {
        Factory factory = new Factory("ChunkOffset64BitBox.java", com/coremedia/iso/boxes/ChunkOffset64BitBox);
        b = factory.a("method-execution", factory.a("1", "getChunkOffsets", "com.coremedia.iso.boxes.ChunkOffset64BitBox", "", "", "", "[J"), 23);
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
            a[j] = IsoTypeReader.h(bytebuffer);
            j++;
        } while (true);
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
            IsoTypeWriter.a(bytebuffer, al[j]);
            j++;
        } while (true);
    }

    protected long d()
    {
        return (long)(8 + 8 * a.length);
    }

    static 
    {
        b();
    }
}
