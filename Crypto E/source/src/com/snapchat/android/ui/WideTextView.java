// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.TextView;

public class WideTextView extends TextView
{

    private boolean a;

    public WideTextView(Context context)
    {
        super(context);
        a = false;
    }

    public WideTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
    }

    public WideTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = false;
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        int k = Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
        int l = Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
        if (a)
        {
            setMeasuredDimension(k, getMeasuredHeight());
            return;
        } else
        {
            setMeasuredDimension(l, getMeasuredHeight());
            return;
        }
    }

    public void setLandscapeMode(boolean flag)
    {
        a = flag;
    }
}
