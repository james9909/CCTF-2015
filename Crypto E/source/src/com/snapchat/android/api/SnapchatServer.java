// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.GoogleAuthManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.ClientConnMetricsManager;
import com.snapchat.android.api2.framework.EntityFactory;
import com.snapchat.android.api2.framework.SnapchatOkHttpClientFactory;
import com.snapchat.android.database.table.HttpMetricsTable;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.debug.DevUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.network.ConnectivityUtils;
import com.snapchat.android.util.network.EndpointManager;
import com.snapchat.android.util.network.HttpHeaderUtils;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MultipartBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api:
//            RequestAuthorization

public class SnapchatServer
{
    public static interface HttpEntityInterface
    {

        public abstract void a(Headers headers, ResponseBody responsebody);
    }


    public static final int DELETE = 4;
    public static final int GET = 1;
    private static final String LANGUAGE_HEADER_NAME = "Accept-Language";
    private static final String LOCALE_HEADER_NAME = "Accept-Locale";
    public static final int MAX_UPLOAD_BLOB_SIZE = 0x280000;
    public static final int POST = 2;
    public static final int PUT = 3;
    private static final String TAG = "SnapchatServer";
    private static final String USER_AGENT_HEADER_NAME = "User-Agent";
    private static final String UTF_8 = "UTF-8";

    public SnapchatServer()
    {
    }

