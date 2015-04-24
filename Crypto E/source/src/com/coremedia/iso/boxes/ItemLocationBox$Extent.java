// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReaderVariable;
import com.coremedia.iso.IsoTypeWriterVariable;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            ItemLocationBox

public class b
{

    public long a;
    public long b;
    public long c;
    final ItemLocationBox d;

    public int a()
    {
        int i;
        if (d.d > 0)
        {
            i = d.d;
        } else
        {
            i = 0;
        }
        return i + d.a + d.b;
    }

    public void a(ByteBuffer bytebuffer)
    {
        if (d.q() == 1 && d.d > 0)
        {
            IsoTypeWriterVariable.a(c, bytebuffer, d.d);
        }
        IsoTypeWriterVariable.a(a, bytebuffer, d.a);
        IsoTypeWriterVariable.a(b, bytebuffer, d.b);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            d d1 = (d)obj;
            if (c != d1.c)
            {
                return false;
            }
            if (b != d1.b)
            {
                return false;
            }
            if (a != d1.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Extent");
        stringbuilder.append("{extentOffset=").append(a);
        stringbuilder.append(", extentLength=").append(b);
        stringbuilder.append(", extentIndex=").append(c);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public (ItemLocationBox itemlocationbox, ByteBuffer bytebuffer)
    {
        d = itemlocationbox;
        super();
        if (itemlocationbox.q() == 1 && itemlocationbox.d > 0)
        {
            c = IsoTypeReaderVariable.a(bytebuffer, itemlocationbox.d);
        }
        a = IsoTypeReaderVariable.a(bytebuffer, itemlocationbox.a);
        b = IsoTypeReaderVariable.a(bytebuffer, itemlocationbox.b);
    }
}
