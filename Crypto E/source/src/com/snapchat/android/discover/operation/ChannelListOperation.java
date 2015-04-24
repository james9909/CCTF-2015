// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.operation;

import android.content.Context;
import android.content.Intent;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.discover.model.database.table.PublisherChannelTable;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.model.User;
import com.snapchat.android.operation.BasicScRequestOperation;
import com.snapchat.data.gson.discover.ChannelListResponse;
import java.util.List;

public class ChannelListOperation extends BasicScRequestOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{

    private User b;
    private final DiscoverEndpointManager c;
    private int e;

    public ChannelListOperation(Intent intent)
    {
        this(intent, DiscoverEndpointManager.a());
    }

    public ChannelListOperation(Intent intent, DiscoverEndpointManager discoverendpointmanager)
    {
        super(intent);
        e = 0;
        a(com/snapchat/data/gson/discover/ChannelListResponse, this);
        c = discoverendpointmanager;
    }

    public void a(Context context)
    {
        b = User.a(context);
        super.a(context);
    }

    protected void a(ChannelListResponse channellistresponse)
    {
        List list;
        int i;
        if (channellistresponse == null)
        {
            list = null;
        } else
        {
            list = channellistresponse.a();
        }
        if (list == null)
        {
            i = 0;
        } else
        {
            i = list.size();
        }
        e = i;
        PublisherChannelTable.b().a(b.I(), channellistresponse);
    }

    public void a(ChannelListResponse channellistresponse, NetworkResult networkresult)
    {
        if (networkresult.h() && channellistresponse != null)
        {
            a(channellistresponse);
            return;
        } else
        {
            b(networkresult);
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ChannelListResponse)obj, networkresult);
    }

    public Object b()
    {
        return null;
    }

    public void b(Context context)
    {
    }

    protected void b(NetworkResult networkresult)
    {
    }

    public HttpMethod c()
    {
        return HttpMethod.GET;
    }

    protected String e()
    {
        return c.b();
    }

    public int g()
    {
        return e;
    }
}
