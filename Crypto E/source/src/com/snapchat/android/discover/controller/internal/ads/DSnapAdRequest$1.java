// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.ads;

import java.util.TimerTask;

// Referenced classes of package com.snapchat.android.discover.controller.internal.ads:
//            DSnapAdRequest

class a extends TimerTask
{

    final DSnapAdRequest a;

    public void run()
    {
label0:
        {
            synchronized (DSnapAdRequest.a(a))
            {
                if (!DSnapAdRequest.b(a))
                {
                    break label0;
                }
            }
            return;
        }
        DSnapAdRequest.a(a, null);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (DSnapAdRequest dsnapadrequest)
    {
        a = dsnapadrequest;
        super();
    }
}
