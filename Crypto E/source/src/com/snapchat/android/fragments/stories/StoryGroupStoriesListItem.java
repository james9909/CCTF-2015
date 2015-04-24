// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import android.text.TextUtils;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItem

public class StoryGroupStoriesListItem
    implements StoriesListItem
{

    protected final StoryGroup a;

    public StoryGroupStoriesListItem(StoryGroup storygroup)
    {
        a = storygroup;
    }

    public String a()
    {
        return a.c();
    }

    public String a(Context context)
    {
        return ((StorySnapLogbook)a.i().get(0)).e().c(context);
    }

    public String b()
    {
        return a.e();
    }

    public String d()
    {
        return a.c();
    }

    public StoryGroup e()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof StoryGroupStoriesListItem))
        {
            return false;
        } else
        {
            StoryGroupStoriesListItem storygroupstorieslistitem = (StoryGroupStoriesListItem)obj;
            return TextUtils.equals(d(), storygroupstorieslistitem.d());
        }
    }

    public boolean g()
    {
        return a.m() > 0;
    }

    public com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType h()
    {
        return com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType.a;
    }

    public int hashCode()
    {
        return 629 + d().hashCode();
    }

    public boolean r_()
    {
        return !TextUtils.isEmpty(a.d());
    }
}
