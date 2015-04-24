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
//            AACTrackImpl

class 
    implements Sample
{

    final AACTrackImpl a;
    private final long b;
    private final long c;

    public long a()
    {
        return c;
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        AACTrackImpl.a(a).a(b, c, writablebytechannel);
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer;
        try
        {
            bytebuffer = AACTrackImpl.a(a).a(b, c);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return bytebuffer;
    }
}
