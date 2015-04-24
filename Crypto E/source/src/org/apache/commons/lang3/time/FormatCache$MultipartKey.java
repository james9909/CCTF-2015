// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.Arrays;

// Referenced classes of package org.apache.commons.lang3.time:
//            FormatCache

static class keys
{

    private int hashCode;
    private final Object keys[];

    public boolean equals(Object obj)
    {
        return Arrays.equals(keys, ((keys)obj).keys);
    }

    public int hashCode()
    {
        int i = 0;
        if (hashCode == 0)
        {
            Object aobj[] = keys;
            int j = aobj.length;
            for (int k = 0; k < j; k++)
            {
                Object obj = aobj[k];
                if (obj != null)
                {
                    i = i * 7 + obj.hashCode();
                }
            }

            hashCode = i;
        }
        return hashCode;
    }

    public transient (Object aobj[])
    {
        keys = aobj;
    }
}
