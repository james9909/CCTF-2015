// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.model.EndpointSet;

public class GetEndpointSetTaskEvent
{

    private EndpointSet a;
    private boolean b;
    private int c;

    public GetEndpointSetTaskEvent(boolean flag, EndpointSet endpointset, int i)
    {
        a = endpointset;
        b = flag;
        c = i;
    }

    public EndpointSet a()
    {
        return a;
    }

    public boolean b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }
}
