// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.model.StorySnapLogbook;

public class StorySnapDeletedEvent
{

    private boolean a;
    private StorySnapLogbook b;

    public StorySnapDeletedEvent(boolean flag, StorySnapLogbook storysnaplogbook)
    {
        a = flag;
        b = storysnaplogbook;
    }

    public boolean a()
    {
        return a;
    }

    public StorySnapLogbook b()
    {
        return b;
    }
}
