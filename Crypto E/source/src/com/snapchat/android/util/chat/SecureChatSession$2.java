// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSession

class a
    implements Runnable
{

    final SecureChatSession a;

    public void run()
    {
        if (SecureChatSession.a(a) == tendedConnectionState.b)
        {
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession START SESSION RECONNECT", new Object[0]);
            SecureChatSession.d(a);
        }
    }

    tendedConnectionState(SecureChatSession securechatsession)
    {
        a = securechatsession;
        super();
    }
}
