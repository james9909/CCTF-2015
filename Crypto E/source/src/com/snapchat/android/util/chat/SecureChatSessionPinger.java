// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.server.chat.PingMessage;
import com.snapchat.android.model.server.chat.PingResponse;
import com.snapchat.android.model.server.chat.SCMessage;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatConnectionStateListener, ChatReceivedMessageListener

public class SecureChatSessionPinger
    implements ChatConnectionStateListener, ChatReceivedMessageListener
{
    public static interface SecureChatSessionPingerInterface
    {

        public abstract void a(SCMessage scmessage, SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback);

        public abstract void i();
    }


    private final SecureChatSessionPingerInterface a;
    private final ScheduledExecutorService b;
    private final long c;
    private final long d;
    private volatile boolean e;
    private ScheduledFuture f;
    private final Set g = Collections.newSetFromMap(new ConcurrentHashMap());

    public SecureChatSessionPinger(SecureChatSessionPingerInterface securechatsessionpingerinterface, ScheduledExecutorService scheduledexecutorservice, long l, long l1)
    {
        a = securechatsessionpingerinterface;
        b = scheduledexecutorservice;
        c = l;
        d = l1;
    }

    static void a(SecureChatSessionPinger securechatsessionpinger)
    {
        securechatsessionpinger.c();
    }

    static void a(SecureChatSessionPinger securechatsessionpinger, String s)
    {
        securechatsessionpinger.b(s);
    }

    static SecureChatSessionPingerInterface b(SecureChatSessionPinger securechatsessionpinger)
    {
        return securechatsessionpinger.a;
    }

    private void b()
    {
        f = b.schedule(new Runnable() {

            final SecureChatSessionPinger a;

            public void run()
            {
                SecureChatSessionPinger.a(a);
            }

            
            {
                a = SecureChatSessionPinger.this;
                super();
            }
        }, c, TimeUnit.MILLISECONDS);
    }

    private void b(String s)
    {
        if (g.remove(s))
        {
            Timber.f("SecureChatSessionPinger", (new StringBuilder()).append("CHAT-LOG: PING TIMED OUT! ").append(s).toString(), new Object[0]);
            a.i();
        }
    }

    private void c()
    {
        f = null;
        if (e)
        {
            PingMessage pingmessage = new PingMessage();
            a(pingmessage, new SecureChatService.SecureChatWriteCompletedCallback(pingmessage) {

                final PingMessage a;
                final SecureChatSessionPinger b;

                public void a(boolean flag, SecureChatService.Protocol protocol, SecureChatService.SecureChatWriteCompletedCallback.Status status, String s)
                {
                    if (flag)
                    {
                        Timber.f("SecureChatSessionPinger", (new StringBuilder()).append("CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: ").append(a.getId()).toString(), new Object[0]);
                        b.a(a.getId());
                    } else
                    {
                        Timber.f("SecureChatSessionPinger", (new StringBuilder()).append("CHAT-LOG: FAILED SENDING PING ").append(a.getId()).append("with reason: ").append(s).toString(), new Object[0]);
                        if (status == SecureChatService.SecureChatWriteCompletedCallback.Status.m)
                        {
                            SecureChatSessionPinger.b(b).i();
                            return;
                        }
                    }
                }

            
            {
                b = SecureChatSessionPinger.this;
                a = pingmessage;
                super();
            }
            });
            return;
        } else
        {
            Timber.f("SecureChatSessionPinger", "CHAT-LOG: Called writePingMessage but pinger not running!", new Object[0]);
            return;
        }
    }

    public void a()
    {
    }

    protected void a(PingMessage pingmessage, SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        a.a(pingmessage, securechatwritecompletedcallback);
    }

    public void a(SCMessage scmessage)
    {
        if (TextUtils.equals(scmessage.getType(), "ping_response"))
        {
            Timber.f("SecureChatSessionPinger", (new StringBuilder()).append("CHAT-LOG: RECEIVED: ").append(scmessage).toString(), new Object[0]);
            PingResponse pingresponse = (PingResponse)scmessage;
            g.remove(pingresponse.getPingId());
            b();
        } else
        if (f != null && f.cancel(false))
        {
            b();
            return;
        }
    }

    public void a(SecureChatSession.ConnectionState connectionstate)
    {
        if (connectionstate == SecureChatSession.ConnectionState.c)
        {
            e = true;
            c();
        } else
        if (connectionstate == SecureChatSession.ConnectionState.a)
        {
            e = false;
            g.clear();
            return;
        }
    }

    protected void a(String s)
    {
        g.add(s);
        b.schedule(new Runnable(s) {

            final String a;
            final SecureChatSessionPinger b;

            public void run()
            {
                SecureChatSessionPinger.a(b, a);
            }

            
            {
                b = SecureChatSessionPinger.this;
                a = s;
                super();
            }
        }, d, TimeUnit.MILLISECONDS);
    }
}
