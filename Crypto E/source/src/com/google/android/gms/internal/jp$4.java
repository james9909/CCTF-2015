// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;

// Referenced classes of package com.google.android.gms.internal:
//            jp, jq, jt, kd

class Pj
    implements Runnable
{

    final Collection Om;
    final com.google.android.gms.common.api.mplementation.b Pj;
    final jp Pk;

    public void run()
    {
        DataHolder dataholder;
        ementation.b b;
        jt jt1;
        dataholder = jq.e(Om);
        b = new <init>(Pj, Om);
        jt1 = new jt(dataholder);
        ((kd)Pk.jG()).a(b, jt1);
        dataholder.close();
        return;
        RemoteException remoteexception;
        remoteexception;
        Log.w("CloudSaveClient", "service died");
        dataholder.close();
        return;
        Exception exception;
        exception;
        dataholder.close();
        throw exception;
    }

    ementation.b(jp jp1, Collection collection, com.google.android.gms.common.api.mplementation.b b)
    {
        Pk = jp1;
        Om = collection;
        Pj = b;
        super();
    }
}
