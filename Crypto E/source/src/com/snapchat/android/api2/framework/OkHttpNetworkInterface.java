// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.GoogleAuthManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.table.HttpMetricsTable;
import com.snapchat.android.util.memory.Buffer;
import com.snapchat.android.util.network.ConnectivityUtils;
import com.snapchat.android.util.network.HttpHeaderUtils;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.io.IOUtils;

// Referenced classes of package com.snapchat.android.api2.framework:
//            NetworkInterface, SnapchatOkHttpClientFactory, NetworkResult, ClientConnMetricsManager, 
//            HttpMethod, HttpClientFactory, EntityFactory

public class OkHttpNetworkInterface
    implements NetworkInterface
{

    private static final String GET = "GET";
    private static final String TAG = "OkHttpNetworkInterface";
    private final HttpClientFactory mClientFactory;
    private final EntityFactory mEntityFactory;
    private final GoogleAuthManager mGoogleAuthManager;

    public OkHttpNetworkInterface(EntityFactory entityfactory)
    {
        this(entityfactory, ((HttpClientFactory) (new SnapchatOkHttpClientFactory())), GoogleAuthManager.a());
    }

    public OkHttpNetworkInterface(EntityFactory entityfactory, HttpClientFactory httpclientfactory)
    {
        this(entityfactory, httpclientfactory, GoogleAuthManager.a());
    }

    OkHttpNetworkInterface(EntityFactory entityfactory, HttpClientFactory httpclientfactory, GoogleAuthManager googleauthmanager)
    {
        mEntityFactory = entityfactory;
        mClientFactory = httpclientfactory;
        mGoogleAuthManager = googleauthmanager;
    }

    private void a(NetworkResult networkresult, long l, long l1, long l2, 
            String s)
    {
        boolean flag;
        if (networkresult.a("Age") != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        (new EasyMetric("ENDPOINT_REQUEST")).a("reachability", networkresult.c()).a("endpoint", networkresult.b()).a("total_latency", Long.valueOf(l2)).a("status_code", Integer.valueOf(networkresult.j())).a("request_size_bytes", Long.valueOf(l)).a("return_size_bytes", Long.valueOf(l1)).a("Hit_Cache", Boolean.valueOf(flag)).a("protocol", s).c();
    }

    public static URI b(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("Empty URL");
        }
        URI uri = new URI(s);
        if (uri.getHost() == null)
        {
            throw new IllegalArgumentException(String.format("Invalid URL - host should not be null - %s", new Object[] {
                s
            }));
        }
        if (uri.getScheme() == null)
        {
            throw new IllegalArgumentException(String.format("Invalid URL - scheme should not be null - %s", new Object[] {
                s
            }));
        } else
        {
            return uri;
        }
    }

    public NetworkResult a(String s, HttpMethod httpmethod, Map map, Buffer buffer, Object obj)
    {
        long l;
        long l1;
        long l2;
        long l3;
        long l4;
        String s1;
        java.io.InputStream inputstream;
        ClientConnMetricsManager clientconnmetricsmanager;
        NetworkResult.Builder builder;
        boolean flag;
        l = System.currentTimeMillis();
        l1 = SystemClock.elapsedRealtime();
        l2 = 0L;
        l3 = 0L;
        l4 = 0L;
        s1 = "";
        inputstream = null;
        clientconnmetricsmanager = new ClientConnMetricsManager();
        builder = new NetworkResult.Builder(s, ConnectivityUtils.d());
        flag = true;
_L27:
        if (!flag) goto _L2; else goto _L1
_L1:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        String s11;
        if (!s.contains("feelinsonice-hrd.appspot.com") || s.contains("/discover/") || !HttpHeaderUtils.a(s))
        {
            break MISSING_BLOCK_LABEL_144;
        }
        map.put("X-Snapchat-Client-Auth-Token", (new StringBuilder()).append("Bearer ").append(mGoogleAuthManager.d()).toString());
        s11 = mGoogleAuthManager.b();
        if (s11 == null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        map.put("X-Snapchat-AuthExp", s11);
        Request request;
        Response response;
        int i;
        request = a(map, httpmethod, s, obj);
        Timber.b("OkHttpNetworkInterface", (new StringBuilder()).append("Executing request: ").append(httpmethod).append(": ").append(s).toString(), new Object[0]);
        response = a(s).a(request).a();
        i = response.c();
        if (i != 499 || s == null) goto _L4; else goto _L3
_L3:
        if (!s.contains("feelinsonice-hrd.appspot.com") || s.contains("/discover/") || !HttpHeaderUtils.a(s)) goto _L4; else goto _L5
_L5:
        mGoogleAuthManager.c();
        flag = true;
        Timber.b("OkHttpNetworkInterface", (new StringBuilder()).append("Android ID token expired, retry: ").append(httpmethod).append(": ").append(s).toString(), new Object[0]);
        java.io.InputStream inputstream2;
        String s8;
        long l12;
        long l13;
        l12 = l4;
        l13 = l3;
        java.io.InputStream inputstream3 = inputstream;
        s8 = s1;
        inputstream2 = inputstream3;
          goto _L6
_L4:
        String s5;
        Headers headers;
        ResponseBody responsebody;
        s5 = response.d();
        headers = response.f();
        responsebody = response.g();
        if (response.b() != null) goto _L8; else goto _L7
_L7:
        String s6 = "";
_L12:
        HashMap hashmap;
        Object aobj1[];
        int j;
        hashmap = new HashMap();
        aobj1 = headers.b().toArray();
        j = aobj1.length;
        int k = 0;
_L10:
        if (k >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj2 = aobj1[k];
        hashmap.put((String)obj2, headers.c((String)obj2));
        k++;
        if (true) goto _L10; else goto _L9
_L9:
        break; /* Loop/switch isn't completed */
_L8:
        String s10 = response.b().toString();
        s6 = s10;
        if (true) goto _L12; else goto _L11
_L11:
        if (request.f() == null) goto _L14; else goto _L13
_L13:
        long l14 = request.f().b();
        long l10 = l14;
_L25:
        builder.a(i);
        builder.a(s5);
        builder.a(hashmap);
        if (responsebody == null) goto _L16; else goto _L15
_L15:
        int i1;
        inputstream = responsebody.c();
        i1 = buffer.a(inputstream);
        java.io.InputStream inputstream1;
        l3 = i1;
        inputstream1 = inputstream;
_L24:
        long l11;
        boolean flag1;
        builder.a(buffer);
        l11 = SystemClock.elapsedRealtime() - l1;
        clientconnmetricsmanager.a(l3, l10);
        clientconnmetricsmanager.a(httpmethod.toString(), s, s5, i, l, l11);
        flag1 = hashmap.containsKey("x-snapchat-request-id");
        String s7;
        s7 = null;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_608;
        }
        s7 = (String)((List)hashmap.get("x-snapchat-request-id")).get(0);
        Object aobj2[] = new Object[8];
        aobj2[0] = httpmethod;
        aobj2[1] = s;
        aobj2[2] = Long.valueOf(l3);
        aobj2[3] = Integer.valueOf(i);
        aobj2[4] = s5;
        aobj2[5] = Long.valueOf(l);
        aobj2[6] = Long.valueOf(l11);
        aobj2[7] = s7;
        Timber.b("OkHttpNetworkInterface", String.format("Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s", aobj2), new Object[0]);
        inputstream2 = inputstream1;
        s8 = s6;
        l12 = l10;
        l2 = l11;
        l13 = l3;
        flag = false;
        break; /* Loop/switch isn't completed */
_L2:
        long l5;
        long l6;
        long l7;
        String s3;
        IOUtils.closeQuietly(inputstream);
        l5 = l3;
        l6 = l2;
        String s2 = s1;
        l7 = l4;
        s3 = s2;
_L17:
        NetworkResult networkresult = builder.a();
        a(networkresult, l7, l5, l6, s3);
        return networkresult;
        IOException ioexception;
        ioexception;
        inputstream = inputstream1;
        s1 = s6;
        l4 = l10;
_L20:
        Object obj1;
        long l8;
        obj1 = ioexception;
        l8 = l4;
_L18:
        long l9;
        Object aobj[] = new Object[1];
        aobj[0] = ((Exception) (obj1)).getMessage();
        Timber.e("OkHttpNetworkInterface", "Http request failed: %s", aobj);
        String s4 = httpmethod.toString();
        l9 = SystemClock.elapsedRealtime() - l1;
        HttpMetricsTable.a(SnapchatApplication.e(), l, s4, s, l9, ((Exception) (obj1)).toString());
        builder.a(((Exception) (obj1)));
        IOUtils.closeQuietly(inputstream);
        s3 = s1;
        l5 = l3;
        l6 = l9;
        l7 = l8;
          goto _L17
        Exception exception;
        exception;
        inputstream = inputstream1;
_L19:
        IOUtils.closeQuietly(inputstream);
        throw exception;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        inputstream = inputstream1;
        s1 = s6;
        l4 = l10;
_L22:
        obj1 = illegalargumentexception;
        l8 = l4;
          goto _L18
        IllegalStateException illegalstateexception;
        illegalstateexception;
        inputstream = inputstream1;
        s1 = s6;
        l4 = l10;
_L21:
        obj1 = illegalstateexception;
        l8 = l4;
          goto _L18
        exception;
          goto _L19
        ioexception;
          goto _L20
        ioexception;
        s1 = s6;
          goto _L20
        ioexception;
        s1 = s6;
        l4 = l10;
          goto _L20
        illegalstateexception;
          goto _L21
        illegalstateexception;
        s1 = s6;
          goto _L21
        illegalstateexception;
        s1 = s6;
        l4 = l10;
          goto _L21
        illegalargumentexception;
          goto _L22
        illegalargumentexception;
        s1 = s6;
          goto _L22
        illegalargumentexception;
        s1 = s6;
        l4 = l10;
          goto _L22
_L16:
        inputstream1 = inputstream;
        if (true) goto _L24; else goto _L23
_L23:
        break; /* Loop/switch isn't completed */
_L14:
        l10 = l4;
        if (true) goto _L25; else goto _L6
_L6:
        l3 = l13;
        l4 = l12;
        String s9 = s8;
        inputstream = inputstream2;
        s1 = s9;
        if (true) goto _L27; else goto _L26
_L26:
    }

    public OkHttpClient a(String s)
    {
        return mClientFactory.a(s);
    }

    protected Request a(Map map, HttpMethod httpmethod, String s, Object obj)
    {
        java.net.URL url;
        url = b(s).toURL();
        break MISSING_BLOCK_LABEL_9;
        Object obj1;
        obj1;
_L2:
        throw new IllegalArgumentException((new StringBuilder()).append("Invalid URL encountered in server request: URL: ").append(s).append(" Error: ").append(((Exception) (obj1)).getMessage()).toString());
        if (httpmethod == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Null method encountered for url: ").append(url).toString());
        }
        com.squareup.okhttp.Headers.Builder builder = new com.squareup.okhttp.Headers.Builder();
        com.squareup.okhttp.Headers.Builder builder1;
        if (map != null)
        {
            Iterator iterator = map.entrySet().iterator();
            java.util.Map.Entry entry;
            for (builder1 = builder; iterator.hasNext(); builder1 = builder1.a((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        } else
        {
            builder1 = builder;
        }
        Headers headers = builder1.a();
        if (httpmethod.toString().equals("GET"))
        {
            return (new com.squareup.okhttp.Request.Builder()).a(url).a().a(headers).c();
        } else
        {
            RequestBody requestbody = mEntityFactory.a(s, obj);
            return (new com.squareup.okhttp.Request.Builder()).a(url).a(httpmethod.toString(), requestbody).a(headers).c();
        }
        obj1;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
