// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;

// Referenced classes of package com.snapchat.android.ui:
//            ImageResourceView, ImageResource

public class FitWidthImageResourceView extends ImageResourceView
{

    public FitWidthImageResourceView(Context context)
    {
        super(context);
    }

    public FitWidthImageResourceView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public FitWidthImageResourceView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (a != null && a.c() == SnapchatResource.ResourceStatus.c)
        {
            Drawable drawable = getDrawable();
            if (drawable != null)
            {
                int k = android.view.View.MeasureSpec.getSize(i);
                int l = drawable.getIntrinsicWidth();
                if (l > 0)
                {
                    setMeasuredDimension(k, (k * drawable.getIntrinsicHeight()) / l);
                }
                return;
            }
        }
        DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        setMeasuredDimension(i, (i * displaymetrics.heightPixels) / displaymetrics.widthPixels);
    }
}
