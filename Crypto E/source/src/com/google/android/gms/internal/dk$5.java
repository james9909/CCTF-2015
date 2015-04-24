// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            dk, dl, df, hf

class rA
    implements Runnable
{

    final com.google.ads.uest.ErrorCode rA;
    final dk rz;

    public void run()
    {
        try
        {
            dk.a(rz).onAdFailedToLoad(dl.a(rA));
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    (dk dk1, com.google.ads.uest.ErrorCode errorcode)
    {
        rz = dk1;
        rA = errorcode;
        super();
    }
}
