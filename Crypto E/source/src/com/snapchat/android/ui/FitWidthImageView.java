// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class FitWidthImageView extends ImageView
{

    public FitWidthImageView(Context context)
    {
        super(context);
    }

    public FitWidthImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public FitWidthImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        Drawable drawable = getDrawable();
        if (drawable != null)
        {
            int k = android.view.View.MeasureSpec.getSize(i);
            int l = drawable.getIntrinsicWidth();
            if (l > 0)
            {
                setMeasuredDimension(k, (k * drawable.getIntrinsicHeight()) / l);
            }
        }
    }
}
