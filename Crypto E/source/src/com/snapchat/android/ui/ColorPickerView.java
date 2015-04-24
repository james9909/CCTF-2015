// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ColorPickedEvent;
import com.squareup.otto.Bus;

public class ColorPickerView extends RelativeLayout
{
    class HorizontalExpandAnimation extends Animation
    {

        final ColorPickerView a;
        private final int b;
        private final int c;
        private final View d;

        protected void applyTransformation(float f1, Transformation transformation)
        {
            android.view.ViewGroup.LayoutParams layoutparams = d.getLayoutParams();
            if (layoutparams == null)
            {
                return;
            } else
            {
                layoutparams.width = (int)((float)b + f1 * (float)c);
                d.setLayoutParams(layoutparams);
                return;
            }
        }

        public boolean willChangeBounds()
        {
            return true;
        }

        public HorizontalExpandAnimation(int i1, int j1, View view)
        {
            a = ColorPickerView.this;
            super();
            b = i1;
            c = j1 - i1;
            d = view;
        }
    }


    private static final int a[] = {
        0xffff0000, -65383, 0xffcc00ff, 0xff0000ff, 0xff00ffff, 0xff25e805, -256, -24064, 0xffa95e1b, 0xff000000, 
        -1
    };
    private static final int b = a.length;
    private boolean c;
    private boolean d;
    private ScaleAnimation e;
    private TranslateAnimation f;
    private HorizontalExpandAnimation g;
    private View h;
    private View i;
    private View j;
    private int k[];
    private float l[];
    private Handler m;
    private Runnable n;

    public ColorPickerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = false;
        d = false;
        k = new int[2];
        l = new float[3];
        m = new Handler();
        n = new Runnable() {

            final ColorPickerView a;

            public void run()
            {
                if (!ColorPickerView.a(a) && ColorPickerView.b(a))
                {
                    ColorPickerView.d(a).startAnimation(ColorPickerView.c(a));
                    ColorPickerView.f(a).startAnimation(ColorPickerView.e(a));
                    ColorPickerView.g(a).setAnimationListener(new android.view.animation.Animation.AnimationListener(this) {

                        final _cls1 a;

                        public void onAnimationEnd(Animation animation)
                        {
                        }

                        public void onAnimationRepeat(Animation animation)
                        {
                        }

                        public void onAnimationStart(Animation animation)
                        {
                            AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
                            alphaanimation.setDuration(140L);
                            alphaanimation.setFillAfter(true);
                            a.a.findViewById(0x7f0a031a).startAnimation(alphaanimation);
                            a.a.findViewById(0x7f0a0319).startAnimation(alphaanimation);
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                    ColorPickerView.h(a).startAnimation(ColorPickerView.g(a));
                    ColorPickerView.a(a, true);
                }
            }

            
            {
                a = ColorPickerView.this;
                super();
            }
        };
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040092, this, true);
        i = findViewById(0x7f0a031d);
        View view = findViewById(0x7f0a031e);
        j = findViewById(0x7f0a031c);
        h = findViewById(0x7f0a0318);
        android.view.View.OnTouchListener ontouchlistener = new android.view.View.OnTouchListener() {

            final ColorPickerView a;

            public boolean onTouch(View view1, MotionEvent motionevent)
            {
                switch (motionevent.getAction())
                {
                default:
                    return true;

                case 0: // '\0'
                    ColorPickerView.a(a, motionevent);
                    ColorPickerView.b(a, true);
                    ColorPickerView.j(a).postDelayed(ColorPickerView.i(a), 300L);
                    return true;

                case 1: // '\001'
                    ColorPickerView.b(a, false);
                    ColorPickerView.j(a).removeCallbacks(ColorPickerView.i(a));
                    AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
                    alphaanimation.setDuration(200L);
                    alphaanimation.setFillAfter(true);
                    alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener(this) {

                        final _cls2 a;

                        public void onAnimationEnd(Animation animation)
                        {
                            ScaleAnimation scaleanimation = new ScaleAnimation(26F, 1.0F, 1.0F, 1.0F, 1, 1.0F, 1, 0.5F);
                            scaleanimation.setDuration(140L);
                            ColorPickerView.f(a.a).startAnimation(scaleanimation);
                            TranslateAnimation translateanimation = new TranslateAnimation((int)ViewUtils.a(-23.5F, a.a.getContext()), 0.0F, 0.0F, 0.0F);
                            translateanimation.setDuration(140L);
                            translateanimation.setFillAfter(true);
                            ColorPickerView.d(a.a).startAnimation(translateanimation);
                            HorizontalExpandAnimation horizontalexpandanimation = a.a. new HorizontalExpandAnimation(ColorPickerView.h(a.a).getWidth(), (int)ViewUtils.a(12F, a.a.getContext()), ColorPickerView.h(a.a));
                            horizontalexpandanimation.setDuration(140L);
                            ColorPickerView.h(a.a).startAnimation(horizontalexpandanimation);
                        }

                        public void onAnimationRepeat(Animation animation)
                        {
                        }

                        public void onAnimationStart(Animation animation)
                        {
                        }

            
            {
                a = _pcls2;
                super();
            }
                    });
                    if (ColorPickerView.a(a))
                    {
                        a.findViewById(0x7f0a031a).startAnimation(alphaanimation);
                        a.findViewById(0x7f0a0319).startAnimation(alphaanimation);
                    }
                    ColorPickerView.a(a, false);
                    return true;

                case 2: // '\002'
                    ColorPickerView.a(a, motionevent);
                    return true;

                case 3: // '\003'
                    ColorPickerView.b(a, false);
                    return true;
                }
            }

            
            {
                a = ColorPickerView.this;
                super();
            }
        };
        h.setOnTouchListener(ontouchlistener);
        j.setOnTouchListener(ontouchlistener);
        view.setOnTouchListener(ontouchlistener);
        i.setOnTouchListener(ontouchlistener);
        f = new TranslateAnimation(0.0F, (int)ViewUtils.a(-23.5F, getContext()), 0.0F, 0.0F);
        f.setDuration(140L);
        f.setFillAfter(true);
        g = new HorizontalExpandAnimation((int)ViewUtils.a(12F, getContext()), (int)ViewUtils.a(36F, getContext()), h);
        g.setDuration(140L);
        e = new ScaleAnimation(1.0F, 26F, 1.0F, 1.0F, 1, 1.0F, 1, 0.5F);
        e.setDuration(140L);
        e.setFillAfter(true);
    }

