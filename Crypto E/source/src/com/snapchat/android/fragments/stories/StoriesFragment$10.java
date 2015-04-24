// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.animation.Animation;
import android.widget.ImageView;
import com.snapchat.android.model.StoryGroup;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements android.view.animation.Listener
{

    final StoryGroup a;
    final StoriesFragment b;

    public void onAnimationEnd(Animation animation)
    {
        StoriesFragment.h(b).setVisibility(8);
        StoriesFragment.a(b, null);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        StoriesFragment.a(b, a.c());
    }

    (StoriesFragment storiesfragment, StoryGroup storygroup)
    {
        b = storiesfragment;
        a = storygroup;
        super();
    }
}
