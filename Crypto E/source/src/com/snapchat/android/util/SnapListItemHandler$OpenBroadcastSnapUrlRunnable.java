// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Intent;
import android.net.Uri;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.util:
//            SnapListItemHandler

class b
    implements Runnable
{

    final SnapListItemHandler a;
    private String b;

    public void run()
    {
        AnalyticsEvents.d(b);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b));
        intent.setFlags(0x10000000);
        SnapchatApplication.e().startActivity(intent);
    }

    public (SnapListItemHandler snaplistitemhandler, String s)
    {
        a = snaplistitemhandler;
        super();
        b = s;
    }
}
