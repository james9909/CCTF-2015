// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.common.api:
//            d

final class RO extends Handler
{

    final d RO;

    public void handleMessage(Message message)
    {
        boolean flag = true;
        if (message.what != flag)
        {
            flag = false;
        }
        s.O(flag);
        RO.b((RO)message.obj);
    }

    public .s(d d1, Looper looper)
    {
        RO = d1;
        super(looper);
    }
}
