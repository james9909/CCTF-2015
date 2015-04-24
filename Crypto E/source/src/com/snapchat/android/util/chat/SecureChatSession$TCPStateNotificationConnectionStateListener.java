// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatConnectionStateListener, SecureChatSession

static class a
    implements com.snapchat.android.eListener, ChatConnectionStateListener
{

    private final Context a;

    private static void a(Context context)
    {
        ((NotificationManager)context.getSystemService("notification")).cancel(1337);
    }

    public void a()
    {
    }

    public void a(Context context, Thread thread, Throwable throwable)
    {
        a(context);
    }

    public void a(a a1)
    {
        if (a1 == a)
        {
            if (PreferenceManager.getDefaultSharedPreferences(a).getBoolean(SharedPreferenceKey.ao.a(), false))
            {
                ((NotificationManager)a.getSystemService("notification")).notify(1337, (new android.support.v4.app.istener.a(a)).a(0x7f02015a).a("Snapchat Chat").a("TCP connection established").a(true).a());
            }
        } else
        if (a1 == a)
        {
            a(a);
            return;
        }
    }

    (Context context)
    {
        a = context;
        SnapchatApplication.a(this);
    }
}
