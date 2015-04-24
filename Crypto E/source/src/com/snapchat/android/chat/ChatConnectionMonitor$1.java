// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.os.Handler;
import android.os.SystemClock;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.chat:
//            ChatConnectionMonitor

class b
    implements Runnable
{

    final ChatConversation a;
    final Handler b;
    final ChatConnectionMonitor c;

    public void run()
    {
        if (SystemClock.elapsedRealtime() - a.G() >= 15000L)
        {
            a.m();
            return;
        } else
        {
            b.postDelayed(this, 10000L);
            return;
        }
    }

    (ChatConnectionMonitor chatconnectionmonitor, ChatConversation chatconversation, Handler handler)
    {
        c = chatconnectionmonitor;
        a = chatconversation;
        b = handler;
        super();
    }
}
