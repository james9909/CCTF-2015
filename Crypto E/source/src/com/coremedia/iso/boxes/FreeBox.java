// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            Box, Container

public class FreeBox
    implements Box
{

    static final boolean c;
    ByteBuffer a;
    List b;
    private Container d;
    private long e;

    public FreeBox()
    {
        b = new LinkedList();
        a = ByteBuffer.wrap(new byte[0]);
    }

    public ByteBuffer a()
    {
        if (a != null)
        {
            return (ByteBuffer)a.duplicate().rewind();
        } else
        {
            return null;
        }
    }

    public void a(Container container)
    {
        d = container;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        e = datasource.b() - (long)bytebuffer.remaining();
        if (l > 0x100000L)
        {
            a = datasource.a(datasource.b(), l);
            datasource.a(l + datasource.b());
            return;
        }
        if (!c && l >= 0x7fffffffL)
        {
            throw new AssertionError();
        } else
        {
            a = ByteBuffer.allocate(CastUtils.a(l));
            datasource.a(a);
            return;
        }
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                ByteBuffer bytebuffer = ByteBuffer.allocate(8);
                IsoTypeWriter.b(bytebuffer, 8 + a.limit());
                bytebuffer.put("free".getBytes());
                bytebuffer.rewind();
                writablebytechannel.write(bytebuffer);
                bytebuffer.rewind();
                a.rewind();
                writablebytechannel.write(a);
                a.rewind();
                return;
            }
            ((Box)iterator.next()).a(writablebytechannel);
        } while (true);
    }

    public Container e()
    {
        return d;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            FreeBox freebox = (FreeBox)obj;
            if (a() == null ? freebox.a() != null : !a().equals(freebox.a()))
            {
                return false;
            }
        }
        return true;
    }

    public long f()
    {
        Iterator iterator = b.iterator();
        long l = 8L;
        do
        {
            if (!iterator.hasNext())
            {
                return l + (long)a.limit();
            }
            l += ((Box)iterator.next()).f();
        } while (true);
    }

    public String g()
    {
        return "free";
    }

    public int hashCode()
    {
        if (a != null)
        {
            return a.hashCode();
        } else
        {
            return 0;
        }
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/FreeBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }
}
