// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.util.Comparator;

// Referenced classes of package com.flurry.sdk:
//            ef, fd, el

public class ee
    implements Comparator
{

    private static final String a = com/flurry/sdk/ee.getSimpleName();

    public ee()
    {
    }

    private int a(Runnable runnable)
    {
label0:
        {
            int i = 0x7fffffff;
            if (runnable != null)
            {
                if (!(runnable instanceof ef))
                {
                    break label0;
                }
                fd fd1 = (fd)((ef)runnable).a();
                int j;
                if (fd1 != null)
                {
                    j = fd1.i();
                } else
                {
                    j = i;
                }
                i = j;
            }
            return i;
        }
        if (runnable instanceof fd)
        {
            return ((fd)runnable).i();
        } else
        {
            el.a(6, a, (new StringBuilder()).append("Unknown runnable class: ").append(runnable.getClass().getName()).toString());
            return i;
        }
    }

    public int a(Runnable runnable, Runnable runnable1)
    {
        int i = a(runnable);
        int j = a(runnable1);
        if (i < j)
        {
            return -1;
        }
        return i <= j ? 0 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Runnable)obj, (Runnable)obj1);
    }

}
