// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class FitWidthViewGroup extends ViewGroup
{
    public class Gravity
    {
    }


    private final String a;
    private final int b;
    private int c;

    public FitWidthViewGroup(Context context)
    {
        this(context, null, 0);
    }

    public FitWidthViewGroup(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public FitWidthViewGroup(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = "FitWidthViewGroup";
        b = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.snapchat.android.R.styleable.FitWidthViewGroup);
        setGravity(typedarray.getInt(0, 0));
        typedarray.recycle();
    }

    public int getGravity()
    {
        return c;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1;
        int j1;
        int k1;
        int l1;
        i1 = l - j;
        j1 = k - i;
        k1 = getChildCount();
        l1 = 0;
_L2:
        View view;
        int i2;
        int j2;
        int k2;
        int l2;
        if (l1 >= k1)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        view = getChildAt(l1);
        i2 = view.getMeasuredHeight();
        j2 = view.getMeasuredWidth();
        k2 = (j1 - j2) / 2;
        switch (c)
        {
        case 1: // '\001'
        default:
            l2 = 0;
            break;

        case 0: // '\0'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_128;
        }
_L3:
        view.layout(k2, l2, j2 + k2, i2 + l2);
        l1++;
        if (true) goto _L2; else goto _L1
_L1:
        l2 = (i1 - i2) / 2;
          goto _L3
        l2 = i1 - i2;
          goto _L3
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i), 0x40000000);
        int l = getChildCount();
        for (int i1 = 0; i1 < l; i1++)
        {
            getChildAt(i1).measure(k, b);
        }

    }

    public void setGravity(int i)
    {
        if (i > 2 || i < 0)
        {
            throw new IllegalStateException((new StringBuilder()).append("FitWidthViewGroup cannot have gravity: ").append(i).toString());
        } else
        {
            c = i;
            return;
        }
    }
}
