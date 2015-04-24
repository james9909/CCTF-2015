// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.User;
import com.snapchat.android.model.server.MessagingGatewayInfo;
import com.snapchat.android.model.server.chat.ConnectMessage;
import com.snapchat.android.model.server.chat.ConnectResponse;
import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.model.server.chat.SignedPayload;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.network.CloseableUtils;
import com.snapchat.android.util.network.ConnectivityUtils;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatStreamProcessingStateListener, SecureChatMessageAckTracker, SecureChatSessionMessageRateLimiter, SecureChatSessionInputThread, 
//            SecureChatSessionOutputThread, SecureChatSessionPinger, ChatConnectionStateListener, SCMessageInputStream, 
//            SCMessageOutputStream, ChatReceivedMessageListener, SecureChatSslContextFactory

public class SecureChatSession
    implements ChatStreamProcessingStateListener, SecureChatSessionMessageRateLimiter.SecureChatSessionMessageRateLimiterInterface, SecureChatSessionPinger.SecureChatSessionPingerInterface
{
    class ConnectRunnable
        implements Runnable
    {

        final SecureChatSession a;

        private void a(String s1, int i1)
        {
            SSLContext sslcontext = SecureChatSslContextFactory.a().b();
            if (sslcontext == null)
            {
                return;
            }
            SSLSocketFactory sslsocketfactory = sslcontext.getSocketFactory();
            SecureChatSession.a(a, (SSLSocket)sslsocketfactory.createSocket());
            SSLParameters sslparameters = SecureChatSession.g(a).getSSLParameters();
            ArrayList arraylist = new ArrayList(Arrays.asList(sslparameters.getCipherSuites()));
            String as[] = SecureChatSession.j();
            int j1 = as.length;
            for (int k1 = 0; k1 < j1; k1++)
            {
                String s2 = as[k1];
                if (arraylist.remove(s2))
                {
                    arraylist.add(0, s2);
                }
            }

            sslparameters.setCipherSuites(SecureChatSession.a(arraylist));
            SecureChatSession.g(a).setSSLParameters(sslparameters);
            SecureChatSession.g(a).setUseClientMode(true);
            SecureChatSession.g(a).connect(new InetSocketAddress(s1, i1), 10000);
            SecureChatSession.g(a).startHandshake();
        }

        private boolean a(SignedPayload signedpayload)
        {
            ConnectMessage connectmessage = new ConnectMessage(SecureChatSession.e(a), signedpayload);
            Timber.f("SecureChatSession", (new StringBuilder()).append("CHAT-LOG: SecureChatSession writeConnectMessage: ").append(connectmessage).toString(), new Object[0]);
            SecureChatSession.h(a).a(connectmessage);
            return true;
        }

        public void run()
        {
            long l1;
            String s1;
            int i1;
            SignedPayload signedpayload;
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession executing CONNECT runnable", new Object[0]);
            l1 = System.currentTimeMillis();
            if (SecureChatSession.a(a) != IntendedConnectionState.b)
            {
                Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because intended connection state != CONNECTED", new Object[0]);
                return;
            }
            if (SecureChatSession.b(a) != ConnectionState.a)
            {
                Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because connection state != DISCONNECTED", new Object[0]);
                return;
            }
            MessagingGatewayInfo messaginggatewayinfo = User.a(SecureChatSession.e(a)).z();
            if (messaginggatewayinfo == null)
            {
                Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because messaging gateway info is null", new Object[0]);
                return;
            }
            s1 = messaginggatewayinfo.getHost();
            i1 = messaginggatewayinfo.getPort();
            signedpayload = messaginggatewayinfo.getGatewayAuthToken();
            if (signedpayload == null)
            {
                Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because messaging gateway auth token is null", new Object[0]);
                return;
            }
            SecureChatSession.a(a, System.currentTimeMillis());
            SecureChatSession.i(a).set(false);
            SecureChatSession.a(a, false);
            SecureChatSession.a(a, ConnectionState.b);
            AtomicBoolean atomicboolean;
            boolean flag;
            a(s1, i1);
            SecureChatSession.a(a, new SCMessageInputStream(SecureChatSession.g(a).getInputStream(), a.a));
            SecureChatSession.a(a, new SCMessageOutputStream(SecureChatSession.g(a).getOutputStream(), a.a));
            atomicboolean = new AtomicBoolean(false);
            SSLSocket sslsocket = SecureChatSession.g(a);
            SCMessageInputStream scmessageinputstream = SecureChatSession.j(a);
            SCMessageOutputStream scmessageoutputstream = SecureChatSession.h(a);
            SecureChatSession.k(a).schedule(new Runnable(this, atomicboolean, sslsocket, scmessageoutputstream, scmessageinputstream) {

                final AtomicBoolean a;
                final SSLSocket b;
                final SCMessageOutputStream c;
                final SCMessageInputStream d;
                final ConnectRunnable e;

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

            
            {
                e = connectrunnable;
                a = atomicboolean;
                b = sslsocket;
                c = scmessageoutputstream;
                d = scmessageinputstream;
                super();
            }
            }, 20000L, TimeUnit.MILLISECONDS);
            SecureChatSession.k(a).schedule(new Runnable(this) {

                final ConnectRunnable a;

                public void run()
                {
                    if (!a.a.e())
                    {
                        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession ran into soft-timeout", new Object[0]);
                        for (Iterator iterator = SecureChatSession.l(a.a).iterator(); iterator.hasNext(); ((ChatConnectionStateListener)iterator.next()).a()) { }
                    }
                }

            
            {
                a = connectrunnable;
                super();
            }
            }, 3000L, TimeUnit.MILLISECONDS);
            flag = a(signedpayload);
            boolean flag1 = false;
            if (!flag) goto _L2; else goto _L1
_L1:
            SCMessage scmessage = SecureChatSession.j(a).a();
            if (!atomicboolean.compareAndSet(false, true)) goto _L4; else goto _L3
_L3:
            boolean flag2 = TextUtils.equals(scmessage.getType(), "connect_response");
            flag1 = false;
            if (!flag2) goto _L2; else goto _L5
_L5:
            ConnectResponse connectresponse = (ConnectResponse)scmessage;
            if (!connectresponse.isSuccessful()) goto _L7; else goto _L6
_L6:
            SecureChatSession.a(a, new CountDownLatch(2));
            SecureChatSession.m(a).a(SecureChatSession.j(a));
            SecureChatSession.n(a).a(SecureChatSession.h(a));
            if (!SecureChatSession.o(a).await(1L, TimeUnit.SECONDS)) goto _L9; else goto _L8
_L8:
            SecureChatSession.a(a, ConnectionState.c);
            SecureChatSession.a(a, 0);
            SecureChatSession.b(a, 0);
            boolean flag3 = true;
_L12:
            flag1 = flag3;
_L2:
            AnalyticsEvents.a(flag1, System.currentTimeMillis() - l1);
            return;
_L9:
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to countdown latch timeout", new Object[0]);
            SecureChatSession.c(a);
            SecureChatSession.f(a);
            flag3 = false;
            continue; /* Loop/switch isn't completed */
_L7:
            Timber.f("SecureChatSession", (new StringBuilder()).append("CHAT-LOG: SecureChatSession DISCONNECT due to unsuccessful ConnectResponse ").append(connectresponse).toString(), new Object[0]);
            SecureChatSession.c(a);
            if (connectresponse.getFailureReason().equals("wrong_server"))
            {
                SecureChatSession.p(a);
                SecureChatSession.a(a, connectresponse.getAlternativeServer());
            }
              goto _L10
_L4:
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout", new Object[0]);
            SecureChatSession.c(a);
            SecureChatSession.f(a);
            flag1 = false;
              goto _L2
            Exception exception1;
            exception1;
            Timber.f("SecureChatSession", (new StringBuilder()).append("CHAT-LOG: SecureChatSession DISCONNECT due to exception when attempting to connect ").append(Log.getStackTraceString(exception1)).toString(), new Object[0]);
            SecureChatSession.c(a);
            SecureChatSession.f(a);
            AnalyticsEvents.a(false, System.currentTimeMillis() - l1);
            return;
            Exception exception;
            exception;
            AnalyticsEvents.a(false, System.currentTimeMillis() - l1);
            throw exception;
_L10:
            flag3 = false;
            if (true) goto _L12; else goto _L11
_L11:
        }

        private ConnectRunnable()
        {
            a = SecureChatSession.this;
            super();
        }

    }

    public static final class ConnectionState extends Enum
    {

        public static final ConnectionState a;
        public static final ConnectionState b;
        public static final ConnectionState c;
        private static final ConnectionState d[];

        public static ConnectionState valueOf(String s1)
        {
            return (ConnectionState)Enum.valueOf(com/snapchat/android/util/chat/SecureChatSession$ConnectionState, s1);
        }

        public static ConnectionState[] values()
        {
            return (ConnectionState[])d.clone();
        }

        static 
        {
            a = new ConnectionState("DISCONNECTED", 0);
            b = new ConnectionState("CONNECTING", 1);
            c = new ConnectionState("CONNECTED", 2);
            ConnectionState aconnectionstate[] = new ConnectionState[3];
            aconnectionstate[0] = a;
            aconnectionstate[1] = b;
            aconnectionstate[2] = c;
            d = aconnectionstate;
        }

        private ConnectionState(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    static final class IntendedConnectionState extends Enum
    {

        public static final IntendedConnectionState a;
        public static final IntendedConnectionState b;
        private static final IntendedConnectionState c[];

        public static IntendedConnectionState valueOf(String s1)
        {
            return (IntendedConnectionState)Enum.valueOf(com/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState, s1);
        }

        public static IntendedConnectionState[] values()
        {
            return (IntendedConnectionState[])c.clone();
        }

        static 
        {
            a = new IntendedConnectionState("DISCONNECTED", 0);
            b = new IntendedConnectionState("CONNECTED", 1);
            IntendedConnectionState aintendedconnectionstate[] = new IntendedConnectionState[2];
            aintendedconnectionstate[0] = a;
            aintendedconnectionstate[1] = b;
            c = aintendedconnectionstate;
        }

        private IntendedConnectionState(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    static class TCPStateNotificationConnectionStateListener
        implements com.snapchat.android.SnapchatApplication.Crashable, ChatConnectionStateListener
    {

        private final Context a;

        private static void a(Context context)
        {
            ((NotificationManager)context.getSystemService("notification")).cancel(1337);
        }

        public void a()
        {
        }

        public void a(Context context, Thread thread, Throwable throwable)
        {
            a(context);
        }

        public void a(ConnectionState connectionstate)
        {
            if (connectionstate == ConnectionState.c)
            {
                if (PreferenceManager.getDefaultSharedPreferences(a).getBoolean(SharedPreferenceKey.ao.a(), false))
                {
                    ((NotificationManager)a.getSystemService("notification")).notify(1337, (new android.support.v4.app.NotificationCompat.Builder(a)).setSmallIcon(0x7f02015a).setContentTitle("Snapchat Chat").setContentText("TCP connection established").setOngoing(true).build());
                }
            } else
            if (connectionstate == ConnectionState.a)
            {
                a(a);
                return;
            }
        }

        TCPStateNotificationConnectionStateListener(Context context)
        {
            a = context;
            SnapchatApplication.a(this);
        }
    }


    private static final String b[] = {
        "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"
    };
    protected GsonWrapper a;
    private final Context c;
    private final SecureChatSessionInputThread d;
    private final SecureChatSessionOutputThread e;
    private final ExecutorService f;
    private final ScheduledExecutorService g = new ScheduledThreadPoolExecutor(1, new java.util.concurrent.ThreadPoolExecutor.DiscardPolicy());
    private int h;
    private int i;
    private boolean j;
    private SSLSocket k;
    private SCMessageInputStream l;
    private SCMessageOutputStream m;
    private volatile IntendedConnectionState n;
    private volatile ConnectionState o;
    private final AtomicBoolean p = new AtomicBoolean(false);
    private final List q = new CopyOnWriteArrayList();
    private volatile CountDownLatch r;
    private long s;

    public SecureChatSession(Context context)
    {
        h = 0;
        i = 0;
        j = false;
        n = IntendedConnectionState.a;
        o = ConnectionState.a;
        s = 0L;
        SnapchatApplication.e().a(this);
        c = context;
        f = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new java.util.concurrent.ThreadPoolExecutor.DiscardPolicy());
        SecureChatMessageAckTracker securechatmessageacktracker = new SecureChatMessageAckTracker(g, 20000L);
        SecureChatSessionMessageRateLimiter securechatsessionmessageratelimiter = new SecureChatSessionMessageRateLimiter(this, g, 32);
        d = new SecureChatSessionInputThread(securechatsessionmessageratelimiter);
        d.a(this);
        d.a(securechatmessageacktracker);
        d.start();
        e = new SecureChatSessionOutputThread(securechatmessageacktracker);
        e.a(this);
        e.start();
        SecureChatSessionPinger securechatsessionpinger = new SecureChatSessionPinger(this, g, 15000L, 10000L);
        d.a(securechatsessionpinger);
        a(securechatsessionpinger);
        a(securechatsessionmessageratelimiter);
        a(new TCPStateNotificationConnectionStateListener(c));
    }

    static int a(SecureChatSession securechatsession, int i1)
    {
        securechatsession.i = i1;
        return i1;
    }

    static long a(SecureChatSession securechatsession, long l1)
    {
        securechatsession.s = l1;
        return l1;
    }

    static SCMessageInputStream a(SecureChatSession securechatsession, SCMessageInputStream scmessageinputstream)
    {
        securechatsession.l = scmessageinputstream;
        return scmessageinputstream;
    }

    static SCMessageOutputStream a(SecureChatSession securechatsession, SCMessageOutputStream scmessageoutputstream)
    {
        securechatsession.m = scmessageoutputstream;
        return scmessageoutputstream;
    }

    static IntendedConnectionState a(SecureChatSession securechatsession)
    {
        return securechatsession.n;
    }

    static CountDownLatch a(SecureChatSession securechatsession, CountDownLatch countdownlatch)
    {
        securechatsession.r = countdownlatch;
        return countdownlatch;
    }

    static SSLSocket a(SecureChatSession securechatsession, SSLSocket sslsocket)
    {
        securechatsession.k = sslsocket;
        return sslsocket;
    }

    private void a(com.snapchat.android.model.server.chat.ConnectResponse.Server server)
    {
        String s1 = (new StringBuilder()).append(server.getHostname()).append(":").append(server.getPort()).toString();
        Timber.f("SecureChatSession", (new StringBuilder()).append("CHAT-LOG: SecureChatSession setAlternativeServer: ").append(s1).toString(), new Object[0]);
        if (h >= 2)
        {
            g.schedule(new Runnable(s1) {

                final String a;
                final SecureChatSession b;

                public void run()
                {
                    User.a(SecureChatSession.e(b)).e(a);
                }

            
            {
                b = SecureChatSession.this;
                a = s1;
                super();
            }
            }, 5000L, TimeUnit.MILLISECONDS);
            return;
        } else
        {
            User.a(c).e(s1);
            return;
        }
    }

    private void a(ConnectionState connectionstate)
    {
        if (o != connectionstate)
        {
            Timber.f("SecureChatSession", (new StringBuilder()).append("CHAT-LOG: SecureChatSession SET CONNECTION STATE: ").append(connectionstate.name()).toString(), new Object[0]);
            o = connectionstate;
            for (Iterator iterator = q.iterator(); iterator.hasNext(); ((ChatConnectionStateListener)iterator.next()).a(connectionstate)) { }
        }
    }

    static void a(SecureChatSession securechatsession, com.snapchat.android.model.server.chat.ConnectResponse.Server server)
    {
        securechatsession.a(server);
    }

    static void a(SecureChatSession securechatsession, ConnectionState connectionstate)
    {
        securechatsession.a(connectionstate);
    }

    static boolean a(SecureChatSession securechatsession, boolean flag)
    {
        securechatsession.j = flag;
        return flag;
    }

    protected static String[] a(List list)
    {
        String as[] = (String[])list.toArray(new String[list.size()]);
        ArrayList arraylist = new ArrayList();
        int i1 = as.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String s1 = as[j1];
            if (!s1.toUpperCase().contains("EXPORT"))
            {
                arraylist.add(s1);
            }
        }

        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    static int b(SecureChatSession securechatsession, int i1)
    {
        securechatsession.h = i1;
        return i1;
    }

    static ConnectionState b(SecureChatSession securechatsession)
    {
        return securechatsession.o;
    }

    static void c(SecureChatSession securechatsession)
    {
        securechatsession.n();
    }

    static void d(SecureChatSession securechatsession)
    {
        securechatsession.k();
    }

    static Context e(SecureChatSession securechatsession)
    {
        return securechatsession.c;
    }

    static void f(SecureChatSession securechatsession)
    {
        securechatsession.m();
    }

    static SSLSocket g(SecureChatSession securechatsession)
    {
        return securechatsession.k;
    }

    static SCMessageOutputStream h(SecureChatSession securechatsession)
    {
        return securechatsession.m;
    }

    static AtomicBoolean i(SecureChatSession securechatsession)
    {
        return securechatsession.p;
    }

    static SCMessageInputStream j(SecureChatSession securechatsession)
    {
        return securechatsession.l;
    }

    static String[] j()
    {
        return b;
    }

    static ScheduledExecutorService k(SecureChatSession securechatsession)
    {
        return securechatsession.g;
    }

    private void k()
    {
        f.execute(new ConnectRunnable());
    }

    static List l(SecureChatSession securechatsession)
    {
        return securechatsession.q;
    }

    private void l()
    {
        f.execute(new Runnable() {

            final SecureChatSession a;

            public void run()
            {
                AnalyticsEvents.V();
                Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession executing DISCONNECT runnable", new Object[0]);
                if (SecureChatSession.a(a) != IntendedConnectionState.a)
                {
                    Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT returning because intended connection state != DISCONNECTED", new Object[0]);
                    return;
                }
                if (SecureChatSession.b(a) == ConnectionState.a)
                {
                    Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT returning because connection state == DISCONNECTED", new Object[0]);
                    return;
                } else
                {
                    SecureChatSession.c(a);
                    return;
                }
            }

            
            {
                a = SecureChatSession.this;
                super();
            }
        });
    }

    static SecureChatSessionInputThread m(SecureChatSession securechatsession)
    {
        return securechatsession.d;
    }

    private void m()
    {
        if (!j && i < 10)
        {
            j = true;
            i = 1 + i;
            g.schedule(new Runnable() {

                final SecureChatSession a;

                public void run()
                {
                    if (SecureChatSession.a(a) == IntendedConnectionState.b)
                    {
                        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession START SESSION RECONNECT", new Object[0]);
                        SecureChatSession.d(a);
                    }
                }

            
            {
                a = SecureChatSession.this;
                super();
            }
            }, o(), TimeUnit.MILLISECONDS);
            AnalyticsEvents.W();
        }
    }

    static SecureChatSessionOutputThread n(SecureChatSession securechatsession)
    {
        return securechatsession.e;
    }

    private void n()
    {
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession resetSessionState", new Object[0]);
        CloseableUtils.a(m);
        CloseableUtils.a(l);
        CloseableUtils.a(k);
        e.interrupt();
        d.interrupt();
        l = null;
        m = null;
        k = null;
        a(ConnectionState.a);
    }

    private long o()
    {
        switch (i)
        {
        default:
            return 30000L;

        case 0: // '\0'
            return 1000L;

        case 1: // '\001'
            return 3000L;

        case 2: // '\002'
            return 10000L;
        }
    }

    static CountDownLatch o(SecureChatSession securechatsession)
    {
        return securechatsession.r;
    }

    static int p(SecureChatSession securechatsession)
    {
        int i1 = securechatsession.h;
        securechatsession.h = i1 + 1;
        return i1;
    }

    public void a()
    {
        r.countDown();
    }

    public void a(SCMessage scmessage, SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        e.a(scmessage, securechatwritecompletedcallback);
    }

    public void a(ChatConnectionStateListener chatconnectionstatelistener)
    {
        q.add(chatconnectionstatelistener);
    }

    public void a(ChatReceivedMessageListener chatreceivedmessagelistener)
    {
        d.a(chatreceivedmessagelistener);
    }

    public void a(Exception exception)
    {
        Timber.f("SecureChatSession", (new StringBuilder()).append("CHAT-LOG: SecureChatSession onStreamProcessingStopped with exception: ").append(exception).toString(), new Object[0]);
        if (p.compareAndSet(false, true))
        {
            f.execute(new Runnable() {

                final SecureChatSession a;

                public void run()
                {
                    SecureChatSession.c(a);
                    SecureChatSession.f(a);
                }

            
            {
                a = SecureChatSession.this;
                super();
            }
            });
        }
    }

    public void b()
    {
        Timber.f("SecureChatSession", (new StringBuilder()).append("CHAT-LOG: SecureChatSession CONNECT on ").append(ConnectivityUtils.d()).toString(), new Object[0]);
        n = IntendedConnectionState.b;
        k();
    }

    public void c()
    {
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT", new Object[0]);
        n = IntendedConnectionState.a;
        l();
    }

    public boolean d()
    {
        return System.currentTimeMillis() - s < 3000L;
    }

    public boolean e()
    {
        return o == ConnectionState.c;
    }

    public ConnectionState f()
    {
        return o;
    }

    public void g()
    {
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession tearDown", new Object[0]);
        c();
        e.a();
        d.a();
        f.shutdownNow();
        g.shutdownNow();
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession tornDown successfully.", new Object[0]);
    }

    public void h()
    {
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECTING because receiving rate limit hit", new Object[0]);
        c();
        g.schedule(new Runnable() {

            final SecureChatSession a;

            public void run()
            {
                Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT after being disconnected due to rate limit", new Object[0]);
                a.b();
            }

            
            {
                a = SecureChatSession.this;
                super();
            }
        }, 60L, TimeUnit.SECONDS);
    }

    public void i()
    {
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECTING because of ping timeout", new Object[0]);
        c();
        g.schedule(new Runnable() {

            final SecureChatSession a;

            public void run()
            {
                Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT after being disconnected due to ping timeout", new Object[0]);
                a.b();
            }

            
            {
                a = SecureChatSession.this;
                super();
            }
        }, 60L, TimeUnit.SECONDS);
    }

}
