// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView

class a extends AnimatorListenerAdapter
{

    final HoldToStreamView a;

    public void onAnimationEnd(Animator animator)
    {
        a.postDelayed(new Runnable() {

            final HoldToStreamView._cls11 a;

            public void run()
            {
                HoldToStreamView.n(a.a).a(new CameraStateEvent(true, HoldToStreamView.l(a.a)));
                HoldToStreamView.b(a.a, true);
            }

            
            {
                a = HoldToStreamView._cls11.this;
                super();
            }
        }, 1000L);
    }

    _cls1.a(HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
