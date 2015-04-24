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

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        HoldToStreamView.n(a.a).a(new CameraStateEvent(true, HoldToStreamView.l(a.a)));
        HoldToStreamView.b(a.a, true);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/android/ui/here/HoldToStreamView$11

/* anonymous class */
    class HoldToStreamView._cls11 extends AnimatorListenerAdapter
    {

        final HoldToStreamView a;

        public void onAnimationEnd(Animator animator)
        {
            a.postDelayed(new HoldToStreamView._cls11._cls1(this), 1000L);
        }

            
            {
                a = holdtostreamview;
                super();
            }
    }

}
