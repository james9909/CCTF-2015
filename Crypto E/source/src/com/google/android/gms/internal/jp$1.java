// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.common.data.DataHolder;

// Referenced classes of package com.google.android.gms.internal:
//            jp, jq, km, kd

class Pj
    implements Runnable
{

    final Entity Ol;
    final com.google.android.gms.common.api.mplementation.b Pj;
    final jp Pk;

    public void run()
    {
        DataHolder dataholder;
        ty ty;
        km km1;
        dataholder = jq.d(Ol);
        ty = new <init>(Pj, Ol);
        km1 = new km(dataholder);
        ((kd)Pk.jG()).a(ty, km1);
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

    ementation.b(jp jp1, Entity entity, com.google.android.gms.common.api.mplementation.b b)
    {
        Pk = jp1;
        Ol = entity;
        Pj = b;
        super();
    }
}
