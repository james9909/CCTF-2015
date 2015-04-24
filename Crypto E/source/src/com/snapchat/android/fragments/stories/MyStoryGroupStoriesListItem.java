// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.text.TextUtils;
import com.snapchat.android.model.MyStoryGroup;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoryGroupStoriesListItem

public class MyStoryGroupStoriesListItem extends StoryGroupStoriesListItem
{

    private final String b;

    public MyStoryGroupStoriesListItem()
    {
        super(MyStoryGroup.a());
        b = UserPrefs.s();
    }

    public MyStoryGroupStoriesListItem(String s)
    {
        super(MyStoryGroup.a());
        b = s;
    }

    public String a()
    {
        return UserPrefs.k();
    }

    public String b()
    {
        return b;
    }

    public boolean r_()
    {
        return !TextUtils.isEmpty(UserPrefs.r());
    }
}
