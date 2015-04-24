// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.google.android.gms.auth.GoogleAuthUtil;
import java.util.concurrent.Callable;

// Referenced classes of package com.snapchat.android:
//            GoogleAuthManager, SnapchatApplication, Timber

class a
    implements Callable
{

    final GoogleAuthManager a;

    public Void a()
    {
        GoogleAuthUtil.clearToken(SnapchatApplication.e().getApplicationContext(), GoogleAuthManager.a(a));
        Timber.c("GoogleAuthManager", (new StringBuilder()).append("clearGoogleOauthToken: ").append(GoogleAuthManager.a(a)).toString(), new Object[0]);
        GoogleAuthManager.a(a, null);
        GoogleAuthManager.b(a, null);
        return null;
    }

    public Object call()
    {
        return a();
    }

    l(GoogleAuthManager googleauthmanager)
    {
        a = googleauthmanager;
        super();
    }
}
