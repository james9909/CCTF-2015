// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.util.InterpolationUtils;

public class LockToStreamView extends View
{

    public static final String a = com/snapchat/android/ui/here/LockToStreamView.getSimpleName();
    private Paint b;
    private Paint c;
    private RectF d;
    private boolean e;
    private boolean f;
    private boolean g;
    private View h;
    private float i;
    private float j;
    private int k[];
    private HereAnalytics l;

    public LockToStreamView(Context context, View view, HereAnalytics hereanalytics)
    {
        super(context);
        e = false;
        f = false;
        g = false;
        k = new int[2];
        h = view;
        l = hereanalytics;
        b = new Paint(1);
        b.setStyle(android.graphics.Paint.Style.STROKE);
        int i1 = getResources().getDimensionPixelSize(0x7f090036);
        b.setStrokeWidth(i1);
        b.setColor(context.getResources().getColor(0x7f08002c));
        d = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
        setBackgroundColor(0);
        a();
    }

    private float a(float f1, float f2)
    {
        if (f1 < f2)
        {
            return getResources().getDimension(0x7f09003a) - getRadius();
        } else
        {
            return (float)getParentHeight() - getResources().getDimension(0x7f090038) - getRadius();
        }
    }

    private int a(int i1)
    {
        int j1 = android.view.View.MeasureSpec.getMode(i1);
        for (int k1 = android.view.View.MeasureSpec.getSize(i1); j1 == 0x80000000 || j1 == 0x40000000;)
        {
            return k1;
        }

        return 0;
    }

    static Paint a(LockToStreamView locktostreamview)
    {
        return locktostreamview.c;
    }

