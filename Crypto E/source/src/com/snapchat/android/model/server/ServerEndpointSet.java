// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import java.util.ArrayList;

public class ServerEndpointSet
{

    private ArrayList mDirectoryUrls;
    private ArrayList mProxies;
    private long mVersion;

    public ServerEndpointSet()
    {
    }

    public ArrayList getDirectoryUrls()
    {
        return mDirectoryUrls;
    }

    public ArrayList getProxies()
    {
        return mProxies;
    }

    public long getVersion()
    {
        return mVersion;
    }
}
