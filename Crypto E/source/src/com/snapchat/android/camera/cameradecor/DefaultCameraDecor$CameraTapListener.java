// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.view.MotionEvent;
import com.snapchat.android.util.BouncyToucher;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            DefaultCameraDecor

class <init> extends android.view.er
{

    final DefaultCameraDecor a;

    public boolean onDoubleTapEvent(MotionEvent motionevent)
    {
        if (motionevent.getActionMasked() == 0 && a.a != null)
        {
            a.j.a();
            a.a.a();
        }
        return true;
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        a.a.a(motionevent);
        return true;
    }

    private (DefaultCameraDecor defaultcameradecor)
    {
        a = defaultcameradecor;
        super();
    }

    a(DefaultCameraDecor defaultcameradecor, a a1)
    {
        this(defaultcameradecor);
    }
}
