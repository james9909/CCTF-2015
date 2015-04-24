// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;

// Referenced classes of package com.snapchat.android.util:
//            SecurityUtils

static final class a
    implements Runnable
{

    final Context a;

    public void run()
    {
        CookieSyncManager.createInstance(a);
        CookieManager cookiemanager = CookieManager.getInstance();
        cookiemanager.removeAllCookie();
        cookiemanager.setAcceptCookie(false);
    }

    (Context context)
    {
        a = context;
        super();
    }
}
