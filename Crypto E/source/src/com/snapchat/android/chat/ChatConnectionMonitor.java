// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.networkmanager.NetworkStatusListener;
import com.snapchat.android.networkmanager.NetworkStatusManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.PresenceUpdatedEvent;
import com.squareup.otto.Bus;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.chat:
//            SendingMailman

public class ChatConnectionMonitor
    implements NetworkStatusListener
{

    private static ChatConnectionMonitor a;
    private final ChatConversationManager b;
    private final SendingMailman c;
    private Map d;
    private boolean e;
    private boolean f;

    private ChatConnectionMonitor()
    {
        this(NetworkStatusManager.a(), ChatConversationManager.a(), SendingMailman.a());
    }

    protected ChatConnectionMonitor(NetworkStatusManager networkstatusmanager, ChatConversationManager chatconversationmanager, SendingMailman sendingmailman)
    {
        b = chatconversationmanager;
        c = sendingmailman;
        d = new HashMap();
        networkstatusmanager.a(this);
    }

    public static ChatConnectionMonitor a()
    {
        com/snapchat/android/chat/ChatConnectionMonitor;
        JVM INSTR monitorenter ;
        ChatConnectionMonitor chatconnectionmonitor;
        if (a == null)
        {
            a = new ChatConnectionMonitor();
        }
        chatconnectionmonitor = a;
        com/snapchat/android/chat/ChatConnectionMonitor;
        JVM INSTR monitorexit ;
        return chatconnectionmonitor;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b()
    {
        com/snapchat/android/chat/ChatConnectionMonitor;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        for (Iterator iterator = a.d.values().iterator(); iterator.hasNext(); ((Handler)iterator.next()).removeCallbacksAndMessages(null)) { }
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        throw exception;
        a = null;
        com/snapchat/android/chat/ChatConnectionMonitor;
        JVM INSTR monitorexit ;
    }

    public void a(NetworkInfo networkinfo)
    {
        Timber.f("ChatConnectionMonitor", "CHAT-LOG: ChatConnectionMonitor onConnectivityChanged %s", new Object[] {
            networkinfo
        });
        if (networkinfo != null && networkinfo.isConnected() && f)
        {
            c();
        }
    }

    public void a(boolean flag)
    {
        f = flag;
    }

    protected void c()
    {
        for (Iterator iterator = b.d().iterator(); iterator.hasNext(); ((ChatConversation)iterator.next()).a(3, null, false)) { }
    }

    public void d()
    {
        e = true;
        ChatConversation chatconversation;
        for (Iterator iterator = b.d().iterator(); iterator.hasNext(); c.d(chatconversation))
        {
            chatconversation = (ChatConversation)iterator.next();
        }

    }

    public void e()
    {
        e = false;
        Iterator iterator = b.d().iterator();
        while (iterator.hasNext()) 
        {
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            if (chatconversation.E())
            {
                if (SystemClock.elapsedRealtime() - chatconversation.G() < 15000L)
                {
                    Timber.f("ChatConnectionMonitor", "CHAT-LOG: TCP DISCONNECTED and fetching conversation data from server", new Object[0]);
                    chatconversation.a(com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.NOT_UPDATED);
                    c.f(chatconversation);
                    Handler handler;
                    if (d.containsKey(chatconversation.u()))
                    {
                        handler = (Handler)d.get(chatconversation.u());
                    } else
                    {
                        handler = new Handler(Looper.getMainLooper());
                        d.put(chatconversation.u(), handler);
                    }
                    handler.removeCallbacksAndMessages(null);
                    handler.postDelayed(new Runnable(chatconversation, handler) {

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

            
            {
                c = ChatConnectionMonitor.this;
                a = chatconversation;
                b = handler;
                super();
            }
                    }, 10000L);
                } else
                {
                    Timber.f("ChatConnectionMonitor", "CHAT-LOG: TCP DISCONNECTED but enough time has passed since last TCP message sent", new Object[0]);
                    chatconversation.m();
                }
            }
            chatconversation.a(null);
            chatconversation.e(false);
            BusProvider.a().a(new PresenceUpdatedEvent(chatconversation.c(), false, "TCP DISCONNECTED"));
        }
    }

    public boolean f()
    {
        return e;
    }
}
