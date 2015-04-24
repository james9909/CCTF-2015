// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatConnectionStateListener

public class SecureChatSessionMessageRateLimiter
    implements ChatConnectionStateListener
{
    public static interface SecureChatSessionMessageRateLimiterInterface
    {

        public abstract void h();
    }


    private final SecureChatSessionMessageRateLimiterInterface a;
    private final ScheduledExecutorService b;
    private final int c;
    private final AtomicInteger d = new AtomicInteger(0);
    private volatile boolean e;

    public SecureChatSessionMessageRateLimiter(SecureChatSessionMessageRateLimiterInterface securechatsessionmessageratelimiterinterface, ScheduledExecutorService scheduledexecutorservice, int i)
    {
        e = false;
        a = securechatsessionmessageratelimiterinterface;
        b = scheduledexecutorservice;
        c = i;
    }

    static AtomicInteger a(SecureChatSessionMessageRateLimiter securechatsessionmessageratelimiter)
    {
        return securechatsessionmessageratelimiter.d;
    }

    static void b(SecureChatSessionMessageRateLimiter securechatsessionmessageratelimiter)
    {
        securechatsessionmessageratelimiter.c();
    }

    private void c()
    {
        if (e)
        {
            b.schedule(new Runnable() {

                final SecureChatSessionMessageRateLimiter a;

                public void run()
                {
                    SecureChatSessionMessageRateLimiter.a(a).set(0);
                    SecureChatSessionMessageRateLimiter.b(a);
                }

            
            {
                a = SecureChatSessionMessageRateLimiter.this;
                super();
            }
            }, 1L, TimeUnit.SECONDS);
        }
    }

    public void a()
    {
    }

    public void a(SecureChatSession.ConnectionState connectionstate)
    {
        if (connectionstate == SecureChatSession.ConnectionState.c)
        {
            Timber.f("SecureChatSessionMessageRateLimiter", "CHAT-LOG: SecureChatSessionMessageRateLimiter STARTED", new Object[0]);
            e = true;
            d.set(0);
            c();
        } else
        if (connectionstate == SecureChatSession.ConnectionState.a)
        {
            Timber.f("SecureChatSessionMessageRateLimiter", "CHAT-LOG: SecureChatSessionMessageRateLimiter STOPPED", new Object[0]);
            e = false;
            return;
        }
    }

    public void b()
    {
        if (e && d.incrementAndGet() > c)
        {
            a.h();
        }
    }
}
