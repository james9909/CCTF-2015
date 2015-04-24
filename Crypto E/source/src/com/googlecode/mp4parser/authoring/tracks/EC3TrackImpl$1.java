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
//            EC3TrackImpl

class 
    implements Sample
{

    final EC3TrackImpl a;
    private final int b;

    public long a()
    {
        return (long)EC3TrackImpl.b(a);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        EC3TrackImpl.a(a).a(b, EC3TrackImpl.b(a), writablebytechannel);
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer;
        try
        {
            bytebuffer = EC3TrackImpl.a(a).a(b, EC3TrackImpl.b(a));
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return bytebuffer;
    }
}