    private static Uri a(Uri uri, Bundle bundle)
    {
        if (bundle != null)
        {
            android.net.Uri.Builder builder = uri.buildUpon();
            Iterator iterator = bundle.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s = (String)iterator.next();
                Object obj = bundle.get(s);
                if (obj != null)
                {
                    builder.appendQueryParameter(s, obj.toString());
                }
            } while (true);
            uri = builder.build();
        }
        return uri;
    }

    public static Bundle a(String s, Bundle bundle, int i)
    {
        return a(s, bundle, i, null, null);
    }

    public static Bundle a(String s, Bundle bundle, int i, HttpEntityInterface httpentityinterface)
    {
        return a(s, bundle, i, httpentityinterface, null);
    }

    public static Bundle a(String s, Bundle bundle, int i, HttpEntityInterface httpentityinterface, String s1)
    {
        Uri uri;
        Bundle bundle1;
        ClientConnMetricsManager clientconnmetricsmanager;
        long l;
        long l1;
        GoogleAuthManager googleauthmanager;
        boolean flag;
        com.squareup.okhttp.Request.Builder builder;
        Object obj;
        String s2;
        String s3;
        String s4;
        long l2;
        if (s1 == null)
        {
            if (ReleaseManager.f())
            {
                uri = Uri.parse((new StringBuilder()).append(DevUtils.b(s)).append(s).toString());
            } else
            {
                uri = Uri.parse((new StringBuilder()).append(EndpointManager.a().b()).append(s).toString());
            }
        } else
        {
            uri = Uri.parse((new StringBuilder()).append(s1).append(s).toString());
        }
        bundle1 = new Bundle();
        clientconnmetricsmanager = new ClientConnMetricsManager();
        l = SystemClock.elapsedRealtime();
        l1 = System.currentTimeMillis();
        s2 = String.valueOf(l1);
        s3 = a(s2, s);
        bundle.putString("timestamp", s2);
        bundle.putString("req_token", s3);
        googleauthmanager = GoogleAuthManager.a();
        flag = true;
_L11:
        if (!flag) goto _L2; else goto _L1
_L1:
        builder = new com.squareup.okhttp.Request.Builder();
        i;
        JVM INSTR tableswitch 1 4: default 148
    //                   1 373
    //                   2 726
    //                   3 790
    //                   4 702;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        throw new IllegalArgumentException((new StringBuilder()).append("Unsupported verb: ").append(i).toString());
        obj;
_L31:
        Timber.e("SnapchatServer", (new StringBuilder()).append("There was a problem when sending the request ").append(a(i)).append(":").append(uri.toString()).toString(), new Object[0]);
        Timber.a("SnapchatServer", ((Throwable) (obj)));
        l2 = SystemClock.elapsedRealtime() - l;
        HttpMetricsTable.a(SnapchatApplication.e(), l1, a(i), s, l2, ((Exception) (obj)).toString());
        if (obj instanceof IOException)
        {
            EndpointManager.a().c();
        }
_L2:
        boolean flag1;
        String s8;
        Exception exception1;
        String s13;
        boolean flag3;
        String s5;
        String s6;
        com.squareup.okhttp.Headers.Builder builder1;
        Headers headers;
        Request request;
        String s7;
        Response response;
        int j;
        String s9;
        boolean flag2;
        String s10;
        ResponseBody responsebody;
        String s11;
        long l3;
        long l4;
        long l5;
        Object aobj[];
        String s12;
        Iterator iterator;
        String s14;
        String s15;
        String s16;
        java.lang.reflect.Type type;
        Iterator iterator1;
        String s17;
        String s18;
        RequestBody requestbody;
        String s19;
        String s20;
        try
        {
            s4 = a(bundle1.getString("resultData"));
            Timber.b("SnapchatServer", false, (new StringBuilder()).append("SnapchatServer Returning result: ").append(s4).toString(), new Object[0]);
        }
        catch (Exception exception)
        {
            Timber.c("SnapchatServer", (new StringBuilder()).append("Exception when returning result = ").append(exception.getMessage()).toString(), new Object[0]);
            return bundle1;
        }
        return bundle1;
_L4:
        s20 = a(uri, bundle).toString();
        builder.a();
        s6 = s20;
_L12:
        builder1 = new com.squareup.okhttp.Headers.Builder();
        builder1.a("User-Agent", HttpHeaderUtils.a());
        builder1.a("Accept-Language", HttpHeaderUtils.b());
        builder1.a("Accept-Locale", Locale.getDefault().toString());
        if (s6 == null)
        {
            break MISSING_BLOCK_LABEL_516;
        }
        if (!s6.contains("feelinsonice-hrd.appspot.com") || !HttpHeaderUtils.a(s6))
        {
            break MISSING_BLOCK_LABEL_516;
        }
        builder1.a("X-Snapchat-Client-Auth-Token", (new StringBuilder()).append("Bearer ").append(googleauthmanager.d()).toString());
        s17 = googleauthmanager.b();
        if (s17 == null)
        {
            break MISSING_BLOCK_LABEL_516;
        }
        builder1.a("X-Snapchat-AuthExp", s17);
        headers = builder1.a();
        request = builder.a(s6).a(headers).c();
        s7 = ConnectivityUtils.d();
        Timber.b("SnapchatServer", (new StringBuilder()).append("Executing request: ").append(a(i)).append(": ").append(s6).toString(), new Object[0]);
        response = (new SnapchatOkHttpClientFactory()).a(s6).a(request).a();
        j = response.c();
        if (j != 499 || s6 == null) goto _L9; else goto _L8
_L8:
        if (!s6.contains("feelinsonice-hrd.appspot.com") || !HttpHeaderUtils.a(s6)) goto _L9; else goto _L10
_L10:
        googleauthmanager.c();
        Timber.b("SnapchatServer", (new StringBuilder()).append("Android ID token expired, retry: ").append(a(i)).append(": ").append(s6).toString(), new Object[0]);
        flag = true;
          goto _L11
_L7:
        s19 = a(uri, bundle).toString();
        builder.b();
        s6 = s19;
          goto _L12
_L5:
        s18 = uri.toString();
        if (!bundle.containsKey("data") && !bundle.containsKey("thumbnail_data")) goto _L14; else goto _L13
_L13:
        requestbody = a(bundle, s);
_L15:
        builder.a(requestbody);
        s6 = s18;
          goto _L12
_L14:
        requestbody = RequestBody.a(EntityFactory.URL_ENCODED_FORM_MEDIA_TYPE, a(bundle));
          goto _L15
_L6:
        s5 = uri.toString();
        builder.b(RequestBody.a(EntityFactory.URL_ENCODED_FORM_MEDIA_TYPE, a(bundle)));
        s6 = s5;
          goto _L12
_L9:
        flag1 = false;
        s8 = null;
        iterator = response.f().b().iterator();
        s13 = null;
_L22:
        if (!iterator.hasNext()) goto _L17; else goto _L16
_L16:
        s14 = (String)iterator.next();
        if (!TextUtils.equals(s14, "X-Snapchat-Actions"))
        {
            break MISSING_BLOCK_LABEL_949;
        }
        type = (new TypeToken() {

        }).getType();
        iterator1 = ((List)GsonUtil.a().fromJson(response.a(s14), type)).iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_949;
            }
        } while (!TextUtils.equals((String)iterator1.next(), "RESET_GAE_PROXY"));
        EndpointManager.a().c();
        if (!TextUtils.equals(s14, "x-snapchat-request-id")) goto _L19; else goto _L18
_L18:
        s16 = response.a(s14);
        s8 = s16;
_L33:
        if (!TextUtils.equals(s14, "Age")) goto _L21; else goto _L20
_L20:
        s15 = response.a(s14);
        if (s15 != null)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
_L34:
        s13 = s8;
        flag1 = flag3;
          goto _L22
_L17:
        s9 = s13;
        flag2 = flag1;
_L29:
        s10 = response.d();
        responsebody = response.g();
        if (response.b() != null) goto _L24; else goto _L23
_L23:
        s11 = "";
_L30:
        l3 = SystemClock.elapsedRealtime() - l;
        clientconnmetricsmanager.a(a(i), s, s10, j, l1, l3);
        l4 = 0L;
        l5 = 0L;
        if (request.f() != null)
        {
            l4 = request.f().b();
        }
        if (responsebody == null) goto _L26; else goto _L25
