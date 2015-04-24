// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.common.api:
//            c

static class RM extends BroadcastReceiver
{

    private WeakReference RM;

    public void onReceive(Context context, Intent intent)
    {
        Uri uri = intent.getData();
        String s = null;
        if (uri != null)
        {
            s = uri.getSchemeSpecificPart();
        }
        c c1;
        if (s != null && s.equals("com.google.android.gms"))
        {
            if ((c1 = (c)RM.get()) != null && !c1.isConnected() && !c1.isConnecting() && c1.jb())
            {
                c1.connect();
                return;
            }
        }
    }

    (c c1)
    {
        RM = new WeakReference(c1);
    }
}
