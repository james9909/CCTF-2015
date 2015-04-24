// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.model.Mediabryo;

public class SnapReadyForRecipientsEvent
{

    private final Mediabryo a;
    private final boolean b;

    public SnapReadyForRecipientsEvent(Mediabryo mediabryo)
    {
        this(mediabryo, false);
    }

    public SnapReadyForRecipientsEvent(Mediabryo mediabryo, boolean flag)
    {
        if (mediabryo == null)
        {
            throw new NullPointerException();
        } else
        {
            a = mediabryo;
            b = flag;
            return;
        }
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