    private void a(int i1, int j1)
    {
        ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
            i1, j1
        });
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final LockToStreamView a;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                int k1 = ((Integer)valueanimator1.getAnimatedValue()).intValue();
                LockToStreamView.a(a).setAlpha(k1);
                a.invalidate();
            }

            
            {
                a = LockToStreamView.this;
                super();
            }
        });
        valueanimator.setDuration(300L);
        valueanimator.start();
    }

    private void a(MotionEvent motionevent, boolean flag)
    {
        if (e)
        {
            return;
        }
        float f1 = h(motionevent);
        int i1 = getResources().getDimensionPixelOffset(0x7f090033);
        float f2;
        if (f1 > (float)i1)
        {
            f2 = i;
        } else
        {
            f2 = Math.min(Math.max(InterpolationUtils.a(i, j, ((float)i1 - f1) / (float)i1), i), j);
        }
        if (flag)
        {
            float f3 = a(motionevent.getRawY(), getParentHeight() / 2);
            animate().scaleX(f2).scaleY(f2).translationY(f3).setDuration(300L);
            return;
        } else
        {
            setScaleX(f2);
            setScaleY(f2);
            return;
        }
    }

    static boolean a(LockToStreamView locktostreamview, boolean flag)
    {
        locktostreamview.f = flag;
        return flag;
    }

    private void c(MotionEvent motionevent)
    {
        if (!e && !f)
        {
            float f1 = getParentHeight();
            float f2 = motionevent.getRawY();
            float f3 = getParentHeight() / 2;
            float f4 = getResources().getDimension(0x7f090037);
            float f5 = getResources().getDimension(0x7f090034);
            boolean flag;
            boolean flag1;
            boolean flag2;
            if (Math.abs(f2 - f3) < f4)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (getVisibility() == 4)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (g || Math.abs(f2 - (float)getParentHeight()) > f5)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            g = flag2;
            if (g && flag != flag1)
            {
                float f6 = getResources().getDimension(0x7f090039);
                float f7;
                ViewPropertyAnimator viewpropertyanimator;
                if (flag)
                {
                    if (f2 < f3)
                    {
                        f7 = -f6;
                    } else
                    {
                        f7 = f1 + f6;
                    }
                } else
                {
                    if (f2 < f3)
                    {
                        setY(-f6);
                    } else
                    {
                        setY(f6 + f1);
                    }
                    setVisibility(0);
                    if (c != null)
                    {
                        c.setAlpha(255);
                    }
                    f7 = a(f2, f3);
                }
                viewpropertyanimator = animate();
                viewpropertyanimator.translationY(f7);
                viewpropertyanimator.setListener(new AnimatorListenerAdapter(flag) {

                    final boolean a;
                    final LockToStreamView b;

                    public void onAnimationEnd(Animator animator)
                    {
                        if (a)
                        {
                            b.setVisibility(4);
                        }
                        LockToStreamView.a(b, false);
                    }

            
            {
                b = LockToStreamView.this;
                a = flag;
                super();
            }
                });
                viewpropertyanimator.setDuration(150L);
                f = true;
                return;
            }
        }
    }

    private void d(MotionEvent motionevent)
    {
        boolean flag = b(motionevent);
        if (flag == e)
        {
            return;
        }
        e = flag;
        if (flag)
        {
            e(motionevent);
            l.c(f());
            return;
        } else
        {
            g(motionevent);
            return;
        }
    }

    private void e()
    {
        while (c != null || getWidth() == 0 || getHeight() == 0) 
        {
            return;
        }
        c = new Paint();
        c.setStyle(android.graphics.Paint.Style.FILL);
        c.setAntiAlias(true);
        int i1 = getWidth() - (int)(2.0F * b.getStrokeWidth());
        Bitmap bitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), 0x7f020136), i1, i1, true);
        c.setShader(new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
        j = (float)getResources().getDimensionPixelSize(0x7f090035) / (float)getWidth();
        i = 0.5F * j;
        invalidate();
    }

    private void e(MotionEvent motionevent)
    {
        float f1 = (float)h.getWidth() * h.getScaleX() + (float)(2 * getResources().getDimensionPixelSize(0x7f090036));
        int i1 = getResources().getDimensionPixelOffset(0x7f090032);
        float f2 = getParentHeight();
        float f3 = f2 / 2.0F;
        float f4 = (float)i1 + f1 / 2.0F;
        if (motionevent.getRawY() > f3)
        {
            f4 = f2 - f4;
        }
        ViewPropertyAnimator viewpropertyanimator = h.animate();
        viewpropertyanimator.translationX((getX() + getRadius()) - (float)(h.getWidth() / 2));
        viewpropertyanimator.translationY(f4 - (float)(h.getHeight() / 2));
        viewpropertyanimator.setDuration(300L);
        ViewPropertyAnimator viewpropertyanimator1 = animate();
        float f5 = f1 / (float)getHeight();
        viewpropertyanimator1.scaleX(f1 / (float)getWidth());
        viewpropertyanimator1.scaleY(f5);
        viewpropertyanimator1.translationY(f4 - f1 / 2.0F);
        viewpropertyanimator1.setListener(new AnimatorListenerAdapter() {

            final LockToStreamView a;

            public void onAnimationEnd(Animator animator)
            {
                LockToStreamView.a(a, false);
                a.c();
            }

            
            {
                a = LockToStreamView.this;
                super();
            }
        });
        viewpropertyanimator1.setDuration(300L);
        a(255, 0);
        f = true;
        invalidate();
    }

    private void f(MotionEvent motionevent)
    {
        setX(motionevent.getRawX() - getRadius());
        c();
    }

    private boolean f()
    {
        return getY() > (float)(getParentHeight() / 2);
    }

    private void g(MotionEvent motionevent)
    {
        a(0, 255);
        a(motionevent, true);
        invalidate();
    }

    private int getParentHeight()
    {
        View view = (View)getParent();
        if (view == null)
        {
            return 0;
        } else
        {
            return view.getMeasuredHeight();
        }
    }

    private float getRadius()
    {
        return (float)(getWidth() / 2);
    }

    private float h(MotionEvent motionevent)
    {
        getLocationOnScreen(k);
        return Math.abs(((float)k[1] + getRadius() * getScaleX()) - motionevent.getRawY());
    }

    public void a()
    {
        setVisibility(4);
        setY(-getResources().getDimension(0x7f090039));
        e = false;
        f = false;
        g = false;
    }

    public void a(MotionEvent motionevent)
    {
        f(motionevent);
        if (f)
        {
            return;
        } else
        {
            e();
            c(motionevent);
            a(motionevent, false);
            d(motionevent);
            bringToFront();
            return;
        }
    }

    public boolean b()
    {
        return e;
    }

    public boolean b(MotionEvent motionevent)
    {
        return h(motionevent) < getRadius() * getScaleX();
    }

    public void c()
    {
        if (!e)
        {
            return;
        }
        float f1 = (float)h.getMeasuredWidth() * h.getScaleX() + (float)(2 * getResources().getDimensionPixelSize(0x7f090036));
        int i1 = getResources().getDimensionPixelOffset(0x7f090032);
        float f2 = getParentHeight();
        float f3 = f2 / 2.0F;
        float f4 = (float)i1 + f1 / 2.0F;
        if (getY() > f3)
        {
            f4 = f2 - f4;
        }
        float f5 = f1 / (float)getMeasuredHeight();
        setScaleX(f1 / (float)getMeasuredWidth());
        setScaleY(f5);
        setY(f4 - (float)getHeight() / 2.0F);
        float f6 = f4 - (float)h.getMeasuredHeight() / 2.0F;
        h.setY(f6);
    }

    public void d()
    {
        while (e || f || getVisibility() != 0) 
        {
            return;
        }
        setY(a(getY(), getParentHeight() / 2));
    }

    protected void onDraw(Canvas canvas)
    {
        if (e || f)
        {
            canvas.translate(b.getStrokeWidth(), b.getStrokeWidth());
            canvas.drawArc(d, 0.0F, 360F, true, b);
        }
        if (c != null)
        {
            float f1 = getWidth() - (int)(2.0F * b.getStrokeWidth());
            canvas.drawRect(0.0F, 0.0F, f1, f1, c);
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = a(i1);
        int l1 = k1 - (int)(2.0F * b.getStrokeWidth());
        d.set(0.0F, 0.0F, l1, l1);
        setMeasuredDimension(k1, k1);
    }

}
