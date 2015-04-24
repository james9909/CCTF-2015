// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            gx

final class <init> extends BroadcastReceiver
{

    final gx xB;

    public void onReceive(Context context, Intent intent)
    {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction()))
        {
            gx.a(xB, true);
        } else
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()))
        {
            gx.a(xB, false);
            return;
        }
    }

    private (gx gx1)
    {
        xB = gx1;
        super();
    }

    it>(gx gx1, it> it>)
    {
        this(gx1);
    }
}
