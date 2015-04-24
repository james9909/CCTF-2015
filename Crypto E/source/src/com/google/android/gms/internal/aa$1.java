// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            aa, u

class mv
    implements Runnable
{

    private final WeakReference mu;
    final u mv;
    final aa mw;

    public void run()
    {
        aa.a(mw, false);
        u u1 = (u)mu.get();
        if (u1 != null)
        {
            u1.b(aa.a(mw));
        }
    }

    (aa aa1, u u1)
    {
        mw = aa1;
        mv = u1;
        super();
        mu = new WeakReference(mv);
    }
}
