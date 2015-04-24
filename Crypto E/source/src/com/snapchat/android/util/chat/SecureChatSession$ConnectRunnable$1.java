// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.util.network.CloseableUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLSocket;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSession, SCMessageOutputStream, SCMessageInputStream

class d
    implements Runnable
{

    final AtomicBoolean a;
    final SSLSocket b;
    final SCMessageOutputStream c;
    final SCMessageInputStream d;
    final d e;

    public void run()
    {
        if (a.compareAndSet(false, true))
        {
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout", new Object[0]);
            CloseableUtils.a(b);
            CloseableUtils.a(c);
            CloseableUtils.a(d);
        }
    }

    ( , AtomicBoolean atomicboolean, SSLSocket sslsocket, SCMessageOutputStream scmessageoutputstream, SCMessageInputStream scmessageinputstream)
    {
        e = ;
        a = atomicboolean;
        b = sslsocket;
        c = scmessageoutputstream;
        d = scmessageinputstream;
        super();
    }
}
