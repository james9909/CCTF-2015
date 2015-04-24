// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSessionMessageRateLimiter

class a
    implements Runnable
{

    final SecureChatSessionMessageRateLimiter a;

    public void run()
    {
        SecureChatSessionMessageRateLimiter.a(a).set(0);
        SecureChatSessionMessageRateLimiter.b(a);
    }

    (SecureChatSessionMessageRateLimiter securechatsessionmessageratelimiter)
    {
        a = securechatsessionmessageratelimiter;
        super();
    }
}
