// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;

public class ByteBufferByteChannel
    implements ByteChannel
{

    ByteBuffer a;

    public void close()
    {
    }

    public boolean isOpen()
    {
        return true;
    }

    public int read(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.remaining();
        if (a.remaining() <= 0)
        {
            return -1;
        } else
        {
            bytebuffer.put((ByteBuffer)a.duplicate().limit(a.position() + bytebuffer.remaining()));
            a.position(i + a.position());
            return i;
        }
    }

    public int write(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.remaining();
        a.put(bytebuffer);
        return i;
    }
}
