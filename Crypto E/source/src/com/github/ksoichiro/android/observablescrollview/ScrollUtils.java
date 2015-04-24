// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;

import android.view.View;
import android.view.ViewTreeObserver;

public final class ScrollUtils
{

    private ScrollUtils()
    {
    }

    // Unreferenced inner class com/github/ksoichiro/android/observablescrollview/ScrollUtils$1

/* anonymous class */
    static final class _cls1
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        final View a;
        final Runnable b;

        public void onGlobalLayout()
        {
            if (android.os.Build.VERSION.SDK_INT < 16)
            {
                a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else
            {
                a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            b.run();
        }
    }

}
