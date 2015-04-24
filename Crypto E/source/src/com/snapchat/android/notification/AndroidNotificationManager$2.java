// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;

import android.content.Context;

// Referenced classes of package com.snapchat.android.notification:
//            AndroidNotificationManager

class b
    implements Runnable
{

    final Context a;
    final pe b;
    final AndroidNotificationManager c;

    public void run()
    {
        c.a(a, b);
    }

    pe(AndroidNotificationManager androidnotificationmanager, Context context, pe pe)
    {
        c = androidnotificationmanager;
        a = context;
        b = pe;
        super();
    }
}
