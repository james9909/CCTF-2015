// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.mdat;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.logging.Logger;

public final class MediaDataBox
    implements Box
{

    private static Logger c = Logger.getLogger(com/coremedia/iso/boxes/mdat/MediaDataBox.getName());
    Container a;
    boolean b;
    private DataSource d;
    private long e;
    private long f;

    public MediaDataBox()
    {
        b = false;
    }

    private static void a(DataSource datasource, long l, long l1, WritableByteChannel writablebytechannel)
    {
        long l2 = 0L;
        do
        {
            if (l2 >= l1)
            {
                return;
            }
            l2 += datasource.a(l + l2, Math.min(0x3ff8000L, l1 - l2), writablebytechannel);
        } while (true);
    }

    public void a(Container container)
    {
        a = container;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        e = datasource.b() - (long)bytebuffer.remaining();
        d = datasource;
        f = l + (long)bytebuffer.remaining();
        datasource.a(l + datasource.b());
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        a(d, e, f, writablebytechannel);
    }

    public Container e()
    {
        return a;
    }

    public long f()
    {
        return f;
    }

    public String g()
    {
        return "mdat";
    }

    public String toString()
    {
        return (new StringBuilder("MediaDataBox{size=")).append(f).append('}').toString();
    }

}