_L25:
        if (httpentityinterface != null) goto _L28; else goto _L27
_L27:
        s12 = new String(responsebody.d(), "UTF-8");
        l5 = s12.getBytes().length;
        bundle1.putString("resultData", s12);
_L26:
        bundle1.putInt("statusCode", j);
        bundle1.putBoolean("hitCache", flag2);
        bundle1.putLong("sentBytes", l4);
        bundle1.putLong("receivedBytes", l5);
        bundle1.putString("reachability", s7);
        bundle1.putString("protocol", s11);
        clientconnmetricsmanager.a(l5, l4);
        aobj = new Object[8];
        aobj[0] = a(i);
        aobj[1] = s6;
        aobj[2] = Long.valueOf(l5);
        aobj[3] = Integer.valueOf(j);
        aobj[4] = s10;
        aobj[5] = Long.valueOf(l1);
        aobj[6] = Long.valueOf(l3);
        aobj[7] = s9;
        Timber.b("SnapchatServer", String.format("Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s", aobj), new Object[0]);
        flag = false;
          goto _L11
_L32:
        Timber.e("SnapchatServer", (new StringBuilder()).append("Exception when parsing headers: ").append(exception1.getMessage()).append(", ").append(exception1.getCause()).append(", ").append(exception1.getLocalizedMessage()).toString(), new Object[0]);
        s9 = s8;
        flag2 = flag1;
          goto _L29
_L24:
        s11 = response.b().toString();
          goto _L30
_L28:
        httpentityinterface.a(response.f(), responsebody);
          goto _L26
        obj;
          goto _L31
        exception1;
        s8 = s13;
          goto _L32
_L19:
        s8 = s13;
          goto _L33
_L21:
        flag3 = flag1;
          goto _L34
        exception1;
          goto _L32
    }

    protected static RequestBody a(Bundle bundle, String s)
    {
        MultipartBuilder multipartbuilder = (new MultipartBuilder()).a(MultipartBuilder.e);
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            Object obj = bundle.get(s1);
            if (obj == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("createMultipartBody putting null value for key ").append(s1).toString());
            }
            if (s1.equals("thumbnail_data") || s1.equals("data") && s.equals("/bq/upload_chat_media") || s1.equals("data"))
            {
                String as[] = new String[2];
                as[0] = "Content-Disposition";
                as[1] = (new StringBuilder()).append("form-data; name=\"").append(s1).append("\"; filename=\"").append(s1).append("\"").toString();
                multipartbuilder.a(Headers.a(as), RequestBody.a(EntityFactory.BYTE_STREAM_MEDIA_TYPE, (byte[])(byte[])obj));
            } else
            {
                String as1[] = new String[2];
                as1[0] = "Content-Disposition";
                as1[1] = (new StringBuilder()).append("form-data; name=\"").append(s1).append("\"").toString();
                multipartbuilder.a(Headers.a(as1), RequestBody.a(EntityFactory.STRING_MEDIA_TYPE, obj.toString()));
            }
        }

        return multipartbuilder.a();
    }

    private static String a(int i)
    {
        switch (i)
        {
        default:
            return "";

        case 1: // '\001'
            return "GET";

        case 2: // '\002'
            return "POST";

        case 3: // '\003'
            return "PUT";

        case 4: // '\004'
            return "DELETE";
        }
    }

    private static String a(Bundle bundle)
    {
        HashMap hashmap = new HashMap();
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            Object obj = bundle.get(s);
            if (obj != null)
            {
                hashmap.put(s, obj.toString());
            }
        } while (true);
        return EntityFactory.a(hashmap);
    }

    public static String a(String s)
    {
        ServerResponse serverresponse = (ServerResponse)GsonUtil.a().fromJson(s, com/snapchat/android/model/server/ServerResponse);
_L1:
        Object obj;
        if (serverresponse == null)
        {
            return "ERROR: could not parse server response.";
        } else
        {
            return serverresponse.toString();
        }
        obj;
_L2:
        Timber.a("SnapchatServer", ((Throwable) (obj)));
        serverresponse = null;
          goto _L1
        obj;
          goto _L2
    }

    public static String a(String s, String s1)
    {
        if (b(s1))
        {
            return RequestAuthorization.b(s);
        } else
        {
            return RequestAuthorization.a(s);
        }
    }

    private static void b(Bundle bundle)
    {
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            Object obj = bundle.get(s);
            if (obj != null)
            {
                Timber.c("SnapchatServer", (new StringBuilder()).append(s).append(": ").append(obj.toString()).toString(), new Object[0]);
            }
        } while (true);
    }

    private static boolean b(String s)
    {
        return TextUtils.equals(s, "/loq/gae_server_list") || TextUtils.equals(s, "/loq/ping");
    }
}
