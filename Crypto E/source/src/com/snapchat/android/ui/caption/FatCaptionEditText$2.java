// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.view.ScaleGestureDetector;

// Referenced classes of package com.snapchat.android.ui.caption:
//            FatCaptionEditText

class a
    implements android.view.OnScaleGestureListener
{

    final FatCaptionEditText a;

    public boolean onScale(ScaleGestureDetector scalegesturedetector)
    {
        a.t = true;
        a.u = true;
        a.j = false;
        FatCaptionEditText.a(a, a.r * (double)scalegesturedetector.getScaleFactor());
        return true;
    }

    public boolean onScaleBegin(ScaleGestureDetector scalegesturedetector)
    {
        FatCaptionEditText.a(a, true);
        return true;
    }

    public void onScaleEnd(ScaleGestureDetector scalegesturedetector)
    {
        FatCaptionEditText.a(a, false);
    }

    ner(FatCaptionEditText fatcaptionedittext)
    {
        a = fatcaptionedittext;
        super();
    }
}
