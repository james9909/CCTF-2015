// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.io.Serializable;

// Referenced classes of package org.joda.time.chrono:
//            IslamicChronology

public static class b
    implements Serializable
{

    final byte a;
    final int b;

    boolean a(int i)
    {
        return (1 << i % 30 & b) > 0;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof b;
        boolean flag1 = false;
        if (flag)
        {
            byte byte0 = a;
            byte byte1 = ((a)obj).a;
            flag1 = false;
            if (byte0 == byte1)
            {
                flag1 = true;
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        return a;
    }

    (int i, int j)
    {
        a = (byte)i;
        b = j;
    }
}
