// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSession, ChatConnectionStateListener

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        if (!a.a.e())
        {
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession ran into soft-timeout", new Object[0]);
            for (Iterator iterator = SecureChatSession.l(a.a).iterator(); iterator.hasNext(); ((ChatConnectionStateListener)iterator.next()).a()) { }
        }
    }

    ( )
    {
        a = ;
        super();
    }
}
