// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.mp4;

import com.snapchat.videotranscoder.utils.Debug;

public class SnapSegments
{

    private long a[];
    private String b;

    public SnapSegments(String s)
    {
        b = null;
        a = a(s);
        a(a);
    }

    public SnapSegments(long al[])
    {
        b = null;
        a = al;
        a(a);
    }

    private String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < -1 + a.length; i++)
        {
            stringbuilder.append(a[i]);
            stringbuilder.append(",");
        }

        int j = a.length;
        boolean flag = false;
        if (j > 0)
        {
            flag = true;
        }
        Debug.a(flag);
        stringbuilder.append(a[-1 + a.length]);
        return stringbuilder.toString();
    }

    private void a(long al[])
    {
        if (al.length == 0)
        {
            throw new IllegalArgumentException("No segment times");
        }
        long l = 0L;
        int i = al.length;
        for (int j = 0; j < i;)
        {
            long l1 = al[j];
            if (l1 < l)
            {
                throw new IllegalArgumentException("Segment times are not in correct order");
            }
            j++;
            l = l1;
        }

    }

    private long[] a(String s)
    {
        String as[] = s.split(",");
        if (as.length <= 0)
        {
            throw new IllegalArgumentException("Must contain at least one segment.");
        }
        long al[] = new long[as.length];
        int i = 0;
        while (i < as.length) 
        {
            try
            {
                al[i] = Long.parseLong(as[i]);
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new IllegalArgumentException("Segment times are not formatted correctly.", numberformatexception);
            }
            i++;
        }
        return al;
    }

    public String toString()
    {
        if (b == null)
        {
            b = a();
        }
        return b;
    }
}
