// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.animation.Animator;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewPropertyAnimator;
import android.widget.RelativeLayout;
import com.snapchat.android.database.SharedPreferenceKey;

public class CashTooltip extends RelativeLayout
{

    private final SharedPreferences a;
    private boolean b;

    public CashTooltip(Context context)
    {
        this(context, null);
    }

    public CashTooltip(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040020, this, true);
        a = PreferenceManager.getDefaultSharedPreferences(context);
        b = false;
        setAlpha(0.0F);
    }

    public void a(boolean flag)
    {
        while (flag == b || !a()) 
        {
            return;
        }
        b = flag;
        b(flag);
    }

    protected boolean a()
    {
        int i = a.getInt(SharedPreferenceKey.aS.a(), 0);
        boolean flag = false;
        if (i < 3)
        {
            flag = true;
        }
        return flag;
    }

    public void b()
    {
        if (a())
        {
            android.content.SharedPreferences.Editor editor = a.edit();
            editor.putInt(SharedPreferenceKey.aS.a(), 3);
            editor.apply();
        }
    }

    protected void b(boolean flag)
    {
        float f;
        ViewPropertyAnimator viewpropertyanimator;
        if (flag)
        {
            f = 1.0F;
        } else
        {
            f = 0.0F;
        }
        if (!flag);
        viewpropertyanimator = animate();
        viewpropertyanimator.alpha(f).setDuration(1000L);
        if (flag)
        {
            viewpropertyanimator.setListener(new android.animation.Animator.AnimatorListener(viewpropertyanimator) {

                final ViewPropertyAnimator a;
                final CashTooltip b;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                    a.setListener(null);
                    a.alpha(0.0F).setDuration(1000L).setStartDelay(3000L).start();
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                }

            
            {
                b = CashTooltip.this;
                a = viewpropertyanimator;
                super();
            }
            });
            int i = a.getInt(SharedPreferenceKey.aS.a(), 0);
            android.content.SharedPreferences.Editor editor = a.edit();
            editor.putInt(SharedPreferenceKey.aS.a(), i + 1);
            editor.apply();
        }
        viewpropertyanimator.setStartDelay(0L).start();
    }
}
