// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            GroupEntry

public class RateShareEntry extends GroupEntry
{
    public static class Entry
    {

        int a;
        short b;

        public int a()
        {
            return a;
        }

        public short b()
        {
            return b;
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                Entry entry = (Entry)obj;
                if (a != entry.a)
                {
                    return false;
                }
                if (b != entry.b)
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * a + b;
        }

        public String toString()
        {
            return (new StringBuilder("{availableBitrate=")).append(a).append(", targetRateShare=").append(b).append('}').toString();
        }

        public Entry(int i, short word0)
        {
            a = i;
            b = word0;
        }
    }


    private short a;
    private short b;
    private List c;
    private int d;
    private int e;
    private short f;

    public RateShareEntry()
    {
        c = new LinkedList();
    }

    public String a()
    {
        return "rash";
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer.getShort();
        if (a != 1) goto _L2; else goto _L1
_L1:
        b = bytebuffer.getShort();
_L4:
        d = CastUtils.a(IsoTypeReader.b(bytebuffer));
        e = CastUtils.a(IsoTypeReader.b(bytebuffer));
        f = (short)IsoTypeReader.f(bytebuffer);
        return;
_L2:
        int i = a;
        do
        {
            int j = i - 1;
            if (i <= 0)
            {
                continue;
            }
            c.add(new Entry(CastUtils.a(IsoTypeReader.b(bytebuffer)), bytebuffer.getShort()));
            i = j;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public ByteBuffer b()
    {
        int i;
        ByteBuffer bytebuffer;
        if (a == 1)
        {
            i = 13;
        } else
        {
            i = 11 + 6 * a;
        }
        bytebuffer = ByteBuffer.allocate(i);
        bytebuffer.putShort(a);
        if (a == 1)
        {
            bytebuffer.putShort(b);
        } else
        {
            Iterator iterator = c.iterator();
            while (iterator.hasNext()) 
            {
                Entry entry = (Entry)iterator.next();
                bytebuffer.putInt(entry.a());
                bytebuffer.putShort(entry.b());
            }
        }
        bytebuffer.putInt(d);
        bytebuffer.putInt(e);
        IsoTypeWriter.d(bytebuffer, f);
        bytebuffer.rewind();
        return bytebuffer;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            RateShareEntry rateshareentry = (RateShareEntry)obj;
            if (f != rateshareentry.f)
            {
                return false;
            }
            if (d != rateshareentry.d)
            {
                return false;
            }
            if (e != rateshareentry.e)
            {
                return false;
            }
            if (a != rateshareentry.a)
            {
                return false;
            }
            if (b != rateshareentry.b)
            {
                return false;
            }
            if (c == null ? rateshareentry.c != null : !c.equals(rateshareentry.c))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 31 * (31 * a + b);
        int j;
        if (c != null)
        {
            j = c.hashCode();
        } else
        {
            j = 0;
        }
        return 31 * (31 * (31 * (j + i) + d) + e) + f;
    }
}
