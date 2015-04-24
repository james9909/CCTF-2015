// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.animation.er
{

    final a a;

    public void onAnimationEnd(Animation animation)
    {
        SnapPreviewFragment.t(a.a).setVisibility(8);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ener(ener ener)
    {
        a = ener;
        super();
    }

    // Unreferenced inner class com/snapchat/android/SnapPreviewFragment$17

/* anonymous class */
    class SnapPreviewFragment._cls17
        implements android.view.animation.Animation.AnimationListener
    {

        final SnapPreviewFragment a;

        public void onAnimationEnd(Animation animation)
        {
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(750L);
            alphaanimation.setAnimationListener(new SnapPreviewFragment._cls17._cls1(this));
            SnapPreviewFragment.t(a).startAnimation(alphaanimation);
        }

            
            {
                a = snappreviewfragment;
                super();
            }
    }

}
