// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            GroupEntry

public class RollRecoveryEntry extends GroupEntry
{

    private short a;

    public RollRecoveryEntry()
    {
    }

    public String a()
    {
        return "roll";
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer.getShort();
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(2);
        bytebuffer.putShort(a);
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
            RollRecoveryEntry rollrecoveryentry = (RollRecoveryEntry)obj;
            if (a != rollrecoveryentry.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return a;
    }
}
