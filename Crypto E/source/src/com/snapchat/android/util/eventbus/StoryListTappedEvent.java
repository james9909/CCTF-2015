// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.fragments.stories.StoriesListItem;

public class StoryListTappedEvent
{

    public StoriesListItem a;

    public StoryListTappedEvent(StoriesListItem storieslistitem)
    {
        a = storieslistitem;
    }
}