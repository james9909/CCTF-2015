// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.ads:
//            AdManager

class a
    implements Runnable
{

    final String a;
    final AdManager b;

    public void run()
    {
        try
        {
            b.a(a);
            return;
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[2];
            aobj[0] = a;
            aobj[1] = exception;
            Timber.c("AdManager", "EndAdSplash for adKey:%s threw exception:%s", aobj);
            return;
        }
    }

    (AdManager admanager, String s)
    {
        b = admanager;
        a = s;
        super();
    }
}
