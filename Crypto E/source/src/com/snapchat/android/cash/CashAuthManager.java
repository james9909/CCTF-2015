// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeys;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.LogoutEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.cash:
//            CashAuthToken

public class CashAuthManager
{

    protected SlightlySecurePreferences a;
    protected GsonWrapper b;
    private CashAuthToken c;

    protected CashAuthManager()
    {
        BusProvider.a().c(this);
    }

    public CashAuthToken a()
    {
        if (c == null)
        {
            String s = a.a(SlightlySecurePreferencesKeys.f);
            c = (CashAuthToken)b.a(s, com/snapchat/android/cash/CashAuthToken);
        }
        return c;
    }

    public void a(CashAuthToken cashauthtoken)
    {
        c = cashauthtoken;
        a.a(SlightlySecurePreferencesKeys.f, b.a(c));
    }

    public void b()
    {
        a(null);
    }

    public void onLogoutEvent(LogoutEvent logoutevent)
    {
        b();
    }
}
