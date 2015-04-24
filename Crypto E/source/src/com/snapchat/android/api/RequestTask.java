// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.HttpUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ForceVerificationEvent;
import com.snapchat.android.util.network.EndpointManager;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.ResponseBody;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.api:
//            SnapchatServer, ServerSideFeatures

public abstract class RequestTask extends AsyncTask
    implements SnapchatServer.HttpEntityInterface
{

    public static final int SC_LOCKED_ACCOUNT = 418;
    private static final String TAG = "RequestTask";
    protected boolean m401Error;
    protected boolean m404Error;
    protected long mElapsedTime;
    public String mFailureMessage;
    protected boolean mHitCache;
    protected String mProtocol;
    protected String mReachability;
    protected long mReceivedBytes;
    protected String mResultJson;
    protected long mSentBytes;
    protected long mStartMillis;
    protected int mStatusCode;
    protected UUID mUUID;

    public RequestTask()
    {
        m401Error = false;
        m404Error = false;
    }

    private void a(Bundle bundle)
    {
        Timber.c("RequestTask", "================================== Request Task result ==================================", new Object[0]);
        Timber.c("RequestTask", (new StringBuilder()).append("statusCode: ").append(mStatusCode).toString(), new Object[0]);
        Timber.c("RequestTask", (new StringBuilder()).append("hitCache: ").append(mHitCache).toString(), new Object[0]);
        Timber.c("RequestTask", (new StringBuilder()).append("sentBytes: ").append(mSentBytes).toString(), new Object[0]);
        Timber.c("RequestTask", (new StringBuilder()).append("receivedBytes: ").append(mReceivedBytes).toString(), new Object[0]);
        Timber.c("RequestTask", (new StringBuilder()).append("reachability: ").append(mReachability).toString(), new Object[0]);
        String s = bundle.getString("resultData");
        if (!TextUtils.isEmpty(s))
        {
            Object aobj[];
            for (Iterator iterator = Timber.a(String.format("result = %s", new Object[] {
    SnapchatServer.a(s)
})).iterator(); iterator.hasNext(); Timber.b("RequestTask", false, "%s: %s", aobj))
            {
                String s1 = (String)iterator.next();
                aobj = new Object[2];
                aobj[0] = c();
                aobj[1] = s1;
            }

        }
        Timber.c("RequestTask", "================================== end Request Task result ==================================", new Object[0]);
    }

    private boolean b(String s)
    {
        return TextUtils.equals(s, "/bq/get_captcha");
    }

    protected transient ServerResponse a(String as[])
    {
        String s2;
        ServerResponse serverresponse;
        if (ReleaseManager.e())
        {
            Thread.currentThread().setName(c());
        }
        String s = a();
        String s1 = d();
        Bundle bundle = b();
        bundle.putString("features_map", ServerSideFeatures.a().a(s));
        int k = h();
        Bundle bundle1;
        if (b(s))
        {
            bundle1 = SnapchatServer.a(s, bundle, k, this, s1);
        } else
        {
            bundle1 = SnapchatServer.a(s, bundle, k, null, s1);
        }
        s2 = bundle1.getString("resultData");
        mResultJson = s2;
        mStatusCode = bundle1.getInt("statusCode");
        mHitCache = bundle1.getBoolean("hitCache");
        mSentBytes = bundle1.getLong("sentBytes");
        mReceivedBytes = bundle1.getLong("receivedBytes");
        mReachability = bundle1.getString("reachability");
        mElapsedTime = SystemClock.elapsedRealtime() - mStartMillis;
        mProtocol = bundle1.getString("protocol");
        if (TextUtils.isEmpty(s2)) goto _L2; else goto _L1
_L1:
        serverresponse = (ServerResponse)GsonUtil.a().fromJson(s2, com/snapchat/android/model/server/ServerResponse);
_L3:
        Object obj;
        if (HttpUtils.a(mStatusCode))
        {
            if (serverresponse != null)
            {
                boolean flag;
                if (TextUtils.equals("/loq/all_updates", s) || TextUtils.equals("/loq/conversations", s) || TextUtils.equals("/loq/gae_server_list", s) || TextUtils.equals("/loq/ping", s))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (serverresponse.logged || serverresponse.updates_response != null && serverresponse.updates_response.logged || flag)
                {
                    c(serverresponse);
                } else
                {
                    b(serverresponse.message, mStatusCode);
                    mFailureMessage = serverresponse.message;
                }
            }
        } else
        if (mStatusCode == 401)
        {
            m401Error = true;
        } else
        if (mStatusCode == 404)
        {
            m404Error = true;
        } else
        if (mStatusCode == 408)
        {
            EndpointManager.a().c();
            mFailureMessage = "There was a problem connecting to the server";
        } else
        if (mStatusCode == 500)
        {
            mFailureMessage = "Internal server error";
            b(mFailureMessage, mStatusCode);
        } else
        {
            SnapchatApplication snapchatapplication = SnapchatApplication.e();
            if (snapchatapplication != null)
            {
                mFailureMessage = snapchatapplication.getString(0x7f0c0171);
            } else
            {
                mFailureMessage = "There was a problem connecting to the server.";
            }
            b(mFailureMessage, mStatusCode);
        }
        if (mStatusCode == 503 && s.contains("/find_friends"))
        {
            (new ErrorMetric("Server response 503 on /find_friends")).c();
        }
        if (mStatusCode == 403 && s.contains("/login"))
        {
            (new ErrorMetric("Server response 403 on /login")).c();
        }
        return serverresponse;
        obj;
_L4:
        mFailureMessage = (new StringBuilder()).append(((Throwable) (obj)).getMessage()).append(" in ").append(c()).append(": ").append(s2).toString();
_L2:
        serverresponse = null;
          goto _L3
        obj;
          goto _L4
    }

    public abstract String a();

    public void a(ServerResponse serverresponse)
    {
        Object aobj[] = new Object[2];
        aobj[0] = c();
        aobj[1] = Integer.valueOf((int)mElapsedTime);
        Timber.b("RequestTask", "%s completed in %d milliseconds.", aobj);
        NetworkAnalytics networkanalytics = NetworkAnalytics.a();
        UUID uuid = mUUID;
        String s = a();
        int k = mStatusCode;
        long l = mReceivedBytes;
        String s1 = mReachability;
        com.google.gson.internal.LinkedTreeMap linkedtreemap;
        EasyMetric easymetric;
        if (serverresponse == null)
        {
            linkedtreemap = null;
        } else
        {
            linkedtreemap = serverresponse.server_info;
        }
        networkanalytics.a(uuid, s, k, l, s1, linkedtreemap);
        if (c().equalsIgnoreCase("GetProfileInfoTask"))
        {
            if (HttpUtils.a(mStatusCode))
            {
                a(mResultJson);
            } else
            {
                a(mFailureMessage, mStatusCode);
                d(serverresponse);
            }
        } else
        if (m401Error)
        {
            i();
        } else
        if (m404Error)
        {
            e();
        } else
        if (TextUtils.isEmpty(mFailureMessage))
        {
            b(serverresponse);
        } else
        {
            a(mFailureMessage, mStatusCode);
            d(serverresponse);
        }
        easymetric = (new EasyMetric("ENDPOINT_REQUEST")).a("endpoint", a()).a("status_code", Integer.valueOf(mStatusCode)).a("total_latency", Long.valueOf(mElapsedTime)).a("request_size_bytes", Long.valueOf(mSentBytes)).a("return_size_bytes", Long.valueOf(mReceivedBytes)).a("Hit_Cache", Boolean.valueOf(mHitCache)).a("reachability", mReachability).a("protocol", mProtocol);
        if (serverresponse != null && serverresponse.server_info != null)
        {
            easymetric.a(serverresponse.server_info);
        }
        easymetric.a(false);
    }

    public void a(Headers headers, ResponseBody responsebody)
    {
    }

    protected void a(String s)
    {
    }

    public void a(String s, int k)
    {
    }

    public abstract Bundle b();

    public void b(ServerResponse serverresponse)
    {
    }

    protected void b(String s, int k)
    {
    }

    public abstract String c();

    protected void c(ServerResponse serverresponse)
    {
    }

    protected String d()
    {
        return null;
    }

    public void d(ServerResponse serverresponse)
    {
        while (serverresponse == null || serverresponse.status != 418) 
        {
            return;
        }
        BusProvider.a().a(new ForceVerificationEvent(serverresponse.message, null));
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void e()
    {
    }

    public boolean f()
    {
        onPreExecute();
        a(a(new String[0]));
        return HttpUtils.a(mStatusCode);
    }

    public int g()
    {
        return mStatusCode;
    }

    protected int h()
    {
        return 2;
    }

    protected void i()
    {
        AnalyticsEvents.a(com.snapchat.android.analytics.AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
        SnapchatServiceManager.a().d();
    }

    public int j()
    {
        return hashCode();
    }

    public void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    public void onPreExecute()
    {
        Object aobj[] = new Object[1];
        aobj[0] = c();
        Timber.b("RequestTask", "Starting new %s.", aobj);
        mUUID = UUID.randomUUID();
        mStartMillis = SystemClock.elapsedRealtime();
    }
}
