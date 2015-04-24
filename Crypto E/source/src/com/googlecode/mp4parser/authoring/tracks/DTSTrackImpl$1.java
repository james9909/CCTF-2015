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
//            DTSTrackImpl

class 
    implements Sample
{

    final DTSTrackImpl a;
    private final int b;

    public long a()
    {
        return (long)a.e;
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        DTSTrackImpl.a(a).a(b, a.e, writablebytechannel);
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer;
        try
        {
            bytebuffer = DTSTrackImpl.a(a).a(b, a.e);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return bytebuffer;
    }
}
