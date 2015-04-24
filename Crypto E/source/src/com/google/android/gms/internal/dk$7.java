// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            dk, df, hf

class rz
    implements Runnable
{

    final dk rz;

    public void run()
    {
        try
        {
            dk.a(rz).onAdOpened();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdOpened.", remoteexception);
        }
    }

    (dk dk1)
    {
        rz = dk1;
        super();
    }
}
