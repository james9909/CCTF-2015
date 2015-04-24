// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class UpdateFeedEvent
{

    private final int a;

    public UpdateFeedEvent()
    {
        this(-1);
    }

    public UpdateFeedEvent(int i)
    {
        a = i;
    }

    public int a()
    {
        return a;
    }
}
