// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.analytics.framework.ErrorMetric;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatTrustManager

public final class SecureChatSslContextFactory
{

    private static SecureChatSslContextFactory a;
    private final SSLContext b;

    private SecureChatSslContextFactory()
    {
        SSLContext sslcontext1 = SSLContext.getInstance("TLS");
        SSLContext sslcontext = sslcontext1;
        TrustManager atrustmanager[] = new TrustManager[1];
        atrustmanager[0] = new SecureChatTrustManager();
        sslcontext.init(null, atrustmanager, new SecureRandom());
_L2:
        b = sslcontext;
        return;
        Exception exception;
        exception;
        Exception exception1;
        sslcontext = null;
        exception1 = exception;
_L3:
        (new ErrorMetric("Failed to initialize the client-side SSLContext")).a(exception1).c();
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
          goto _L3
    }

    public static SecureChatSslContextFactory a()
    {
        com/snapchat/android/util/chat/SecureChatSslContextFactory;
        JVM INSTR monitorenter ;
        SecureChatSslContextFactory securechatsslcontextfactory;
        if (a == null)
        {
            a = new SecureChatSslContextFactory();
        }
        securechatsslcontextfactory = a;
        com/snapchat/android/util/chat/SecureChatSslContextFactory;
        JVM INSTR monitorexit ;
        return securechatsslcontextfactory;
        Exception exception;
        exception;
        throw exception;
    }

    public SSLContext b()
    {
        return b;
    }
}
