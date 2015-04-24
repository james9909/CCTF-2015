// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.stories.ui.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.stories.ui.animation:
//            StoriesSecondaryTextAnimation

public class StoriesSecondaryTextHideAnimation extends StoriesSecondaryTextAnimation
{

    public StoriesSecondaryTextHideAnimation(View view, View view1)
    {
        super(view, view1, 0L);
    }

    public StoriesSecondaryTextHideAnimation(View view, View view1, long l)
    {
        super(view, view1, l);
    }

    public ObjectAnimator b()
    {
        float f = (float)ViewUtils.b(d) / 2.0F;
        return ObjectAnimator.ofFloat(c, "translationY", new float[] {
            f
        });
    }

    protected ObjectAnimator c()
    {
        return ObjectAnimator.ofFloat(d, "alpha", new float[] {
            0.0F
        });
    }

    public void onAnimationCancel(Animator animator)
    {
        c.setTranslationY(0.0F);
        d.setAlpha(1.0F);
        d.setVisibility(0);
    }

    public void onAnimationEnd(Animator animator)
    {
        if (d())
        {
            return;
        } else
        {
            c.setTranslationY(0.0F);
            d.setVisibility(8);
            return;
        }
    }
}
