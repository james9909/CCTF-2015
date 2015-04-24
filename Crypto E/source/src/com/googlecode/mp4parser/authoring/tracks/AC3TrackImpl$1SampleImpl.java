// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.Sample;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            AC3TrackImpl

class 
    implements Sample
{

    private final long a;
    private final long b;
    private final DataSource c;

    public long a()
    {
        return b;
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        c.a(a, b, writablebytechannel);
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer;
        try
        {
            bytebuffer = c.a(a, b);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return bytebuffer;
    }
}
