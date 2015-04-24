// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.model.server.ServerEndpointSet;
import java.util.List;

public class EndpointSet
{

    private List mDirectoryUrls;
    private List mProxyEndpoints;
    private long mVersion;

    public EndpointSet(long l, List list, List list1)
    {
        mVersion = l;
        mProxyEndpoints = list;
        mDirectoryUrls = list1;
    }

    public EndpointSet(ServerEndpointSet serverendpointset)
    {
        mVersion = serverendpointset.getVersion();
        mProxyEndpoints = serverendpointset.getProxies();
        mDirectoryUrls = serverendpointset.getDirectoryUrls();
    }

    public List a()
    {
        return mProxyEndpoints;
    }

    public void a(long l)
    {
        mVersion = l;
    }

    public void a(List list)
    {
        mDirectoryUrls = list;
    }

    public List b()
    {
        return mDirectoryUrls;
    }

    public long c()
    {
        return mVersion;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof EndpointSet))
            {
                return false;
            }
            EndpointSet endpointset = (EndpointSet)obj;
            if (!mDirectoryUrls.containsAll(endpointset.b()) || !endpointset.b().containsAll(mDirectoryUrls) || !mProxyEndpoints.containsAll(endpointset.a()) || !endpointset.a().containsAll(mProxyEndpoints) || mVersion != endpointset.c())
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return mDirectoryUrls.hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append(b().toString()).append(", ").append(a().toString()).append(", ").append(c()).toString();
    }
}
