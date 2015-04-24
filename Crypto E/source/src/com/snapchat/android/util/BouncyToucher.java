// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.view.MotionEvent;
import android.view.View;
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringConfig;
import com.facebook.rebound.SpringSystem;

public class BouncyToucher
    implements android.view.View.OnTouchListener
{

    private final Spring a;

    public BouncyToucher(View view)
    {
        this(view, 1.2F, 1000F, 15F);
    }

    public BouncyToucher(View view, float f, float f1, float f2)
    {
        a = SpringSystem.d().b();
        a.a(new SpringConfig(f1, f2));
        a.a(new SimpleSpringListener(f, view) {

            final float a;
            final View b;
            final BouncyToucher c;

            public void a(Spring spring)
            {
                float f3 = 1.0F + (a - 1.0F) * (float)spring.b();
                b.setScaleX(f3);
                b.setScaleY(f3);
            }

            
            {
                c = BouncyToucher.this;
                a = f;
                b = view;
                super();
            }
        });
    }

    public void a()
    {
        a.c(50D);
        a.b(1.0D);
        a.b(0.0D);
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getActionMasked() == 1 || motionevent.getActionMasked() == 3)
        {
            a.b(0.0D);
        } else
        {
            a.b(1.0D);
        }
        return false;
    }
}
