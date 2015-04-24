// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.view.MotionEvent;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView

class ner extends android.view.leOnGestureListener
{

    final HoldToStreamView a;

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        if (HoldToStreamView.k(a))
        {
            return true;
        }
        if (HoldToStreamView.l(a) == com.snapchat.android.camera.model.pe.b)
        {
            HoldToStreamView.a(a, com.snapchat.android.camera.model.pe.a);
        } else
        {
            HoldToStreamView.a(a, com.snapchat.android.camera.model.pe.b);
        }
        HoldToStreamView.m(a);
        return true;
    }

    eraType(HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
