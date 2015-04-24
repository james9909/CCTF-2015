// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.api.RequestTask;

public class ForceVerificationEvent
{

    private String a;
    private RequestTask b;

    public ForceVerificationEvent(String s, RequestTask requesttask)
    {
        a = s;
        b = requesttask;
    }

    public String a()
    {
        return a;
    }

    public RequestTask b()
    {
        return b;
    }
}
