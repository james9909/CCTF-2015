// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.view.ScaleGestureDetector;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            DefaultCameraDecor

class <init> extends android.view.leGestureListener
{

    final DefaultCameraDecor a;

    public boolean onScale(ScaleGestureDetector scalegesturedetector)
    {
        a.a.a(scalegesturedetector.getScaleFactor());
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
