// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.authoring.Sample;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            SMPTETTTrackImpl

class 
    implements Sample
{

    private final String a;
    private final List b;

    public long a()
    {
        long l = Utf8.a(a).length;
        Iterator iterator = b.iterator();
        long l1 = l;
        do
        {
            if (!iterator.hasNext())
            {
                return l1;
            }
            l1 += ((File)iterator.next()).length();
        } while (true);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        Iterator iterator;
        writablebytechannel.write(ByteBuffer.wrap(Utf8.a(a)));
        iterator = b.iterator();
_L2:
        if (!iterator.hasNext())
        {
            return;
        }
        FileInputStream fileinputstream = new FileInputStream((File)iterator.next());
        byte abyte0[] = new byte[8096];
        do
        {
            int i = fileinputstream.read(abyte0);
            if (-1 == i)
            {
                continue;
            }
            writablebytechannel.write(ByteBuffer.wrap(abyte0, 0, i));
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ByteBuffer b()
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            a(Channels.newChannel(bytearrayoutputstream));
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return ByteBuffer.wrap(bytearrayoutputstream.toByteArray());
    }
}
