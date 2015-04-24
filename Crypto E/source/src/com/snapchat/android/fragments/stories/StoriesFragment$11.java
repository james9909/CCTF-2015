// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.animation.Animator;
import com.snapchat.android.model.StoryGroup;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment, StoriesAdapter

class a
    implements android.animation.stener
{

    final StoryGroup a;
    final StoriesFragment b;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        b.n();
        b.v();
        b.f.a();
        StoriesFragment.a(b, null);
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
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
