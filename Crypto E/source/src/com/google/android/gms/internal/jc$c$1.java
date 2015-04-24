// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            jc

class NA
    implements Runnable
{

    final int NA;
    final NA NB;

    public void run()
    {
        if (jc.e(NB.) != null)
        {
            jc.e(NB.).onApplicationDisconnected(NA);
        }
    }

    er(er er, int i)
    {
        NB = er;
        NA = i;
        super();
    }
}
