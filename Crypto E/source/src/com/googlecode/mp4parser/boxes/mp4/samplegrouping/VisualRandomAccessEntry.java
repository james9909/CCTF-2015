// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            GroupEntry

public class VisualRandomAccessEntry extends GroupEntry
{

    private boolean a;
    private short b;

    public VisualRandomAccessEntry()
    {
    }

    public String a()
    {
        return "rap ";
    }

    public void a(ByteBuffer bytebuffer)
    {
        byte byte0 = bytebuffer.get();
        boolean flag;
        if ((byte0 & 0x80) == 128)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        b = (short)(byte0 & 0x7f);
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(1);
        char c;
        if (a)
        {
            c = '\200';
        } else
        {
            c = '\0';
        }
        bytebuffer.put((byte)(c | 0x7f & b));
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
            VisualRandomAccessEntry visualrandomaccessentry = (VisualRandomAccessEntry)obj;
            if (b != visualrandomaccessentry.b)
            {
                return false;
            }
            if (a != visualrandomaccessentry.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        if (a)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        return i * 31 + b;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("VisualRandomAccessEntry");
        stringbuilder.append("{numLeadingSamplesKnown=").append(a);
        stringbuilder.append(", numLeadingSamples=").append(b);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
