// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.List;
import java.util.Map;

public abstract class n
{

    Map a;

    public n(Map map)
    {
        a = map;
    }

    private String c(String s)
    {
        List list = (List)a.get(s);
        if (list != null)
        {
            return (String)list.get(-1 + list.size());
        } else
        {
            return null;
        }
    }

    public final long a(String s)
    {
        long l = 0x7fffffffffffffffL;
        String s1 = c(s);
        if (s1 != null)
        {
            long l1;
            try
            {
                l1 = Long.parseLong(s1);
            }
            catch (NumberFormatException numberformatexception)
            {
                return l;
            }
            l = l1;
        }
        return l;
    }

    public final int b(String s)
    {
        int i = -1;
        String s1 = c(s);
        if (s1 != null)
        {
            int j;
            try
            {
                j = Integer.parseInt(s1);
            }
            catch (NumberFormatException numberformatexception)
            {
                return i;
            }
            i = j;
        }
        return i;
    }

    public final String toString()
    {
        return a.toString();
    }
}
