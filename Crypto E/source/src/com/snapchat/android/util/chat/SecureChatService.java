// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.NetworkInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.chat.ChatConnectionMonitor;
import com.snapchat.android.chat.ReceivingMailman;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.table.ChatsReceivedInLastHourTable;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.networkmanager.NetworkStatusListener;
import com.snapchat.android.networkmanager.NetworkStatusManager;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatConnectionStateListener, ChatReceivedMessageListener, SecureChatBatchedMessagesManager, SecureChatSession

public class SecureChatService extends Service
    implements NetworkStatusListener, ChatConnectionStateListener, ChatReceivedMessageListener
{
    public static final class Protocol extends Enum
    {

        public static final Protocol a;
        public static final Protocol b;
        private static final Protocol c[];

        public static Protocol valueOf(String s)
        {
            return (Protocol)Enum.valueOf(com/snapchat/android/util/chat/SecureChatService$Protocol, s);
        }

        public static Protocol[] values()
        {
            return (Protocol[])c.clone();
        }

        static 
        {
            a = new Protocol("HTTP", 0);
            b = new Protocol("TCP", 1);
            Protocol aprotocol[] = new Protocol[2];
            aprotocol[0] = a;
            aprotocol[1] = b;
            c = aprotocol;
        }

        private Protocol(String s, int i1)
        {
            super(s, i1);
        }
    }

    public class SecureChatBinder extends Binder
    {

        final SecureChatService a;

        public SecureChatService a()
        {
            return a;
        }

        public SecureChatBinder()
        {
            a = SecureChatService.this;
            super();
        }
    }

    public static interface SecureChatWriteCompletedCallback
    {

        public abstract void a(boolean flag, Protocol protocol, Status status, String s);
    }

    public static final class SecureChatWriteCompletedCallback.Status extends Enum
    {

        public static final SecureChatWriteCompletedCallback.Status a;
        public static final SecureChatWriteCompletedCallback.Status b;
        public static final SecureChatWriteCompletedCallback.Status c;
        public static final SecureChatWriteCompletedCallback.Status d;
        public static final SecureChatWriteCompletedCallback.Status e;
        public static final SecureChatWriteCompletedCallback.Status f;
        public static final SecureChatWriteCompletedCallback.Status g;
        public static final SecureChatWriteCompletedCallback.Status h;
        public static final SecureChatWriteCompletedCallback.Status i;
        public static final SecureChatWriteCompletedCallback.Status j;
        public static final SecureChatWriteCompletedCallback.Status k;
        public static final SecureChatWriteCompletedCallback.Status l;
        public static final SecureChatWriteCompletedCallback.Status m;
        private static final SecureChatWriteCompletedCallback.Status n[];

        public static SecureChatWriteCompletedCallback.Status valueOf(String s)
        {
            return (SecureChatWriteCompletedCallback.Status)Enum.valueOf(com/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status, s);
        }

        public static SecureChatWriteCompletedCallback.Status[] values()
        {
            return (SecureChatWriteCompletedCallback.Status[])n.clone();
        }

        static 
        {
            a = new SecureChatWriteCompletedCallback.Status("SUCCESS", 0);
            b = new SecureChatWriteCompletedCallback.Status("NO_CONNECTION", 1);
            c = new SecureChatWriteCompletedCallback.Status("NOT_FRIENDS", 2);
            d = new SecureChatWriteCompletedCallback.Status("SUPERSEDED_MESSAGE", 3);
            e = new SecureChatWriteCompletedCallback.Status("CONVERSATION_BATCH_IN_FLIGHT", 4);
            f = new SecureChatWriteCompletedCallback.Status("CANNOT_SEND_OVER_HTTP", 5);
            g = new SecureChatWriteCompletedCallback.Status("INTERNAL_SERVER_ERROR", 6);
            h = new SecureChatWriteCompletedCallback.Status("TCP_ERROR", 7);
            i = new SecureChatWriteCompletedCallback.Status("UNKNOWN_ERROR", 8);
            j = new SecureChatWriteCompletedCallback.Status("TCP_CONNECTION_ENDED", 9);
            k = new SecureChatWriteCompletedCallback.Status("TCP_TIMEOUT_ERROR", 10);
            l = new SecureChatWriteCompletedCallback.Status("TCP_NACK", 11);
            m = new SecureChatWriteCompletedCallback.Status("TCP_MESSAGE_QUEUE_FULL", 12);
            SecureChatWriteCompletedCallback.Status astatus[] = new SecureChatWriteCompletedCallback.Status[13];
            astatus[0] = a;
            astatus[1] = b;
            astatus[2] = c;
            astatus[3] = d;
            astatus[4] = e;
            astatus[5] = f;
            astatus[6] = g;
            astatus[7] = h;
            astatus[8] = i;
            astatus[9] = j;
            astatus[10] = k;
            astatus[11] = l;
            astatus[12] = m;
            n = astatus;
        }

        private SecureChatWriteCompletedCallback.Status(String s, int i1)
        {
            super(s, i1);
        }
    }


    private final IBinder a;
    private final NetworkStatusManager b;
    private final Handler c;
    private final ChatConversationManager d;
    private final SendingMailman e;
    private final ReceivingMailman f;
    private final SecureChatBatchedMessagesManager g;
    private final ChatConnectionMonitor h;
    private final ChatsReceivedInLastHourTable i;
    private SecureChatSession j;
    private SharedPreferences k;
    private boolean l;

    public SecureChatService()
    {
        this(NetworkStatusManager.a(), new Handler(Looper.getMainLooper()), ChatConversationManager.a(), SendingMailman.a(), ReceivingMailman.a(), SecureChatBatchedMessagesManager.a(), ChatConnectionMonitor.a(), ChatsReceivedInLastHourTable.b());
    }

    SecureChatService(NetworkStatusManager networkstatusmanager, Handler handler, ChatConversationManager chatconversationmanager, SendingMailman sendingmailman, ReceivingMailman receivingmailman, SecureChatBatchedMessagesManager securechatbatchedmessagesmanager, ChatConnectionMonitor chatconnectionmonitor, 
            ChatsReceivedInLastHourTable chatsreceivedinlasthourtable)
    {
        a = new SecureChatBinder();
        b = networkstatusmanager;
        c = handler;
        d = chatconversationmanager;
        e = sendingmailman;
        f = receivingmailman;
        g = securechatbatchedmessagesmanager;
        h = chatconnectionmonitor;
        i = chatsreceivedinlasthourtable;
    }

    static boolean a(SecureChatService securechatservice)
    {
        return securechatservice.l;
    }

    static ReceivingMailman b(SecureChatService securechatservice)
    {
        return securechatservice.f;
    }

    public void a()
    {
        e.a(true);
    }

    public void a(NetworkInfo networkinfo)
    {
        Timber.c("SecureChatService", "CHAT-LOG: SecureChatService onNetworkConnectivityChanged %s", new Object[] {
            networkinfo
        });
        if (networkinfo != null && networkinfo.isConnected() && l)
        {
            b();
        }
    }

    public void a(ConversationMessage conversationmessage, SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        Timber.f("SecureChatService", "CHAT-LOG: ATTEMPT sending message %s", new Object[] {
            conversationmessage
        });
        if (j.e())
        {
            j.a(conversationmessage, securechatwritecompletedcallback);
            return;
        }
        if (j.f() == SecureChatSession.ConnectionState.b && j.d())
        {
            Timber.f("SecureChatService", "CHAT-LOG: Adding message to pending messages because TCP is connecting %s", new Object[] {
                conversationmessage
            });
            e.a(conversationmessage, securechatwritecompletedcallback);
            return;
        }
        if (conversationmessage.canSendOverHTTP())
        {
            g.a(conversationmessage, securechatwritecompletedcallback);
            return;
        } else
        {
            securechatwritecompletedcallback.a(false, Protocol.a, SecureChatWriteCompletedCallback.Status.f, (new StringBuilder()).append("TCP connection unavailable and can't send ").append(conversationmessage.getType()).append(" over HTTP.").toString());
            return;
        }
    }

    public void a(SCMessage scmessage)
    {
        if (TextUtils.equals(scmessage.getType(), "chat_message"))
        {
            i.a(getApplicationContext(), (ChatMessage)scmessage);
        }
        c.post(new Runnable(scmessage) {

            final SCMessage a;
            final SecureChatService b;

            public void run()
            {
                SecureChatService.b(b).a(a);
            }

            
            {
                b = SecureChatService.this;
                a = scmessage;
                super();
            }
        });
    }

    public void a(SecureChatSession.ConnectionState connectionstate)
    {
label0:
        {
            if (connectionstate == SecureChatSession.ConnectionState.c || connectionstate == SecureChatSession.ConnectionState.a)
            {
                e.a(d.d());
                e.c();
                if (connectionstate != SecureChatSession.ConnectionState.c)
                {
                    break label0;
                }
                h.d();
            }
            return;
        }
        h.e();
    }

    public void a(boolean flag)
    {
        l = flag;
    }

    public void b()
    {
        if (k == null)
        {
            k = PreferenceManager.getDefaultSharedPreferences(this);
        }
        if (!k.getBoolean(SharedPreferenceKey.an.a(), false))
        {
            Timber.f("SecureChatService", "CHAT-LOG: SecureChatService START SESSION", new Object[0]);
            j.b();
        }
    }

    public void c()
    {
        Timber.f("SecureChatService", "CHAT-LOG: SecureChatService STOP SESSION", new Object[0]);
        j.c();
    }

    public void d()
    {
        c.postDelayed(new Runnable() {

            final SecureChatService a;

            public void run()
            {
                if (!SecureChatService.a(a))
                {
                    a.stopSelf();
                }
            }

            
            {
                a = SecureChatService.this;
                super();
            }
        }, 5000L);
    }

    public IBinder onBind(Intent intent)
    {
        c.removeCallbacks(null);
        return a;
    }

    public void onCreate()
    {
        b.a(this);
        j = new SecureChatSession(this);
        j.a(this);
        j.a(this);
        c.removeCallbacks(null);
    }

    public void onDestroy()
    {
        Timber.f("SecureChatService", "CHAT-LOG: SecureChatService stopping session onDestroy", new Object[0]);
        b.b(this);
        j.g();
    }
}
