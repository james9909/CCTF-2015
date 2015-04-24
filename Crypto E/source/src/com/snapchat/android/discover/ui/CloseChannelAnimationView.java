// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.bitmap.BitmapPool;

public class CloseChannelAnimationView extends ImageView
{
    public static interface CloseChannelListener
    {

        public abstract void b();
    }

    class CloseEditionAnimatorListener
        implements android.animation.Animator.AnimatorListener
    {

        final CloseChannelAnimationView a;

        public void onAnimationCancel(Animator animator)
        {
        }

        public void onAnimationEnd(Animator animator)
        {
            if (CloseChannelAnimationView.a(a) != null)
            {
                CloseChannelAnimationView.a(a).b();
            }
        }

        public void onAnimationRepeat(Animator animator)
        {
        }

        public void onAnimationStart(Animator animator)
        {
        }

        private CloseEditionAnimatorListener()
        {
            a = CloseChannelAnimationView.this;
            super();
        }

    }


    private Bitmap a;
    private BitmapPool b;
    private Context c;
    private CloseChannelListener d;

    public CloseChannelAnimationView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, BitmapPool.a());
    }

    public CloseChannelAnimationView(Context context, AttributeSet attributeset, BitmapPool bitmappool)
    {
        super(context, attributeset);
        a = null;
        d = null;
        c = context;
        b = bitmappool;
    }

    static CloseChannelListener a(CloseChannelAnimationView closechannelanimationview)
    {
        return closechannelanimationview.d;
    }

    public void a()
    {
        c();
        if (a == null)
        {
            return;
        } else
        {
            AnimatorSet animatorset = new AnimatorSet();
            android.util.Property property = View.ALPHA;
            float af[] = new float[2];
            af[0] = getAlpha();
            af[1] = 1.0F;
            animatorset.play(ObjectAnimator.ofFloat(this, property, af));
            animatorset.setDuration((long)(325F * (1.0F - getAlpha())));
            animatorset.setInterpolator(new DecelerateInterpolator());
            animatorset.addListener(new CloseEditionAnimatorListener());
            animatorset.start();
            return;
        }
    }

    public void b()
    {
        c();
        AnimatorSet animatorset = new AnimatorSet();
        android.util.Property property = View.ALPHA;
        float af[] = new float[2];
        af[0] = getAlpha();
        af[1] = 0.0F;
        animatorset.play(ObjectAnimator.ofFloat(this, property, af));
        animatorset.setDuration((long)(325F * getAlpha()));
        animatorset.setInterpolator(new DecelerateInterpolator());
        animatorset.start();
    }

    public void c()
    {
        if (a == null && getWidth() > 0 && getHeight() > 0)
        {
            android.graphics.BitmapFactory.Options options = SnapMediaUtils.a(c.getResources().getDisplayMetrics(), getWidth(), getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            a = b.a(options, true);
            if (a == null)
            {
                a = SnapMediaUtils.a(getWidth(), getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            }
            if (a != null)
            {
                Canvas canvas = new Canvas(a);
                Paint paint = new Paint();
                paint.setColor(0xff000000);
                paint.setStyle(android.graphics.Paint.Style.FILL);
                canvas.drawRect(0.0F, 0.0F, getWidth(), getHeight(), paint);
            }
            setImageBitmap(a);
        }
    }

    protected void onMeasure(int i, int j)
    {
        setMeasuredDimension(android.view.View.MeasureSpec.getSize(i), android.view.View.MeasureSpec.getSize(j));
    }

    public void setAlpha(float f)
    {
        c();
        if (a == null)
        {
            return;
        } else
        {
            super.setAlpha(f);
            return;
        }
    }

    public void setCloseChannelListener(CloseChannelListener closechannellistener)
    {
        d = closechannellistener;
    }
}
