// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.text.TextUtils;
import android.util.Log;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.User;
import com.snapchat.android.model.server.MessagingGatewayInfo;
import com.snapchat.android.model.server.chat.ConnectMessage;
import com.snapchat.android.model.server.chat.ConnectResponse;
import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.model.server.chat.SignedPayload;
import com.snapchat.android.util.network.CloseableUtils;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSslContextFactory, SecureChatSession, SCMessageOutputStream, SCMessageInputStream, 
//            SecureChatSessionInputThread, SecureChatSessionOutputThread, ChatConnectionStateListener

class <init>
    implements Runnable
{

    final SecureChatSession a;

    private void a(String s, int i)
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
        int j = as.length;
        for (int k = 0; k < j; k++)
        {
            String s1 = as[k];
            if (arraylist.remove(s1))
            {
                arraylist.add(0, s1);
            }
        }

        sslparameters.setCipherSuites(SecureChatSession.a(arraylist));
        SecureChatSession.g(a).setSSLParameters(sslparameters);
        SecureChatSession.g(a).setUseClientMode(true);
        SecureChatSession.g(a).connect(new InetSocketAddress(s, i), 10000);
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
        long l;
        String s;
        int i;
        SignedPayload signedpayload;
        Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession executing CONNECT runnable", new Object[0]);
        l = System.currentTimeMillis();
        if (SecureChatSession.a(a) != onState.b)
        {
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because intended connection state != CONNECTED", new Object[0]);
            return;
        }
        if (SecureChatSession.b(a) != a)
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
        s = messaginggatewayinfo.getHost();
        i = messaginggatewayinfo.getPort();
        signedpayload = messaginggatewayinfo.getGatewayAuthToken();
        if (signedpayload == null)
        {
            Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because messaging gateway auth token is null", new Object[0]);
            return;
        }
        SecureChatSession.a(a, System.currentTimeMillis());
        SecureChatSession.i(a).set(false);
        SecureChatSession.a(a, false);
        SecureChatSession.a(a, b);
        AtomicBoolean atomicboolean;
        boolean flag;
        a(s, i);
        SecureChatSession.a(a, new SCMessageInputStream(SecureChatSession.g(a).getInputStream(), a.a));
        SecureChatSession.a(a, new SCMessageOutputStream(SecureChatSession.g(a).getOutputStream(), a.a));
        atomicboolean = new AtomicBoolean(false);
        SSLSocket sslsocket = SecureChatSession.g(a);
        SCMessageInputStream scmessageinputstream = SecureChatSession.j(a);
        SCMessageOutputStream scmessageoutputstream = SecureChatSession.h(a);
        SecureChatSession.k(a).schedule(new Runnable(atomicboolean, sslsocket, scmessageoutputstream, scmessageinputstream) {

            final AtomicBoolean a;
            final SSLSocket b;
            final SCMessageOutputStream c;
            final SCMessageInputStream d;
            final SecureChatSession.ConnectRunnable e;

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
                e = SecureChatSession.ConnectRunnable.this;
                a = atomicboolean;
                b = sslsocket;
                c = scmessageoutputstream;
                d = scmessageinputstream;
                super();
            }
        }, 20000L, TimeUnit.MILLISECONDS);
        SecureChatSession.k(a).schedule(new Runnable() {

            final SecureChatSession.ConnectRunnable a;

            public void run()
            {
                if (!a.a.e())
                {
                    Timber.f("SecureChatSession", "CHAT-LOG: SecureChatSession ran into soft-timeout", new Object[0]);
                    for (Iterator iterator = SecureChatSession.l(a.a).iterator(); iterator.hasNext(); ((ChatConnectionStateListener)iterator.next()).a()) { }
                }
            }

            
            {
                a = SecureChatSession.ConnectRunnable.this;
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
        SecureChatSession.a(a, c);
        SecureChatSession.a(a, 0);
        SecureChatSession.b(a, 0);
        boolean flag3 = true;
_L12:
        flag1 = flag3;
_L2:
        AnalyticsEvents.a(flag1, System.currentTimeMillis() - l);
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
        AnalyticsEvents.a(false, System.currentTimeMillis() - l);
        return;
        Exception exception;
        exception;
        AnalyticsEvents.a(false, System.currentTimeMillis() - l);
        throw exception;
_L10:
        flag3 = false;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private _cls2.a(SecureChatSession securechatsession)
    {
        a = securechatsession;
        super();
    }

    a(SecureChatSession securechatsession, a a1)
    {
        this(securechatsession);
    }
}
