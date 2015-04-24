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

class imatorEndListener extends imatorEndListener
{

    final imationEndCall a;
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
        objectanimator.addListener(new OpenChannelAnimationView.AnimatorEndListener() {

            final OpenChannelAnimationView._cls4 a;

            public void onAnimationEnd(Animator animator1)
            {
                OpenChannelAnimationView.a(a.b).setVisibility(4);
            }

            
            {
                a = OpenChannelAnimationView._cls4.this;
                super(b, null);
            }
        });
        objectanimator.start();
        OpenChannelAnimationView.a(b).setVisibility(4);
        if (a != null)
        {
            a.a();
        }
    }

    imationEndCall(OpenChannelAnimationView openchannelanimationview, imationEndCall imationendcall)
    {
        b = openchannelanimationview;
        a = imationendcall;
        super(openchannelanimationview, null);
    }
}
