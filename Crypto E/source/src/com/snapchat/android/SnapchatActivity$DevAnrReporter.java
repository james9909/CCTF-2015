// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.Context;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.threading.ThreadUtils;
import com.snapchat.yorick.AnrListener;
import com.snapchat.yorick.ParsedTrace;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity

class a
    implements AnrListener
{

    final SnapchatActivity a;

    public void a(ParsedTrace parsedtrace)
    {
        Context context = a.getApplicationContext();
        ThreadUtils.a(new Runnable(context) {

            final Context a;
            final SnapchatActivity.DevAnrReporter b;

            public void run()
            {
                AlertDialogUtils.a("ANR detected from Snapchat! See more details in notification", a, 1);
            }

            
            {
                b = SnapchatActivity.DevAnrReporter.this;
                a = context;
                super();
            }
        });
        AndroidNotificationManager.a().b(context, parsedtrace.b);
    }

    _cls1.a(SnapchatActivity snapchatactivity)
    {
        a = snapchatactivity;
        super();
    }
}
