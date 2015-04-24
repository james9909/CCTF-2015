// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView

class a
    implements android.view.r
{

    final HoldToStreamView a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return a.onTouchEvent(motionevent);
    }

    (HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
