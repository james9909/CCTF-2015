// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;

public class ProgressiveSaveButton extends View
{
    public static final class AnimationState extends Enum
    {

        public static final AnimationState a;
        public static final AnimationState b;
        public static final AnimationState c;
        private static final AnimationState d[];

        public static AnimationState valueOf(String s)
        {
            return (AnimationState)Enum.valueOf(com/snapchat/android/ui/ProgressiveSaveButton$AnimationState, s);
        }

        public static AnimationState[] values()
        {
            return (AnimationState[])d.clone();
        }

        static 
        {
            a = new AnimationState("READY", 0);
            b = new AnimationState("SAVING", 1);
            c = new AnimationState("SAVED", 2);
            AnimationState aanimationstate[] = new AnimationState[3];
            aanimationstate[0] = a;
            aanimationstate[1] = b;
            aanimationstate[2] = c;
            d = aanimationstate;
        }

        private AnimationState(String s, int i)
        {
            super(s, i);
        }
    }


    private final int a = getResources().getColor(0x7f080037);
    private final int b = getResources().getColor(0x7f080008);
    private AnimationState c;
    private int d;
    private long e;

    public ProgressiveSaveButton(Context context)
    {
        super(context);
        c = null;
        d = 0;
        e = 0L;
        setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        if (Color.alpha(a) != 255 || Color.alpha(b) != 255)
        {
            throw new IllegalArgumentException("Colors contain unexpected alpha");
        } else
        {
            setAnimationState(AnimationState.a);
            setVisibility(0);
            return;
        }
    }

    private int a(int i, int j)
    {
        return Color.argb(j, Color.red(i), Color.green(i), Color.blue(i));
    }

    private Paint a(float f, int i)
    {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeWidth(f);
        paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        paint.setPathEffect(new CornerPathEffect(f / 2.0F));
        return paint;
    }

    private void a(Canvas canvas)
    {
        canvas.drawColor(-1);
    }

    private void a(Canvas canvas, float f, float f1)
    {
        float f2 = 0.0775F * f;
        Paint paint = a(f2, a);
        Paint paint1 = a(f2, b);
        a(canvas);
        a(canvas, f, f1, paint1, 1.0F);
        a(canvas, f, f1, paint, (float)d / 100F);
        b(canvas, f, f1, paint1, 1.0F);
        c(canvas, f, f1, paint1, 0.0F);
    }

    private void a(Canvas canvas, float f, float f1, Paint paint, float f2)
    {
        canvas.drawArc(new RectF(0.05F * f, 0.04F * f1, f - 0.05F * f, f1 - 0.08F * f1), -68.5F, 317F * f2, false, paint);
    }

    private void b(Canvas canvas, float f, float f1)
    {
        float f2 = System.currentTimeMillis() - e;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        int i;
        float f11;
        int j;
        int k;
        Paint paint;
        Paint paint1;
        if (f2 > 1500F)
        {
            f2 = 1500F;
        } else
        {
            postInvalidate();
        }
        if (f2 <= 450F)
        {
            f3 = f2 / 450F;
            f4 = 0.0F;
            f5 = 0.0F;
        } else
        if (f2 <= 900F)
        {
            f3 = 1.0F;
            f4 = (f2 - 450F) / 450F;
            f5 = 0.0F;
        } else
        {
            f3 = 1.0F;
            f4 = 1.0F;
            f5 = 1.0F - (1500F - f2) / 600F;
        }
        f6 = f3 * (f3 * f3);
        f7 = 1.0F - f4;
        f8 = 1.0F - f7 * (f7 * f7);
        f9 = f6 * 0.6F;
        f10 = 0.6F * (1.0F - f8);
        i = 255 - (int)(f5 * 255F);
        f11 = 0.0775F * f;
        j = a(a, i);
        k = a(b, i);
        paint = a(f11, j);
        paint1 = a(f11, k);
        a(canvas);
        c(canvas, f, f1, paint1, f9);
        d(canvas, f, f1, paint, f10);
        c(canvas, f, f1);
        if (f8 < 1.0F)
        {
            b(canvas, f, f1, paint1, 1.0F);
        }
        b(canvas, f, f1, paint, f8);
        a(canvas, f, f1, paint, 1.0F);
    }

    private void b(Canvas canvas, float f, float f1, Paint paint, float f2)
    {
        float f3 = 0.3F * f;
        float f4 = 0.77F * f;
        float f5 = f4 - f2 * (f4 - f3);
        float f6 = 0.7F * f1;
        canvas.drawLine(f5, f6, f4, f6, paint);
    }

    private void c(Canvas canvas, float f, float f1)
    {
        float f2 = 0.7F * f1;
        Paint paint = new Paint();
        paint.setColor(-1);
        canvas.drawRect(0.0F, f2, f, f1, paint);
    }

    private void c(Canvas canvas, float f, float f1, Paint paint, float f2)
    {
        float f3 = 0.5F * f;
        float f4 = f1 * (0.13F + f2);
        float f5 = 0.5F * f;
        float f6 = f1 * (0.58F + f2);
        canvas.drawLine(f3, f4, f5, f6 - paint.getStrokeWidth() / 2.0F, paint);
        float f7 = 0.28F * f1;
        float f8 = f1 * (0.4F + f2);
        float f9 = 0.75F * f1;
        float f10 = f1 * (0.39F + f2);
        Path path = new Path();
        path.moveTo(f7, f8);
        path.lineTo(f5, f6);
        path.lineTo(f9, f10);
        canvas.drawPath(path, paint);
    }

    private void d(Canvas canvas, float f, float f1, Paint paint, float f2)
    {
        float f3 = 0.27F * f;
        float f4 = f1 * (0.42F + f2);
        float f5 = 0.44F * f;
        float f6 = f1 * (0.6F + f2);
        float f7 = 0.7475F * f;
        float f8 = f1 * (0.24F + f2);
        Path path = new Path();
        path.moveTo(f3, f4);
        path.lineTo(f5, f6);
        path.lineTo(f7, f8);
        canvas.drawPath(path, paint);
    }

    public AnimationState getAnimationState()
    {
        return c;
    }

    protected void onDraw(Canvas canvas)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[AnimationState.values().length];
                try
                {
                    a[AnimationState.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[AnimationState.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[AnimationState.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[c.ordinal()])
        {
        default:
            throw new IllegalStateException("Illegal animation state.");

        case 2: // '\002'
            a(canvas, canvas.getWidth(), canvas.getHeight());
            // fall through

        case 1: // '\001'
            return;

        case 3: // '\003'
            b(canvas, canvas.getWidth(), canvas.getHeight());
            break;
        }
    }

    public void setAnimationState(AnimationState animationstate)
    {
        if (c == animationstate)
        {
            return;
        }
        c = animationstate;
        _cls1.a[c.ordinal()];
        JVM INSTR tableswitch 1 3: default 52
    //                   1 62
    //                   2 79
    //                   3 97;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalStateException("Illegal animation state.");
_L2:
        setEnabled(true);
        setBackgroundResource(0x7f0201ab);
_L6:
        postInvalidate();
        return;
_L3:
        setEnabled(false);
        setBackgroundColor(0);
        d = 0;
        continue; /* Loop/switch isn't completed */
_L4:
        setEnabled(false);
        setBackgroundColor(0);
        e = System.currentTimeMillis();
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setSaveProgress(int i)
    {
        if (i < 0 || i > 100)
        {
            throw new IllegalArgumentException("Progress out of range");
        } else
        {
            d = i;
            postInvalidate();
            return;
        }
    }
}
