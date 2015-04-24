// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import com.snapchat.android.model.ReceivedSnap;

public class SnapUpdate
{

    public final Integer c;
    public final Integer replayed;
    public final Double sv;
    public final Long t;

    public SnapUpdate(ReceivedSnap receivedsnap)
    {
        int i = 1;
        super();
        t = Long.valueOf(receivedsnap.L() / 1000L);
        int j;
        if (receivedsnap.H())
        {
            j = i;
        } else
        {
            j = 0;
        }
        c = Integer.valueOf(j);
        if (!receivedsnap.A())
        {
            i = 0;
        }
        replayed = Integer.valueOf(i);
        sv = Double.valueOf(receivedsnap.E());
    }
}
