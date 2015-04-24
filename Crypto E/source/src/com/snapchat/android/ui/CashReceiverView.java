// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.snapchat.android.util.MathUtils;
import com.snapchat.android.util.ViewUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class CashReceiverView extends RelativeLayout
{
    static final class GhostDirection extends Enum
    {

        public static final GhostDirection a;
        public static final GhostDirection b;
        private static final GhostDirection c[];

        public static GhostDirection valueOf(String s)
        {
            return (GhostDirection)Enum.valueOf(com/snapchat/android/ui/CashReceiverView$GhostDirection, s);
        }

        public static GhostDirection[] values()
        {
            return (GhostDirection[])c.clone();
        }

        static 
        {
            a = new GhostDirection("RIGHT", 0);
            b = new GhostDirection("LEFT", 1);
            GhostDirection aghostdirection[] = new GhostDirection[2];
            aghostdirection[0] = a;
            aghostdirection[1] = b;
            c = aghostdirection;
        }

        private GhostDirection(String s, int i)
        {
            super(s, i);
        }
    }


    private int a;
    private List b;
    private ViewGroup c;
    private boolean d;
    private ValueAnimator e;
    private boolean f;
    private HashMap g;

    public CashReceiverView(Context context)
    {
        super(context);
        a = 0;
        g = new HashMap();
        b();
    }

    public CashReceiverView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        g = new HashMap();
        b();
    }

    public CashReceiverView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 0;
        g = new HashMap();
        b();
    }

    static ValueAnimator a(CashReceiverView cashreceiverview)
    {
        return cashreceiverview.e;
    }

    private void a(GhostDirection ghostdirection)
    {
        f = false;
        e = ValueAnimator.ofFloat(new float[] {
            0.0F, 1.0F
        });
        e.setInterpolator(new LinearInterpolator());
        e.setDuration((long)(950F - 650F * getHotness()));
        float f1 = 50F + 50F * MathUtils.a().nextFloat() + getHotness() * (25F + 25F * MathUtils.a().nextFloat());
        if (ghostdirection == GhostDirection.b)
        {
            f1 = -f1;
        }
        float f2 = ViewUtils.a(f1, getContext());
        float f3 = c.getTranslationX();
        float f4 = ViewUtils.a(50F + 25F * MathUtils.a().nextFloat() + getHotness() * (75F + 75F * MathUtils.a().nextFloat()), getContext());
        e.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(f4, f3, f2) {

            final float a;
            final float b;
            final float c;
            final CashReceiverView d;

            public void onAnimationUpdate(ValueAnimator valueanimator)
            {
                float f6;
                float f5 = ((Float)CashReceiverView.a(d).getAnimatedValue()).floatValue();
                CashReceiverView.b(d).setTranslationY(f5 * a * (f5 - 1.0F));
                f6 = b + f5 * c;
                if (f6 >= 0.0F) goto _L2; else goto _L1
_L1:
                f6 = -f6;
_L4:
                CashReceiverView.b(d).setTranslationX(f6);
                return;
_L2:
                if (f6 + (float)CashReceiverView.b(d).getMeasuredWidth() > (float)d.getMeasuredWidth())
                {
                    f6 -= 2.0F * ((f6 + (float)CashReceiverView.b(d).getMeasuredWidth()) - (float)d.getMeasuredWidth());
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                d = CashReceiverView.this;
                a = f1;
                b = f2;
                c = f3;
                super();
            }
        });
        e.addListener(new android.animation.Animator.AnimatorListener(f3, f2, ghostdirection) {

            final float a;
            final float b;
            final GhostDirection c;
            final CashReceiverView d;

            public void onAnimationCancel(Animator animator)
            {
                CashReceiverView.a(d, true);
            }

            public void onAnimationEnd(Animator animator)
            {
                if (CashReceiverView.c(d))
                {
                    return;
                }
                if (a + b < 0.0F)
                {
                    CashReceiverView.a(d, GhostDirection.a);
                    return;
                }
                if (a + b + (float)CashReceiverView.b(d).getMeasuredWidth() > (float)d.getMeasuredWidth())
                {
                    CashReceiverView.a(d, GhostDirection.b);
                    return;
                } else
                {
                    CashReceiverView.a(d, c);
                    return;
                }
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                d = CashReceiverView.this;
                a = f1;
                b = f2;
                c = ghostdirection;
                super();
            }
        });
        e.start();
    }

    static void a(CashReceiverView cashreceiverview, GhostDirection ghostdirection)
    {
        cashreceiverview.a(ghostdirection);
    }

    static boolean a(CashReceiverView cashreceiverview, boolean flag)
    {
        cashreceiverview.f = flag;
        return flag;
    }

    static ViewGroup b(CashReceiverView cashreceiverview)
    {
        return cashreceiverview.c;
    }

    private void b()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f04001d, this);
        c = (ViewGroup)findViewById(0x7f0a00d6);
        b = new ArrayList();
        a();
    }

    private void c()
    {
        e();
        if (a < 6)
        {
            d();
        }
        b.add(Long.valueOf(SystemClock.elapsedRealtime()));
        a = 1 + a;
    }

    static boolean c(CashReceiverView cashreceiverview)
    {
        return cashreceiverview.f;
    }

    private void d()
    {
        ImageView imageview = f();
        c.addView(imageview);
        float f1 = -2F + 2.0F * MathUtils.a().nextFloat();
        if (d && a % 2 == 0 || !d && a % 2 != 0)
        {
            f1 += 32F;
        }
        imageview.setTranslationX(ViewUtils.a(f1, getContext()));
        imageview.setTranslationY(ViewUtils.a(4F + 2.0F * MathUtils.a().nextFloat(), getContext()));
        imageview.setRotation(-30F + 60F * MathUtils.a().nextFloat());
    }

    private void e()
    {
        ImageView imageview = g();
        float f1 = MathUtils.a().nextFloat();
        float f2 = 0.9F + 0.2F * MathUtils.a().nextFloat();
        imageview.setScaleX(f2);
        imageview.setScaleY(f2);
        int i;
        for (i = 0; i < getChildCount() && f2 > getChildAt(i).getScaleX(); i++) { }
        addView(imageview, i);
        float f3 = ViewUtils.a(3.33F - 1.66F * f1, getContext());
        float f4 = ViewUtils.a(0.2F + 0.1F * f1, getContext());
        float f5 = ViewUtils.a(0.0015F + -0.0005F * f1, getContext());
        float f6 = ViewUtils.a(133F * f2 + f1 * -66F, getContext());
        float f7 = (float)getMeasuredWidth() * (0.4F + 0.2F * MathUtils.a().nextFloat()) - (float)imageview.getLayoutParams().width / 2.0F;
        float f8 = (float)(6.2831853071795862D * (double)MathUtils.a().nextFloat());
        float f9 = (float)(-imageview.getLayoutParams().height) - ViewUtils.a(5F, getContext());
        ValueAnimator valueanimator = ValueAnimator.ofFloat(new float[] {
            0.0F, 1.0F
        });
        valueanimator.setDuration(5000L);
        valueanimator.setInterpolator(new LinearInterpolator());
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(imageview, f5, f8, f6, f7, f9, f4, f3) {

            final View a;
            final float b;
            final float c;
            final float d;
            final float e;
            final float f;
            final float g;
            final float h;
            final CashReceiverView i;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                float f10 = 5000F * ((Float)valueanimator1.getAnimatedValue()).floatValue();
                a.setTranslationX((float)(Math.sin(f10 * b + c) * (double)d + (double)e));
                a.setTranslationY(f + f10 * g);
                a.setRotation((float)(-Math.sin(f10 * b + c) * (double)h));
            }

            
            {
                i = CashReceiverView.this;
                a = view;
                b = f1;
                c = f2;
                d = f3;
                e = f4;
                f = f5;
                g = f6;
                h = f7;
                super();
            }
        });
        valueanimator.addListener(new android.animation.Animator.AnimatorListener(imageview) {

            final View a;
            final CashReceiverView b;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                ViewGroup viewgroup = (ViewGroup)a.getParent();
                if (viewgroup != null)
                {
                    viewgroup.removeView(a);
                }
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                b = CashReceiverView.this;
                a = view;
                super();
            }
        });
        valueanimator.start();
    }

    private ImageView f()
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageResource(0x7f0200a3);
        int i = (int)ViewUtils.a(9F, getContext());
        int j = (int)ViewUtils.a(18F, getContext());
        float f1 = 0.9F + 0.2F * MathUtils.a().nextFloat();
        imageview.setScaleX(f1);
        imageview.setScaleY(f1);
        imageview.setLayoutParams(new android.view.ViewGroup.LayoutParams(i, j));
        imageview.setTag("CAUGHT_DOLLAR_TAG");
        return imageview;
    }

    private ImageView g()
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageDrawable(getResources().getDrawable(0x7f0200a4));
        imageview.setLayoutParams(new android.view.ViewGroup.LayoutParams((int)ViewUtils.a(72F, getContext()), (int)ViewUtils.a(36F, getContext())));
        imageview.setTag("FALLING_DOLLAR_TAG");
        return imageview;
    }

    private float getHotness()
    {
        long l = SystemClock.elapsedRealtime();
        Iterator iterator = b.iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            int j;
            if (((Long)iterator.next()).longValue() > l - 2000L)
            {
                j = i + 1;
            } else
            {
                j = i;
            }
            i = j;
        }
        return (float)Math.sqrt(Math.min((float)i / 6F, 1.0F));
    }

    public void a()
    {
        d = MathUtils.a().nextBoolean();
        a = 0;
        b.clear();
        if (e != null)
        {
            e.cancel();
        }
        c.setTranslationX(0.0F);
        c.setTranslationY(0.0F);
        Iterator iterator = ViewUtils.a(c).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            View view1 = (View)iterator.next();
            if (TextUtils.equals((CharSequence)view1.getTag(), "CAUGHT_DOLLAR_TAG"))
            {
                c.removeView(view1);
            }
        } while (true);
        Iterator iterator1 = ViewUtils.a(this).iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            View view = (View)iterator1.next();
            if (TextUtils.equals((CharSequence)view.getTag(), "FALLING_DOLLAR_TAG"))
            {
                removeView(view);
            }
        } while (true);
    }

    public void a(int i, long l)
    {
        int j;
        if (g.containsKey(Long.valueOf(l)))
        {
            j = i - ((Integer)g.get(Long.valueOf(l))).intValue();
        } else
        {
            j = i;
        }
        if (j > 0)
        {
            g.put(Long.valueOf(l), Integer.valueOf(i));
            if (e == null || !e.isStarted())
            {
                a(GhostDirection.a);
            }
            int k = 0;
            while (k < j) 
            {
                c();
                k++;
            }
        }
    }
}
