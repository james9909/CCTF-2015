// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.ViewSwitcher;

// Referenced classes of package com.google.android.gms.internal:
//            hb, u

public static final class init> extends ViewSwitcher
{

    private final hb lC;

    static hb a(init> init>)
    {
        return init>.lC;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        lC.c(motionevent);
        return false;
    }

    public (Context context)
    {
        super(context);
        lC = new hb(context);
    }
}
