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
    implements android.view.animation.ener
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
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final SnapPreviewFragment._cls17 a;

            public void onAnimationEnd(Animation animation1)
            {
                SnapPreviewFragment.t(a.a).setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
            }

            
            {
                a = SnapPreviewFragment._cls17.this;
                super();
            }
        });
        SnapPreviewFragment.t(a).startAnimation(alphaanimation);
    }

    _cls1.a(SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
