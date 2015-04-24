// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.util.crypto.SlightlySecurePreferences;

// Referenced classes of package com.snapchat.android:
//            SnapchatApplication

class a
    implements Runnable
{

    final SnapchatApplication a;

    public void run()
    {
        Thread.currentThread().setName("SlightlySecurePreferences.initialize");
        a.c.a();
    }

    curePreferences(SnapchatApplication snapchatapplication)
    {
        a = snapchatapplication;
        super();
    }
}
