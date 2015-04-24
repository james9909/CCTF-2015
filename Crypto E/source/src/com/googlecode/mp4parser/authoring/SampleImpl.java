// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser.authoring:
//            Sample

public class SampleImpl
    implements Sample
{

    private final long a = -1L;
    private final long b;
    private ByteBuffer c[];
    private final Container d = null;

    public SampleImpl(ByteBuffer bytebuffer)
    {
        b = bytebuffer.limit();
        c = (new ByteBuffer[] {
            bytebuffer
        });
    }

    public long a()
    {
        return b;
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        c();
        ByteBuffer abytebuffer[] = c;
        int i = abytebuffer.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            writablebytechannel.write(abytebuffer[j].duplicate());
            j++;
        } while (true);
    }

    public ByteBuffer b()
    {
        c();
        ByteBuffer bytebuffer = ByteBuffer.wrap(new byte[CastUtils.a(b)]);
        ByteBuffer abytebuffer[] = c;
        int i = abytebuffer.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                bytebuffer.rewind();
                return bytebuffer;
            }
            bytebuffer.put(abytebuffer[j].duplicate());
            j++;
        } while (true);
    }

    protected void c()
    {
        if (c != null)
        {
            return;
        }
        if (d == null)
        {
            throw new RuntimeException((new StringBuilder("Missing parent container, can't read sample ")).append(this).toString());
        }
        try
        {
            ByteBuffer abytebuffer[] = new ByteBuffer[1];
            abytebuffer[0] = d.a(a, b);
            c = abytebuffer;
            return;
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException((new StringBuilder("couldn't read sample ")).append(this).toString(), ioexception);
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SampleImpl");
        stringbuilder.append("{offset=").append(a);
        stringbuilder.append("{size=").append(b);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
