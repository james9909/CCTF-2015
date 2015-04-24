// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class CancelQuickSnapEvent
{

    private boolean a;

    public CancelQuickSnapEvent()
    {
        a = true;
    }

    public CancelQuickSnapEvent(boolean flag)
    {
        a = true;
        a = flag;
    }

    public boolean a()
    {
        return a;
    }
}
