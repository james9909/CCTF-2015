// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;

import android.view.View;
import android.view.ViewTreeObserver;

// Referenced classes of package com.github.ksoichiro.android.observablescrollview:
//            ScrollUtils

static final class 
    implements android.view.er.OnGlobalLayoutListener
{

    final View a;
    final Runnable b;

    public void onGlobalLayout()
    {
        if (android.os.SDK_INT < 16)
        {
            a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        } else
        {
            a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
        b.run();
    }
}
