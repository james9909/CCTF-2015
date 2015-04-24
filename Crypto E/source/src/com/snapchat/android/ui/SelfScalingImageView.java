// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.util.ViewUtils;

public class SelfScalingImageView extends ImageView
{
    public static class WidthHeightPair
    {

        final int a;
        final int b;

        WidthHeightPair(int i, int j)
        {
            a = i;
            b = j;
        }
    }


    private int a;

    public SelfScalingImageView(Context context)
    {
        this(context, null);
    }

    public SelfScalingImageView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SelfScalingImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 17;
    }

    private static float a(float f, float f1)
    {
        return f / f1;
    }

    protected static Rect a(int i, int j, int k, int l, int i1)
    {
        WidthHeightPair widthheightpair;
        Rect rect;
        widthheightpair = a(i, j, k, l);
        rect = new Rect();
        if (!ViewUtils.e(i1)) goto _L2; else goto _L1
_L1:
        rect.left = widthheightpair.a - k;
_L8:
        if (!ViewUtils.c(i1)) goto _L4; else goto _L3
_L3:
        rect.top = widthheightpair.b - l;
_L6:
        return rect;
_L2:
        if (ViewUtils.f(i1))
        {
            rect.right = widthheightpair.a - k;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (!ViewUtils.d(i1)) goto _L6; else goto _L5
_L5:
        rect.bottom = widthheightpair.b - l;
        return rect;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected static WidthHeightPair a(int i, int j)
    {
        return new WidthHeightPair(i, j);
    }

    protected static WidthHeightPair a(int i, int j, int k, int l)
    {
        if (a(i, j) / a(k, l) > 1.0F)
        {
            return new WidthHeightPair((int)((float)(i * l) / (float)j), l);
        } else
        {
            return new WidthHeightPair(k, (int)((float)(j * k) / (float)i));
        }
    }

    protected static WidthHeightPair a(int i, int j, int k, int l, android.widget.ImageView.ScaleType scaletype)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[android.widget.ImageView.ScaleType.values().length];
                try
                {
                    a[android.widget.ImageView.ScaleType.FIT_XY.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[android.widget.ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[android.widget.ImageView.ScaleType.CENTER_CROP.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[scaletype.ordinal()])
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("ScaleType ").append(scaletype.name()).append(" is not supported.").toString());

        case 1: // '\001'
            return a(k, l);

        case 2: // '\002'
            return b(i, j, k, l);

        case 3: // '\003'
            return c(i, j, k, l);
        }
    }

    private void a()
    {
        ViewGroup viewgroup = getParentViewGroup();
        if (viewgroup == null)
        {
            Timber.e("SelfScalingImageView", "View has no parent. Aborting.", new Object[0]);
        } else
        {
            Drawable drawable = getDrawable();
            if (drawable == null)
            {
                Timber.e("SelfScalingImageView", "View has no background drawable. Aborting.", new Object[0]);
                return;
            }
            if (getScaleType() != null)
            {
                WidthHeightPair widthheightpair = a(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), viewgroup.getWidth(), viewgroup.getHeight(), getScaleType());
                b(widthheightpair.a, widthheightpair.b);
                return;
            }
        }
    }

    protected static WidthHeightPair b(int i, int j, int k, int l)
    {
        float f = a(i, j) / a(k, l);
        if (f > 1.0F)
        {
            return new WidthHeightPair(k, (int)((float)l / f));
        } else
        {
            return new WidthHeightPair((int)(f * (float)k), l);
        }
    }

    private void b()
    {
        ViewGroup viewgroup = getParentViewGroup();
        if (viewgroup == null)
        {
            Timber.e("SelfScalingImageView", "View has no parent. Aborting.", new Object[0]);
            return;
        }
        Drawable drawable = getDrawable();
        if (drawable == null)
        {
            Timber.e("SelfScalingImageView", "View has no background drawable. Aborting.", new Object[0]);
            return;
        }
        if (getScaleType() == android.widget.ImageView.ScaleType.CENTER_CROP)
        {
            Rect rect = a(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), viewgroup.getWidth(), viewgroup.getHeight(), a);
            setPadding(rect.left, rect.top, rect.right, rect.bottom);
            return;
        } else
        {
            setPadding(0, 0, 0, 0);
            return;
        }
    }

    private void b(int i, int j)
    {
        int k = -2;
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        if (layoutparams == null)
        {
            throw new IllegalStateException("You need to add this to a View first.");
        }
        if (i == 0)
        {
            i = k;
        }
        layoutparams.width = i;
        if (j != 0)
        {
            k = j;
        }
        layoutparams.height = k;
        setLayoutParams(layoutparams);
    }

    protected static WidthHeightPair c(int i, int j, int k, int l)
    {
        float f = a(i, j) / a(k, l);
        if (f > 1.0F)
        {
            return new WidthHeightPair((int)(f * (float)k), l);
        } else
        {
            return new WidthHeightPair(k, (int)((float)l / f));
        }
    }

    private ViewGroup getParentViewGroup()
    {
        android.view.ViewParent viewparent = getParent();
        if (viewparent instanceof ViewGroup)
        {
            return (ViewGroup)viewparent;
        } else
        {
            return null;
        }
    }

    public void setGravity(int i)
    {
        a = i;
        b();
        a();
    }

    public void setScaleType(android.widget.ImageView.ScaleType scaletype)
    {
        super.setScaleType(scaletype);
        b();
        a();
    }
}
