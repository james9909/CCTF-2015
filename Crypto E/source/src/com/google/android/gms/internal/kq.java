// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            me

public final class kq extends Drawable
    implements android.graphics.drawable.Drawable.Callback
{
    static final class a extends Drawable
    {

        private static final a TA = new a();
        private static final a Tz = new a();

        static a jy()
        {
            return Tz;
        }

        public void draw(Canvas canvas)
        {
        }

        public android.graphics.drawable.Drawable.ConstantState getConstantState()
        {
            return TA;
        }

        public int getOpacity()
        {
            return -2;
        }

        public void setAlpha(int i)
        {
        }

        public void setColorFilter(ColorFilter colorfilter)
        {
        }


        private a()
        {
        }
    }

    static final class a.a extends android.graphics.drawable.Drawable.ConstantState
    {

        public int getChangingConfigurations()
        {
            return 0;
        }

        public Drawable newDrawable()
        {
            return a.jy();
        }

        private a.a()
        {
        }

    }

    static final class b extends android.graphics.drawable.Drawable.ConstantState
    {

        int TB;
        int TC;

        public int getChangingConfigurations()
        {
            return TB;
        }

        public Drawable newDrawable()
        {
            return new kq(this);
        }

        b(b b1)
        {
            if (b1 != null)
            {
                TB = b1.TB;
                TC = b1.TC;
            }
        }
    }


    private boolean Te;
    private int Tl;
    private long Tm;
    private int Tn;
    private int To;
    private int Tp;
    private int Tq;
    private boolean Tr;
    private b Ts;
    private Drawable Tt;
    private Drawable Tu;
    private boolean Tv;
    private boolean Tw;
    private boolean Tx;
    private int Ty;
    private int mFrom;

    public kq(Drawable drawable, Drawable drawable1)
    {
        this(null);
        if (drawable == null)
        {
            drawable = a.jy();
        }
        Tt = drawable;
        drawable.setCallback(this);
        b b1 = Ts;
        b1.TC = b1.TC | drawable.getChangingConfigurations();
        if (drawable1 == null)
        {
            drawable1 = a.jy();
        }
        Tu = drawable1;
        drawable1.setCallback(this);
        b b2 = Ts;
        b2.TC = b2.TC | drawable1.getChangingConfigurations();
    }

    kq(b b1)
    {
        Tl = 0;
        To = 255;
        Tq = 0;
        Te = true;
        Ts = new b(b1);
    }

    public boolean canConstantState()
    {
        if (!Tv)
        {
            boolean flag;
            if (Tt.getConstantState() != null && Tu.getConstantState() != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Tw = flag;
            Tv = true;
        }
        return Tw;
    }

    public void draw(Canvas canvas)
    {
        boolean flag = true;
        Tl;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 101
    //                   2 119;
           goto _L1 _L2 _L3
_L1:
        boolean flag1 = flag;
_L5:
        int i;
        boolean flag2;
        Drawable drawable;
        Drawable drawable1;
        i = Tq;
        flag2 = Te;
        drawable = Tt;
        drawable1 = Tu;
        if (flag1)
        {
            if (!flag2 || i == 0)
            {
                drawable.draw(canvas);
            }
            if (i == To)
            {
                drawable1.setAlpha(To);
                drawable1.draw(canvas);
            }
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        Tm = SystemClock.uptimeMillis();
        Tl = 2;
        flag1 = false;
        if (true) goto _L5; else goto _L4
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        if (Tm >= 0L)
        {
            float f = (float)(SystemClock.uptimeMillis() - Tm) / (float)Tp;
            float f1;
            if (f < 1.0F)
            {
                flag = false;
            }
            if (flag)
            {
                Tl = 0;
            }
            f1 = Math.min(f, 1.0F);
            Tq = (int)((float)mFrom + f1 * (float)(Tn - mFrom));
        }
        if (true) goto _L1; else goto _L6
_L6:
        if (flag2)
        {
            drawable.setAlpha(To - i);
        }
        drawable.draw(canvas);
        if (flag2)
        {
            drawable.setAlpha(To);
        }
        if (i > 0)
        {
            drawable1.setAlpha(i);
            drawable1.draw(canvas);
            drawable1.setAlpha(To);
        }
        invalidateSelf();
        return;
    }

    public int getChangingConfigurations()
    {
        return super.getChangingConfigurations() | Ts.TB | Ts.TC;
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        if (canConstantState())
        {
            Ts.TB = getChangingConfigurations();
            return Ts;
        } else
        {
            return null;
        }
    }

    public int getIntrinsicHeight()
    {
        return Math.max(Tt.getIntrinsicHeight(), Tu.getIntrinsicHeight());
    }

    public int getIntrinsicWidth()
    {
        return Math.max(Tt.getIntrinsicWidth(), Tu.getIntrinsicWidth());
    }

    public int getOpacity()
    {
        if (!Tx)
        {
            Ty = Drawable.resolveOpacity(Tt.getOpacity(), Tu.getOpacity());
            Tx = true;
        }
        return Ty;
    }

    public void invalidateDrawable(Drawable drawable)
    {
        if (me.kq())
        {
            android.graphics.drawable.Drawable.Callback callback = getCallback();
            if (callback != null)
            {
                callback.invalidateDrawable(this);
            }
        }
    }

    public Drawable jx()
    {
        return Tu;
    }

    public Drawable mutate()
    {
        if (!Tr && super.mutate() == this)
        {
            if (!canConstantState())
            {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            Tt.mutate();
            Tu.mutate();
            Tr = true;
        }
        return this;
    }

    protected void onBoundsChange(Rect rect)
    {
        Tt.setBounds(rect);
        Tu.setBounds(rect);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
    {
        if (me.kq())
        {
            android.graphics.drawable.Drawable.Callback callback = getCallback();
            if (callback != null)
            {
                callback.scheduleDrawable(this, runnable, l);
            }
        }
    }

    public void setAlpha(int i)
    {
        if (Tq == To)
        {
            Tq = i;
        }
        To = i;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        Tt.setColorFilter(colorfilter);
        Tu.setColorFilter(colorfilter);
    }

    public void startTransition(int i)
    {
        mFrom = 0;
        Tn = To;
        Tq = 0;
        Tp = i;
        Tl = 1;
        invalidateSelf();
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable)
    {
        if (me.kq())
        {
            android.graphics.drawable.Drawable.Callback callback = getCallback();
            if (callback != null)
            {
                callback.unscheduleDrawable(this, runnable);
            }
        }
    }
}
