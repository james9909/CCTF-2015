// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;

class WrapperView extends ViewGroup
{

    Drawable mDivider;
    int mDividerHeight;
    View mHeader;
    View mItem;
    int mItemTop;

    public WrapperView(Context context)
    {
        super(context);
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if (mHeader == null && mDivider != null)
        {
            if (android.os.Build.VERSION.SDK_INT < 11)
            {
                canvas.clipRect(0, 0, getWidth(), mDividerHeight);
            }
            mDivider.draw(canvas);
        }
    }

    boolean hasHeader()
    {
        return mHeader != null;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = getWidth();
        int j1 = getHeight();
        if (mHeader != null)
        {
            int k1 = mHeader.getMeasuredHeight();
            mHeader.layout(0, 0, i1, k1);
            mItemTop = k1;
            mItem.layout(0, k1, i1, j1);
            return;
        }
        if (mDivider != null)
        {
            mDivider.setBounds(0, 0, i1, mDividerHeight);
            mItemTop = mDividerHeight;
            mItem.layout(0, mDividerHeight, i1, j1);
            return;
        } else
        {
            mItemTop = 0;
            mItem.layout(0, 0, i1, j1);
            return;
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.makeMeasureSpec(k, 0x40000000);
        int i1;
        if (mHeader != null)
        {
            android.view.ViewGroup.LayoutParams layoutparams1 = mHeader.getLayoutParams();
            android.view.ViewGroup.LayoutParams layoutparams;
            if (layoutparams1 != null && layoutparams1.height > 0)
            {
                mHeader.measure(l, android.view.View.MeasureSpec.makeMeasureSpec(layoutparams1.height, 0x40000000));
            } else
            {
                mHeader.measure(l, android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
            }
            i1 = 0 + mHeader.getMeasuredHeight();
        } else
        if (mDivider != null)
        {
            i1 = 0 + mDividerHeight;
        } else
        {
            i1 = 0;
        }
        layoutparams = mItem.getLayoutParams();
        if (layoutparams != null && layoutparams.height > 0)
        {
            mItem.measure(l, android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000));
        } else
        {
            mItem.measure(l, android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        setMeasuredDimension(k, i1 + mItem.getMeasuredHeight());
    }

    void update(View view, View view1, Drawable drawable, int i)
    {
        if (view == null)
        {
            throw new NullPointerException("List view item must not be null.");
        }
        if (mItem != view)
        {
            removeView(mItem);
            mItem = view;
            android.view.ViewParent viewparent = view.getParent();
            if (viewparent != null && viewparent != this && (viewparent instanceof ViewGroup))
            {
                ((ViewGroup)viewparent).removeView(view);
            }
            addView(view);
        }
        if (mHeader != view1)
        {
            if (mHeader != null)
            {
                removeView(mHeader);
            }
            mHeader = view1;
            if (view1 != null)
            {
                addView(view1);
            }
        }
        if (mDivider != drawable)
        {
            mDivider = drawable;
            mDividerHeight = i;
            invalidate();
        }
    }
}
