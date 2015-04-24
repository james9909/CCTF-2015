// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import android.content.Context;
import android.content.res.Resources;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.DevUtils;
import com.squareup.okhttp.OkHttpClient;
import java.io.InputStream;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HttpClientFactory, SnapchatOkHttpClientFactory

public class SquareOkHttpClientFactory
    implements HttpClientFactory
{

    private static final String TAG = "SquareOkHttpClientFactory";
    private static OkHttpClient mSquareCertClient;
    private static OkHttpClient mSquareNonCertClient;
    private Context mContext;

    protected SquareOkHttpClientFactory(Context context)
    {
        mContext = context;
        a();
    }

    private OkHttpClient a(OkHttpClient okhttpclient)
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

    private void a()
    {
        if (mSquareNonCertClient == null)
        {
            mSquareNonCertClient = SnapchatOkHttpClientFactory.a();
        }
        if (mSquareCertClient == null)
        {
            mSquareCertClient = a(SnapchatOkHttpClientFactory.a());
        }
    }

    private SSLSocketFactory b()
    {
        KeyStore keystore;
        InputStream inputstream;
        Exception exception1;
        try
        {
            Timber.b("SquareOkHttpClientFactory", "Creating Square Certificates Pinned Socket Factory", new Object[0]);
            keystore = KeyStore.getInstance("BKS");
            inputstream = mContext.getResources().openRawResource(0x7f060006);
        }
        catch (Exception exception)
        {
            throw new AssertionError(exception);
        }
        keystore.load(inputstream, "ez24get".toCharArray());
        inputstream.close();
        SSLContext sslcontext = SSLContext.getInstance("TLS");
        TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustmanagerfactory.init(keystore);
        sslcontext.init(null, trustmanagerfactory.getTrustManagers(), null);
        return sslcontext.getSocketFactory();
        exception1;
        inputstream.close();
        throw exception1;
    }

    public OkHttpClient a(String s)
    {
        if (DevUtils.a())
        {
            if (mSquareNonCertClient == null)
            {
                throw new IllegalArgumentException("Square Http Client is null when it should not have been.");
            } else
            {
                return mSquareNonCertClient;
            }
        }
        if (mSquareCertClient == null)
        {
            throw new IllegalArgumentException("Square Http Client is null when it should not have been.");
        } else
        {
            return mSquareCertClient;
        }
    }
}
