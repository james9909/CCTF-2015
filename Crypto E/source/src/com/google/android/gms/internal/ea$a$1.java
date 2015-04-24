// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            ea

class ti
    implements Runnable
{

    private final WeakReference th;
    final ea ti;
    final  tj;

    public void run()
    {
        ea ea1 = (ea)th.get();
        if (!th(tj) && ea1 != null)
        {
            ea1.cz();
            tj.();
        }
    }

    ( , ea ea1)
    {
        tj = ;
        ti = ea1;
        super();
        th = new WeakReference(ti);
    }
}
