// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSession

class a
    implements Runnable
{

    final SecureChatSession a;

    public void run()
    {
        AnalyticsEvents.V();
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession executing DISCONNECT runnable", new Object[0]);
        if (SecureChatSession.a(a) != tendedConnectionState.a)
        {
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT returning because intended connection state != DISCONNECTED", new Object[0]);
            return;
        }
        if (SecureChatSession.b(a) == nnectionState.a)
        {
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT returning because connection state == DISCONNECTED", new Object[0]);
            return;
        } else
        {
            SecureChatSession.c(a);
            return;
        }
    }

    nnectionState(SecureChatSession securechatsession)
    {
        a = securechatsession;
        super();
    }
}
