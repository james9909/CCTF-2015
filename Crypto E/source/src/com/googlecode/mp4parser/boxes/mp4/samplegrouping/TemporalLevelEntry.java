// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            GroupEntry

public class TemporalLevelEntry extends GroupEntry
{

    private boolean a;
    private short b;

    public TemporalLevelEntry()
    {
    }

    public String a()
    {
        return "tele";
    }

    public void a(ByteBuffer bytebuffer)
    {
        boolean flag;
        if ((0x80 & bytebuffer.get()) == 128)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
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
        bytebuffer.put((byte)c);
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
            TemporalLevelEntry temporallevelentry = (TemporalLevelEntry)obj;
            if (a != temporallevelentry.a)
            {
                return false;
            }
            if (b != temporallevelentry.b)
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
        stringbuilder.append("TemporalLevelEntry");
        stringbuilder.append("{levelIndependentlyDecodable=").append(a);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
