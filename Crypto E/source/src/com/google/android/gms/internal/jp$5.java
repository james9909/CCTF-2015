// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudsave.Query;

// Referenced classes of package com.google.android.gms.internal:
//            jp, jt, kd

class Op
    implements Runnable
{

    final Query Op;
    final com.google.android.gms.common.api.mplementation.b Pj;
    final jp Pk;

    public void run()
    {
        ementation.b b = new <init>(Pj);
        jt jt1 = new jt(Op);
        try
        {
            ((kd)Pk.jG()).a(b, jt1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("CloudSaveClient", "service died");
        }
    }

    y(jp jp1, com.google.android.gms.common.api.mplementation.b b, Query query)
    {
        Pk = jp1;
        Pj = b;
        Op = query;
        super();
    }
}
