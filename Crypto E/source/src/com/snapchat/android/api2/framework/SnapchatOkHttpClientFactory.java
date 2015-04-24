// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api.BasicTimeoutProvider;
import com.snapchat.android.api.TimeoutProvider;
import com.snapchat.android.api.chat.ChatRequestTimeoutProvider;
import com.snapchat.android.model.StudySettings;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HttpClientFactory, OkHttpNetworkInterface

public class SnapchatOkHttpClientFactory
    implements HttpClientFactory
{

    private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 0x493e0L;
    private static final String ENABLE_NEW_POOL = "ENABLE_NEW_POOL";
    private static final String ENABLE_SPDY = "ENABLE_SPDY";
    private static final String SPDY_CONNPOOL_TEST = "SPDY_CONNPOOL";
    private static final String SPDY_TEST = "SPDY";
    private static final String TAG = "SnapchatOkHttpClientFactory";
    private static final StudySettings mStudySettings = StudySettings.a();
    private static OkHttpClient sChatClient;
    private static final Object sChatMutex = new Object();
    private static OkHttpClient sNonCertClient;
    private static final Object sNonCertMutex = new Object();
    private static OkHttpClient sNonCertSmallResourceClient;
    private static final Object sNonCertSmallResourceMutex = new Object();
    private static OkHttpClient sSnapchatCertClient;
    private static final Object sSnapchatCertMutex = new Object();
    private static OkHttpClient sSnapchatCertSmallResourceClient;
    private static final Object sSnapchatCertSmallResourceMutex = new Object();

    public SnapchatOkHttpClientFactory()
    {
    }

    public static OkHttpClient a()
    {
        OkHttpClient okhttpclient = new OkHttpClient();
        BasicTimeoutProvider basictimeoutprovider = new BasicTimeoutProvider();
        okhttpclient.a(basictimeoutprovider.b(), TimeUnit.MILLISECONDS);
        okhttpclient.b(basictimeoutprovider.a(), TimeUnit.MILLISECONDS);
        ArrayList arraylist = new ArrayList();
        if (mStudySettings.a("SPDY", "ENABLE_SPDY", false))
        {
            arraylist.add(Protocol.c);
        }
        arraylist.add(Protocol.b);
        okhttpclient.a(arraylist);
        return okhttpclient;
    }

    private static OkHttpClient a(OkHttpClient okhttpclient)
    {
        SSLSocketFactory sslsocketfactory = b();
        if (sslsocketfactory != null)
        {
            okhttpclient.a(sslsocketfactory);
            return okhttpclient;
        } else
        {
            throw new AssertionError("Required Socket factory could not be created.");
        }
    }

    private static OkHttpClient b(String s)
    {
        Object obj = sChatMutex;
        obj;
        JVM INSTR monitorenter ;
        OkHttpClient okhttpclient1;
        if (sChatClient == null)
        {
            okhttpclient1 = a();
            ChatRequestTimeoutProvider chatrequesttimeoutprovider = new ChatRequestTimeoutProvider();
            okhttpclient1.a(chatrequesttimeoutprovider.b(), TimeUnit.MILLISECONDS);
            okhttpclient1.b(chatrequesttimeoutprovider.a(), TimeUnit.MILLISECONDS);
            if (!s.contains("https://app.snapchat.com"))
            {
                break MISSING_BLOCK_LABEL_83;
            }
            sChatClient = a(okhttpclient1);
        }
_L1:
        OkHttpClient okhttpclient = sChatClient;
        return okhttpclient;
        sChatClient = okhttpclient1;
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static SSLSocketFactory b()
    {
        KeyStore keystore;
        InputStream inputstream;
        Exception exception1;
        try
        {
            Timber.b("SnapchatOkHttpClientFactory", "Creating Snapchat Certificates Pinned Socket Factory.", new Object[0]);
            keystore = KeyStore.getInstance("BKS");
            inputstream = SnapchatApplication.e().getResources().openRawResource(0x7f060007);
        }
        catch (Exception exception)
        {
            Timber.e("SnapchatOkHttpClientFactory", "Certificate Pinned SSLSocketFactory could not be obtained", new Object[0]);
            throw new AssertionError(exception);
        }
        keystore.load(inputstream, "".toCharArray());
        inputstream.close();
        SSLContext sslcontext = SSLContext.getInstance("TLS");
        TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustmanagerfactory.init(keystore);
        sslcontext.init(null, trustmanagerfactory.getTrustManagers(), null);
        Timber.b("SnapchatOkHttpClientFactory", "Created Snapchat Certificates Pinned Socket Factory.", new Object[0]);
        return sslcontext.getSocketFactory();
        exception1;
        inputstream.close();
        throw exception1;
    }

    private static ConnectionPool c()
    {
        String s = System.getProperty("http.keepAlive");
        String s1 = System.getProperty("http.keepAliveDuration");
        String s2 = System.getProperty("http.maxConnections");
        long l;
        if (s1 != null)
        {
            l = Long.parseLong(s1);
        } else
        {
            l = 0x493e0L;
        }
        if (s != null && !Boolean.parseBoolean(s))
        {
            return new ConnectionPool(0, l);
        }
        if (s2 != null)
        {
            return new ConnectionPool(Integer.parseInt(s2), l);
        } else
        {
            return new ConnectionPool(5, l);
        }
    }

    private static OkHttpClient c(String s)
    {
        boolean flag;
        flag = d(s);
        if (!s.contains("https://app.snapchat.com"))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        if (flag)
        {
            OkHttpClient okhttpclient3;
            synchronized (sSnapchatCertSmallResourceMutex)
            {
                if (sSnapchatCertSmallResourceClient == null)
                {
                    sSnapchatCertSmallResourceClient = a(a());
                    if (mStudySettings.a("SPDY_CONNPOOL", "ENABLE_NEW_POOL", false))
                    {
                        sSnapchatCertSmallResourceClient.a(c());
                    }
                }
                okhttpclient3 = sSnapchatCertSmallResourceClient;
            }
            return okhttpclient3;
        }
        break MISSING_BLOCK_LABEL_84;
        exception3;
        obj3;
        JVM INSTR monitorexit ;
        throw exception3;
        OkHttpClient okhttpclient2;
        synchronized (sSnapchatCertMutex)
        {
            if (sSnapchatCertClient == null)
            {
                sSnapchatCertClient = a(a());
            }
            okhttpclient2 = sSnapchatCertClient;
        }
        return okhttpclient2;
        exception2;
        obj2;
        JVM INSTR monitorexit ;
        throw exception2;
        if (flag)
        {
            OkHttpClient okhttpclient1;
            synchronized (sNonCertSmallResourceMutex)
            {
                if (sNonCertSmallResourceClient == null)
                {
                    sNonCertSmallResourceClient = a();
                    if (mStudySettings.a("SPDY_CONNPOOL", "ENABLE_NEW_POOL", false))
                    {
                        sNonCertSmallResourceClient.a(c());
                    }
                }
                okhttpclient1 = sNonCertSmallResourceClient;
            }
            return okhttpclient1;
        }
        break MISSING_BLOCK_LABEL_193;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
        OkHttpClient okhttpclient;
        synchronized (sNonCertMutex)
        {
            if (sNonCertClient == null)
            {
                sNonCertClient = a();
            }
            okhttpclient = sNonCertClient;
        }
        return okhttpclient;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static boolean d(String s)
    {
        return s.contains("discover/icons") || s.contains("discover/channel_list") || s.contains("story_thumbnail") || s.contains("/shared/description") || s.contains("/bq/snaptag_download");
    }

    public OkHttpClient a(String s)
    {
        URI uri;
        String s1;
        try
        {
            uri = OkHttpNetworkInterface.b(s);
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid URL: ").append(urisyntaxexception.getMessage()).toString());
        }
        s1 = uri.toString();
        if (s1.contains("/bq/chat_typing"))
        {
            return b(s1);
        } else
        {
            return c(s1);
        }
    }

}
