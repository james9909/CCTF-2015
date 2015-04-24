// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.ui.TakeSnapButton;
import com.snapchat.android.util.BouncyToucher;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            DefaultCameraDecor

class a extends BouncyToucher
{

    final DefaultCameraDecor a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i = motionevent.getActionMasked();
        if (i != 1 && i != 3) goto _L2; else goto _L1
_L1:
        a.a.a(orInterface.TakeSnapButtonAction.b);
_L4:
        return super.onTouch(view, motionevent);
_L2:
        if (i == 0)
        {
            a.h.a();
            a.a.a(orInterface.TakeSnapButtonAction.a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    orInterface(DefaultCameraDecor defaultcameradecor, View view)
    {
        a = defaultcameradecor;
        super(view);
    }
}
