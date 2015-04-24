// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.google.gson.Gson;
import com.snapchat.android.util.GsonUtil;
import java.util.List;

public class ProxyEndpoint
{

    private List mAddliveBaseUrls;
    private String mBaseUrl;
    private String mMediaBaseUrl;
    private int mPriority;

    public ProxyEndpoint(String s, String s1, List list, int i)
    {
        mBaseUrl = s;
        mMediaBaseUrl = s1;
        mAddliveBaseUrls = list;
        mPriority = i;
    }

    public int a()
    {
        return mPriority;
    }

    public void a(int i)
    {
        mPriority = i;
    }

    public void a(String s)
    {
        mBaseUrl = s;
    }

    public void a(List list)
    {
        mAddliveBaseUrls = list;
    }

    public List b()
    {
        return mAddliveBaseUrls;
    }

    public void b(String s)
    {
        mMediaBaseUrl = s;
    }

    public String c()
    {
        return mBaseUrl;
    }

    public String d()
    {
        return mMediaBaseUrl;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ProxyEndpoint))
            {
                return false;
            }
            ProxyEndpoint proxyendpoint = (ProxyEndpoint)obj;
            if (!mBaseUrl.equals(proxyendpoint.c()) || !mMediaBaseUrl.equals(proxyendpoint.d()) || !mAddliveBaseUrls.containsAll(proxyendpoint.b()) || !proxyendpoint.b().containsAll(mAddliveBaseUrls) || mPriority != proxyendpoint.a())
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return mBaseUrl.hashCode();
    }

    public String toString()
    {
        return GsonUtil.a().toJson(this, com/snapchat/android/model/ProxyEndpoint);
    }
}
