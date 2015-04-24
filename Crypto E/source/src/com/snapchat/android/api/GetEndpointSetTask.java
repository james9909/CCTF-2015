// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.google.gson.Gson;
import com.snapchat.android.model.EndpointSet;
import com.snapchat.android.model.ProxyEndpoint;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.eventbus.GetEndpointSetTaskEvent;
import com.snapchat.android.util.network.EndpointManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class GetEndpointSetTask extends RequestTask
{
    public static interface GetEndpointSetTaskCallback
    {

        public abstract void a(GetEndpointSetTaskEvent getendpointsettaskevent);
    }

    class PingResult
    {

        private long mPingTime;
        private String mUrl;
        final GetEndpointSetTask this$0;

        public PingResult(String s, long l)
        {
            this$0 = GetEndpointSetTask.this;
            super();
            mUrl = s;
            mPingTime = l;
        }
    }


    public static final String PATH = "/loq/gae_server_list";
    private static final String TASK_NAME = "GetEndpointSetTask";
    private String mBaseUrl;
    private GetEndpointSetTaskCallback mCallback;

    public GetEndpointSetTask(String s, GetEndpointSetTaskCallback getendpointsettaskcallback)
    {
        mBaseUrl = s;
        mCallback = getendpointsettaskcallback;
    }

    protected String a()
    {
        return "/loq/gae_server_list";
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        ArrayList arraylist = new ArrayList();
        Map map = EndpointManager.a().g();
        if (map != null)
        {
            ProxyEndpoint proxyendpoint;
            long l;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); arraylist.add(new PingResult(proxyendpoint.c(), l)))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                proxyendpoint = (ProxyEndpoint)entry.getKey();
                l = ((Long)entry.getValue()).longValue();
            }

        }
        bundle.putString("last_ping_results", GsonUtil.a().toJson(arraylist));
        return bundle;
    }

    protected void b(String s, int i)
    {
        GetEndpointSetTaskEvent getendpointsettaskevent = new GetEndpointSetTaskEvent(false, null, i);
        mCallback.a(getendpointsettaskevent);
    }

    protected String c()
    {
        return "GetEndpointSetTask";
    }

    protected void c(ServerResponse serverresponse)
    {
        GetEndpointSetTaskEvent getendpointsettaskevent = new GetEndpointSetTaskEvent(true, new EndpointSet(serverresponse.gae_proxy_update), 200);
        mCallback.a(getendpointsettaskevent);
    }

    protected String d()
    {
        return mBaseUrl;
    }
}
