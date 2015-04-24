// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.model.User;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

class a
    implements ServiceConnection
{

    final LandingPageActivity a;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        LandingPageActivity.i = ((com.snapchat.android.util.chat.reChatBinder)ibinder).a();
        LandingPageActivity.c(a, true);
        if (a.p == null)
        {
            LandingPageActivity.d(a, true);
        } else
        if (a.c() && a.p.z() != null)
        {
            a.v();
            return;
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        LandingPageActivity.i = null;
        LandingPageActivity.c(a, false);
        LandingPageActivity.d(a, false);
        SendingMailman.a().c();
    }

    rvice.SecureChatBinder(LandingPageActivity landingpageactivity)
    {
        a = landingpageactivity;
        super();
    }
}
