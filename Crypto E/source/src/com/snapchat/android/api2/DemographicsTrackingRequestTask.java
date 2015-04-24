// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.HyperRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.UserPrefs;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class DemographicsTrackingRequestTask extends HyperRequestTask
{

    private final String mUrlEndpoint;

    public DemographicsTrackingRequestTask(String s, Map map)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (map != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder()).append("&").append((String)entry.getKey()).append("=").append((String)entry.getValue()).toString()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        mUrlEndpoint = (new StringBuilder()).append(s).append(stringbuilder.toString()).toString();
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        UserPrefs.v(networkresult.h());
    }

    public Object b()
    {
        return null;
    }

    public HttpMethod c()
    {
        return HttpMethod.GET;
    }

    public String m_()
    {
        return mUrlEndpoint;
    }
}
