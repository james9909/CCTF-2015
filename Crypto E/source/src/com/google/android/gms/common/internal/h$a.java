// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

// Referenced classes of package com.google.android.gms.common.internal:
//            h, i

final class Uf extends Handler
{

    final h Uf;

    public void handleMessage(Message message)
    {
        if (message.what == 1 && !Uf.isConnecting())
        {
            ult ult1 = (Connecting)message.obj;
            ult1.jH();
            ult1.unregister();
            return;
        }
        if (message.what == 3)
        {
            h.a(Uf).b(new ConnectionResult(((Integer)message.obj).intValue(), null));
            return;
        }
        if (message.what == 4)
        {
            h.a(Uf, 4, null);
            h.a(Uf).bM(((Integer)message.obj).intValue());
            h.a(Uf, 1, null);
            return;
        }
        if (message.what == 2 && !Uf.isConnected())
        {
            ult ult = (Connected)message.obj;
            ult.jH();
            ult.unregister();
            return;
        }
        if (message.what == 2 || message.what == 1)
        {
            ((unregister)message.obj).jI();
            return;
        } else
        {
            Log.wtf("GmsClient", "Don't know how to handle this message.");
            return;
        }
    }

    public ult(h h1, Looper looper)
    {
        Uf = h1;
        super(looper);
    }
}
