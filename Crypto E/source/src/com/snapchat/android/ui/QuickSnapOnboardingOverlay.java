// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

public class QuickSnapOnboardingOverlay extends LinearLayout
{
    public static final class OverlayMode extends Enum
    {

        public static final OverlayMode a;
        public static final OverlayMode b;
        public static final OverlayMode c;
        private static final OverlayMode d[];

        public static OverlayMode valueOf(String s)
        {
            return (OverlayMode)Enum.valueOf(com/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode, s);
        }

        public static OverlayMode[] values()
        {
            return (OverlayMode[])d.clone();
        }

        static 
        {
            a = new OverlayMode("MODE_BLINK", 0);
            b = new OverlayMode("MODE_SOLID", 1);
            c = new OverlayMode("MODE_SOLID_EXPIRE", 2);
            OverlayMode aoverlaymode[] = new OverlayMode[3];
            aoverlaymode[0] = a;
            aoverlaymode[1] = b;
            aoverlaymode[2] = c;
            d = aoverlaymode;
        }

        private OverlayMode(String s, int i)
        {
            super(s, i);
        }
    }


    private static int a = -1;
    private final Handler b = new Handler();
    private final FrameLayout c = (FrameLayout)findViewById(0x7f0a025d);
    private final FrameLayout d = (FrameLayout)findViewById(0x7f0a025e);
    private OverlayMode e;
    private boolean f;
    private final Runnable g = new Runnable() {

        final QuickSnapOnboardingOverlay a;

        public void run()
        {
            QuickSnapOnboardingOverlay.a(a, OverlayMode.a);
            ViewPropertyAnimator viewpropertyanimator = a.animate();
            viewpropertyanimator.alpha(0.0F);
            viewpropertyanimator.setDuration(2000L);
            viewpropertyanimator.start();
        }

            
            {
                a = QuickSnapOnboardingOverlay.this;
                super();
            }
    };

    public QuickSnapOnboardingOverlay(Context context)
    {
        super(context);
        e = OverlayMode.b;
        View view = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040071, this, true);
        if (view == null)
        {
            throw new NullPointerException();
        }
        view.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        if (a == -1)
        {
            a = context.getResources().getColor(0x7f08003a);
        }
    }

    static OverlayMode a(QuickSnapOnboardingOverlay quicksnaponboardingoverlay, OverlayMode overlaymode)
    {
        quicksnaponboardingoverlay.e = overlaymode;
        return overlaymode;
    }

    private void a()
    {
        AnimatorSet animatorset = new AnimatorSet();
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(this, "alpha", new float[] {
            getAlpha(), 1.0F
        }).setDuration(500L);
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(this, "alpha", new float[] {
            1.0F, 0.0F
        }).setDuration(500L);
        animatorset.play(objectanimator).before(objectanimator1);
        animatorset.start();
    }

    public void setHeightThreshold(int i)
    {
        android.view.ViewGroup.LayoutParams layoutparams = c.getLayoutParams();
        if (layoutparams == null)
        {
            throw new NullPointerException();
        } else
        {
            layoutparams.height = i;
            c.setLayoutParams(layoutparams);
            return;
        }
    }

    public void setOverlayMode(OverlayMode overlaymode)
    {
        e = overlaymode;
        b.removeCallbacks(g);
        static class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[OverlayMode.values().length];
                try
                {
                    a[OverlayMode.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[OverlayMode.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[OverlayMode.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls2.a[e.ordinal()])
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("Unexpected OverlayMode").append(e).toString());

        case 1: // '\001'
            setAlpha(0.0F);
            return;

        case 2: // '\002'
            b.postDelayed(g, 6000L);
            setAlpha(1.0F);
            return;

        case 3: // '\003'
            setAlpha(1.0F);
            break;
        }
    }

    public void setUpperRegionHighlight(boolean flag)
    {
        if (flag != f)
        {
            f = flag;
            FrameLayout framelayout = c;
            int i;
            FrameLayout framelayout1;
            int j;
            if (flag)
            {
                i = 0;
            } else
            {
                i = a;
            }
            framelayout.setBackgroundColor(i);
            framelayout1 = d;
            j = 0;
            if (flag)
            {
                j = a;
            }
            framelayout1.setBackgroundColor(j);
            if (e == OverlayMode.a)
            {
                a();
                return;
            }
        }
    }

}
