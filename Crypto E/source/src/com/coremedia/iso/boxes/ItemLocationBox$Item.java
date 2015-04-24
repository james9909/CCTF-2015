// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeReaderVariable;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.IsoTypeWriterVariable;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            ItemLocationBox

public class t
{

    public int a;
    public int b;
    public int c;
    public long d;
    public List e;
    final ItemLocationBox f;

    public int a()
    {
        byte byte0 = 2;
        if (f.q() == 1)
        {
            byte0 = 4;
        }
        int i = 2 + (byte0 + 2 + f.c);
        Iterator iterator = e.iterator();
        int j = i;
        do
        {
            if (!iterator.hasNext())
            {
                return j;
            }
            j += ((t)iterator.next()).a();
        } while (true);
    }

    public void a(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        if (f.q() == 1)
        {
            IsoTypeWriter.b(bytebuffer, b);
        }
        IsoTypeWriter.b(bytebuffer, c);
        if (f.c > 0)
        {
            IsoTypeWriterVariable.a(d, bytebuffer, f.c);
        }
        IsoTypeWriter.b(bytebuffer, e.size());
        Iterator iterator = e.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((t)iterator.next()).a(bytebuffer);
        } while (true);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            t.a a1 = (t.a)obj;
            if (d != a1.d)
            {
                return false;
            }
            if (b != a1.b)
            {
                return false;
            }
            if (c != a1.c)
            {
                return false;
            }
            if (a != a1.a)
            {
                return false;
            }
            if (e == null ? a1.e != null : !e.equals(a1.e))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * a + b) + c) + (int)(d ^ d >>> 32));
        int j;
        if (e != null)
        {
            j = e.hashCode();
        } else
        {
            j = 0;
        }
        return j + i;
    }

    public String toString()
    {
        return (new StringBuilder("Item{baseOffset=")).append(d).append(", itemId=").append(a).append(", constructionMethod=").append(b).append(", dataReferenceIndex=").append(c).append(", extents=").append(e).append('}').toString();
    }

    public t(ItemLocationBox itemlocationbox, ByteBuffer bytebuffer)
    {
        f = itemlocationbox;
        super();
        e = new LinkedList();
        a = IsoTypeReader.d(bytebuffer);
        if (itemlocationbox.q() == 1)
        {
            b = 0xf & IsoTypeReader.d(bytebuffer);
        }
        c = IsoTypeReader.d(bytebuffer);
        int i;
        int j;
        if (itemlocationbox.c > 0)
        {
            d = IsoTypeReaderVariable.a(bytebuffer, itemlocationbox.c);
        } else
        {
            d = 0L;
        }
        i = IsoTypeReader.d(bytebuffer);
        j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            e.add(new t(itemlocationbox, bytebuffer));
            j++;
        } while (true);
    }
}
