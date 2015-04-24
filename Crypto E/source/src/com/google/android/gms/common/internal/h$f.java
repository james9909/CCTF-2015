// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

// Referenced classes of package com.google.android.gms.common.internal:
//            h

public final class Uf
    implements ServiceConnection
{

    final h Uf;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        Uf.av(ibinder);
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        Uf.mHandler.sendMessage(Uf.mHandler.obtainMessage(4, Integer.valueOf(1)));
    }

    public (h h1)
    {
        Uf = h1;
        super();
    }
}
