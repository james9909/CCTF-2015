// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.model.Mediabryo;

public class SnapReadyForSendingEvent
{

    private Mediabryo a;
    private boolean b;

    public SnapReadyForSendingEvent(Mediabryo mediabryo, boolean flag)
    {
        a = mediabryo;
        b = flag;
    }

    public Mediabryo a()
    {
        return a;
    }

    public boolean b()
    {
        return b;
    }
}
