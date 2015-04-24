// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

// Referenced classes of package com.snapchat.android.discover.ui:
//            OpenChannelAnimationView, ChannelView

class atorEndListener extends atorEndListener
{

    final a a;

    public void onAnimationEnd(Animator animator)
    {
        OpenChannelAnimationView.a(a.a).setVisibility(4);
    }

    atorEndListener(atorEndListener atorendlistener)
    {
        a = atorendlistener;
        super(atorendlistener.atorEndListener, null);
    }

    // Unreferenced inner class com/snapchat/android/discover/ui/OpenChannelAnimationView$4

/* anonymous class */
    class OpenChannelAnimationView._cls4 extends OpenChannelAnimationView.AnimatorEndListener
    {

        final OpenChannelAnimationView.AnimationEndCall a;
        final OpenChannelAnimationView b;

        public void onAnimationEnd(Animator animator)
        {
            android.view.ViewParent viewparent = OpenChannelAnimationView.a(b).getParent();
            if (viewparent != null)
            {
                ((ViewGroup)viewparent).removeView(OpenChannelAnimationView.a(b));
            }
            OpenChannelAnimationView.a(b).setY(0.0F);
            OpenChannelAnimationView.a(b).setX(0.0F);
            OpenChannelAnimationView.b(b).addView(OpenChannelAnimationView.a(b), 0);
            OpenChannelAnimationView.b(b).a(OpenChannelAnimationView.a(b));
            ObjectAnimator objectanimator = ObjectAnimator.ofFloat(OpenChannelAnimationView.a(b), View.ALPHA, new float[] {
                1.0F, 0.0F
            });
            objectanimator.setDuration(50L);
            objectanimator.addListener(new OpenChannelAnimationView._cls4._cls1(this));
            objectanimator.start();
            OpenChannelAnimationView.a(b).setVisibility(4);
            if (a != null)
            {
                a.a();
            }
        }

            
            {
                b = openchannelanimationview;
                a = animationendcall;
                super(openchannelanimationview, null);
            }
    }

}
