// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.mp4;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

// Referenced classes of package com.snapchat.videotranscoder.mp4:
//            SnapSegments

public class SnapSegmentsBox extends AbstractFullBox
{

    private SnapSegments a;

    public SnapSegmentsBox()
    {
        super("sseg");
        b(1);
    }

    public void a(SnapSegments snapsegments)
    {
        a = snapsegments;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if (q() != 1)
        {
            throw new IllegalStateException("Version does not match expected value.");
        } else
        {
            a = new SnapSegments(IsoTypeReader.a(bytebuffer, bytebuffer.remaining()));
            return;
        }
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(Utf8.a(a.toString()));
    }

    protected long d()
    {
        return (long)(4 + Utf8.b(a.toString()));
    }

    public String toString()
    {
        return (new StringBuilder()).append("SnapSegmentsBox[segmentTimesMs=").append(a.toString()).append("]").toString();
    }
}
