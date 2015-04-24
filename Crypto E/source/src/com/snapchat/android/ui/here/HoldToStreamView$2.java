// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.view.View;
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView, LockToStreamView

class  extends SimpleSpringListener
{

    final HoldToStreamView a;

    public void a(Spring spring)
    {
        while (!a.d || a.f.b()) 
        {
            return;
        }
        a.e.setY((float)spring.b());
        HoldToStreamView.a(a);
    }

    (HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
