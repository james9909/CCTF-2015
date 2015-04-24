// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.SystemClock;

public class SnapTransitionDrawable extends TransitionDrawable
{

    private long a;
    private int b;

    public SnapTransitionDrawable(Drawable adrawable[])
    {
        super(adrawable);
    }

    public void a()
    {
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        if (SystemClock.uptimeMillis() - a > (long)b)
        {
            a();
        }
    }

    public void startTransition(int i)
    {
        super.startTransition(i);
        b = i;
        a = SystemClock.uptimeMillis();
        invalidateSelf();
    }
}
