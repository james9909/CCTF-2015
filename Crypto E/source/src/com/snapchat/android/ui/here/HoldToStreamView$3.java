// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.view.View;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView

class a
    implements Runnable
{

    final HoldToStreamView a;

    public void run()
    {
        while (a.g.getVisibility() != 0 || a.e.getScaleX() > 0.35F) 
        {
            return;
        }
        HoldToStreamView.b(a);
    }

    (HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
