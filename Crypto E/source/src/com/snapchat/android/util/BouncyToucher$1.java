// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.view.View;
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;

// Referenced classes of package com.snapchat.android.util:
//            BouncyToucher

class <init> extends SimpleSpringListener
{

    final float a;
    final View b;
    final BouncyToucher c;

    public void a(Spring spring)
    {
        float f = 1.0F + (a - 1.0F) * (float)spring.b();
        b.setScaleX(f);
        b.setScaleY(f);
    }

    (BouncyToucher bouncytoucher, float f, View view)
    {
        c = bouncytoucher;
        a = f;
        b = view;
        super();
    }
}
