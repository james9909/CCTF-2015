// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            EditListBox

public static class a
{

    EditListBox a;
    private long b;
    private long c;
    private double d;

    public void a(ByteBuffer bytebuffer)
    {
        if (a.q() == 1)
        {
            IsoTypeWriter.a(bytebuffer, b);
            bytebuffer.putLong(c);
        } else
        {
            IsoTypeWriter.b(bytebuffer, CastUtils.a(b));
            bytebuffer.putInt(CastUtils.a(c));
        }
        IsoTypeWriter.a(bytebuffer, d);
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
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (int)(b ^ b >>> 32) + (int)(c ^ c >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder("Entry{segmentDuration=")).append(b).append(", mediaTime=").append(c).append(", mediaRate=").append(d).append('}').toString();
    }

    public (EditListBox editlistbox, ByteBuffer bytebuffer)
    {
        if (editlistbox.q() == 1)
        {
            b = IsoTypeReader.h(bytebuffer);
            c = bytebuffer.getLong();
            d = IsoTypeReader.i(bytebuffer);
        } else
        {
            b = IsoTypeReader.b(bytebuffer);
            c = bytebuffer.getInt();
            d = IsoTypeReader.i(bytebuffer);
        }
        a = editlistbox;
    }
}
