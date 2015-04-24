// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.VideoView;

public class SnapVideoView extends VideoView
{

    private int a;
    private int b;

    public SnapVideoView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        b = 0;
    }

    public int getVideoHeight()
    {
        return b;
    }

    public int getVideoWidth()
    {
        return a;
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (a != 0 && b != 0)
        {
            setMeasuredDimension(a, b);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return false;
    }

    public void setVideoAspect(int i, int j)
    {
        a = Math.min(i, j);
        b = Math.max(i, j);
    }

    public void start()
    {
        super.start();
    }
}
