// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.Hex;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            GroupEntry

public class UnknownEntry extends GroupEntry
{

    private ByteBuffer a;
    private String b;

    public UnknownEntry(String s)
    {
        b = s;
    }

    public String a()
    {
        return b;
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = (ByteBuffer)bytebuffer.duplicate().rewind();
    }

    public ByteBuffer b()
    {
        return a.duplicate();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            UnknownEntry unknownentry = (UnknownEntry)obj;
            if (a == null ? unknownentry.a != null : !a.equals(unknownentry.a))
            {
                return false;
            }
        }
        return true;
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

    public String toString()
    {
        ByteBuffer bytebuffer = a.duplicate();
        bytebuffer.rewind();
        byte abyte0[] = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte0);
        return (new StringBuilder("UnknownEntry{content=")).append(Hex.a(abyte0)).append('}').toString();
    }
}