    private void a(MotionEvent motionevent)
    {
        int j1;
        int i2;
        int j2;
        int i1 = (int)motionevent.getRawY();
        j1 = (int)motionevent.getRawX();
        int k1 = h.getHeight() / b;
        h.getLocationOnScreen(k);
        int l1 = k[1];
        i2 = k[0] + h.getWidth();
        if ((float)j1 < (float)i2 - 4F * ViewUtils.a(12F, getContext()) || i1 > l1 + k1 * 12)
        {
            DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
            l[0] = (360F * (float)i1) / (float)displaymetrics.heightPixels;
            if (j1 < displaymetrics.widthPixels / 2)
            {
                l[1] = 1.0F;
                l[2] = (2.0F * (float)j1) / (float)displaymetrics.widthPixels;
            } else
            {
                l[1] = 2.0F - (2.0F * (float)j1) / (float)displaymetrics.widthPixels;
                l[2] = 1.0F;
            }
            a(Color.HSVToColor(l));
            return;
        }
        float af1[];
        if (i1 < l1 + k1)
        {
            j2 = a[0];
        } else
        if (i1 < l1 + k1 * 2)
        {
            j2 = a[1];
        } else
        if (i1 < l1 + k1 * 3)
        {
            j2 = a[2];
        } else
        if (i1 < l1 + k1 * 4)
        {
            j2 = a[3];
        } else
        if (i1 < l1 + k1 * 5)
        {
            j2 = a[4];
        } else
        if (i1 < l1 + k1 * 6)
        {
            j2 = a[5];
        } else
        if (i1 < l1 + k1 * 7)
        {
            j2 = a[6];
        } else
        if (i1 < l1 + k1 * 8)
        {
            j2 = a[7];
        } else
        if (i1 < l1 + k1 * 9)
        {
            j2 = a[8];
        } else
        if (i1 < l1 + k1 * 10)
        {
            j2 = a[9];
        } else
        {
            j2 = a[10];
        }
        if ((float)j1 >= (float)i2 - ViewUtils.a(12F, getContext()) || (float)j1 < (float)i2 - 2.0F * ViewUtils.a(12F, getContext())) goto _L2; else goto _L1
_L1:
        Color.colorToHSV(j2, l);
        af1 = l;
        af1[1] = 0.5F * af1[1];
        if (j2 == a[9])
        {
            j2 = Color.argb(255, 140, 140, 140);
        } else
        if (j2 == a[3])
        {
            j2 = Color.argb(255, 108, 171, 255);
        } else
        if (j2 == a[10])
        {
            j2 = Color.argb(120, 255, 255, 255);
        } else
        {
            j2 = Color.HSVToColor(l);
        }
_L4:
        a(j2);
        return;
_L2:
        if ((float)j1 < (float)i2 - 2.0F * ViewUtils.a(12F, getContext()))
        {
            Color.colorToHSV(j2, l);
            float af[] = l;
            af[2] = 0.6F * af[2];
            if (j2 == a[9])
            {
                j2 = Color.argb(80, 0, 0, 0);
            } else
            if (j2 == a[10])
            {
                j2 = Color.argb(255, 200, 200, 200);
            } else
            {
                j2 = Color.HSVToColor(l);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void a(ColorPickerView colorpickerview, MotionEvent motionevent)
    {
        colorpickerview.a(motionevent);
    }

    static boolean a(ColorPickerView colorpickerview)
    {
        return colorpickerview.d;
    }

    static boolean a(ColorPickerView colorpickerview, boolean flag)
    {
        colorpickerview.d = flag;
        return flag;
    }

    static boolean b(ColorPickerView colorpickerview)
    {
        return colorpickerview.c;
    }

    static boolean b(ColorPickerView colorpickerview, boolean flag)
    {
        colorpickerview.c = flag;
        return flag;
    }

    static TranslateAnimation c(ColorPickerView colorpickerview)
    {
        return colorpickerview.f;
    }

    static View d(ColorPickerView colorpickerview)
    {
        return colorpickerview.j;
    }

    static ScaleAnimation e(ColorPickerView colorpickerview)
    {
        return colorpickerview.e;
    }

    static View f(ColorPickerView colorpickerview)
    {
        return colorpickerview.i;
    }

    static HorizontalExpandAnimation g(ColorPickerView colorpickerview)
    {
        return colorpickerview.g;
    }

    static View h(ColorPickerView colorpickerview)
    {
        return colorpickerview.h;
    }

    static Runnable i(ColorPickerView colorpickerview)
    {
        return colorpickerview.n;
    }

    static Handler j(ColorPickerView colorpickerview)
    {
        return colorpickerview.m;
    }

    public void a(int i1)
    {
        BusProvider.a().a(new ColorPickedEvent(i1));
    }

}
