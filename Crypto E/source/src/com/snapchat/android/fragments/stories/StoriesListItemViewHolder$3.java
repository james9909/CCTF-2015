// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.View;
import com.snapchat.android.stories.ui.animation.StoriesSecondaryTextAnimation;
import com.snapchat.android.stories.ui.animation.StoriesSecondaryTextHideAnimation;
import com.snapchat.android.stories.ui.animation.StoriesSecondaryTextShowAnimation;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItemViewHolder

class nimation extends StoriesSecondaryTextShowAnimation
{

    final long a;
    final StoriesListItemViewHolder b;

    public void onAnimationEnd(Animator animator)
    {
        super.onAnimationEnd(animator);
        if (d())
        {
            return;
        } else
        {
            StoriesListItemViewHolder.a(b, new StoriesSecondaryTextHideAnimation(StoriesListItemViewHolder.a(b), d, a));
            StoriesListItemViewHolder.b(b).a().start();
            return;
        }
    }

    tion(StoriesListItemViewHolder storieslistitemviewholder, View view, View view1, long l)
    {
        b = storieslistitemviewholder;
        a = l;
        super(view, view1);
    }
}
