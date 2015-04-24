// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            cu, da, de, hf

class qM
    implements Runnable
{

    final da qM;
    final cu qN;

    public void run()
    {
        try
        {
            qM.rq.destroy();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not destroy mediation adapter.", remoteexception);
        }
    }

    (cu cu1, da da1)
    {
        qN = cu1;
        qM = da1;
        super();
    }
}
