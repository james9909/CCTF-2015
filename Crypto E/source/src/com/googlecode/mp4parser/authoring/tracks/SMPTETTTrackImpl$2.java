// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.Sample;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            SMPTETTTrackImpl

class 
    implements Sample
{

    final SMPTETTTrackImpl a;
    private final File b;

    public long a()
    {
        return b.length();
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        Channels.newOutputStream(writablebytechannel).write(SMPTETTTrackImpl.a(a, new FileInputStream(b)));
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer;
        try
        {
            bytebuffer = ByteBuffer.wrap(SMPTETTTrackImpl.a(a, new FileInputStream(b)));
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return bytebuffer;
    }
}
