// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import java.util.UUID;

public class SyncAllCompletedEvent
{

    private UUID a;
    private boolean b;
    private boolean c;

    public SyncAllCompletedEvent(UUID uuid, boolean flag)
    {
        a = uuid;
        b = flag;
    }

    public SyncAllCompletedEvent(UUID uuid, boolean flag, boolean flag1)
    {
        a = uuid;
        b = flag;
        c = flag1;
    }

    public UUID a()
    {
        return a;
    }

    public boolean b()
    {
        return b;
    }

    public boolean c()
    {
        return c;
    }
}
