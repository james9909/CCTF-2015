// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.r;
import java.util.ArrayList;

public final class lt
{

    public static int a(Object aobj[], Object obj)
    {
        int i = 0;
        int j;
        if (aobj != null)
        {
            j = aobj.length;
        } else
        {
            j = 0;
            i = 0;
        }
        for (; i < j; i++)
        {
            if (r.equal(aobj[i], obj))
            {
                return i;
            }
        }

        return -1;
    }

    public static void a(StringBuilder stringbuilder, double ad[])
    {
        int i = ad.length;
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Double.toString(ad[j]));
        }

    }

    public static void a(StringBuilder stringbuilder, float af[])
    {
        int i = af.length;
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Float.toString(af[j]));
        }

    }

    public static void a(StringBuilder stringbuilder, int ai[])
    {
        int i = ai.length;
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Integer.toString(ai[j]));
        }

    }

    public static void a(StringBuilder stringbuilder, long al[])
    {
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Long.toString(al[j]));
        }

    }

    public static void a(StringBuilder stringbuilder, Object aobj[])
    {
        int i = aobj.length;
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(aobj[j].toString());
        }

    }

    public static void a(StringBuilder stringbuilder, String as[])
    {
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append("\"").append(as[j]).append("\"");
        }

    }

    public static void a(StringBuilder stringbuilder, boolean aflag[])
    {
        int i = aflag.length;
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Boolean.toString(aflag[j]));
        }

    }

    public static Integer[] a(int ai[])
    {
        Integer ainteger[];
        if (ai == null)
        {
            ainteger = null;
        } else
        {
            int i = ai.length;
            ainteger = new Integer[i];
            int j = 0;
            while (j < i) 
            {
                ainteger[j] = Integer.valueOf(ai[j]);
                j++;
            }
        }
        return ainteger;
    }

    public static ArrayList b(Object aobj[])
    {
        int i = aobj.length;
        ArrayList arraylist = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            arraylist.add(aobj[j]);
        }

        return arraylist;
    }

    public static boolean b(Object aobj[], Object obj)
    {
        return a(aobj, obj) >= 0;
    }

    public static ArrayList ko()
    {
        return new ArrayList();
    }
}
