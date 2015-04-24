// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.view.MotionEvent;

// Referenced classes of package com.snapchat.android.ui.caption:
//            FatCaptionEditText

class <init> extends android.view.eOnGestureListener
{

    final FatCaptionEditText a;

    public void onLongPress(MotionEvent motionevent)
    {
        if (a.h && !a.v)
        {
            FatCaptionEditText.a(a, null);
            a.v = true;
            a.performLongClick();
        }
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        a.v = false;
        FatCaptionEditText.a(a, null);
        return true;
    }

    (FatCaptionEditText fatcaptionedittext)
    {
        a = fatcaptionedittext;
        super();
    }
}
