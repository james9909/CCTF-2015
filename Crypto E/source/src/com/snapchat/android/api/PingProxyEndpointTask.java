// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.model.ProxyEndpoint;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.eventbus.PingProxyEndpointTaskEvent;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class PingProxyEndpointTask extends RequestTask
{
    public static interface PingProxyEndpointTaskCallback
    {

        public abstract void a(PingProxyEndpointTaskEvent pingproxyendpointtaskevent);
    }


    public static final String PATH = "/loq/ping";
    private PingProxyEndpointTaskCallback mCallback;
    private ProxyEndpoint mProxyEndpoint;

    public PingProxyEndpointTask(ProxyEndpoint proxyendpoint, PingProxyEndpointTaskCallback pingproxyendpointtaskcallback)
    {
        mProxyEndpoint = proxyendpoint;
        mCallback = pingproxyendpointtaskcallback;
    }

    private void k()
    {
        PingProxyEndpointTaskEvent pingproxyendpointtaskevent = new PingProxyEndpointTaskEvent(false, mProxyEndpoint);
        mCallback.a(pingproxyendpointtaskevent);
    }

    protected String a()
    {
        return "/loq/ping";
    }

    protected Bundle b()
    {
        return new Bundle();
    }

    protected void b(String s, int i)
    {
        k();
    }

    protected String c()
    {
        return (new StringBuilder()).append("PingProxyEndpointTask for ").append(d()).toString();
    }

    protected void c(ServerResponse serverresponse)
    {
        java.lang.reflect.Type type = (new TypeToken() {

            final PingProxyEndpointTask this$0;

            
            {
                this$0 = PingProxyEndpointTask.this;
                super();
            }
        }).getType();
        if (((Map)GsonUtil.a().fromJson(mResultJson, type)).get("timestamp") == null)
        {
            k();
            return;
        } else
        {
            PingProxyEndpointTaskEvent pingproxyendpointtaskevent = new PingProxyEndpointTaskEvent(true, mProxyEndpoint);
            mCallback.a(pingproxyendpointtaskevent);
            return;
        }
    }

    protected String d()
    {
        return mProxyEndpoint.c();
    }
}
