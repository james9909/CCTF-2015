// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.os.Handler;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class a
    implements Runnable
{

    final CashSwiperView a;

    public void run()
    {
        CashSwiperView.g(a);
        CashSwiperView.i(a).postDelayed(new Runnable() {

            final CashSwiperView._cls8 a;

            public void run()
            {
                CashSwiperView.h(a.a);
            }

            
            {
                a = CashSwiperView._cls8.this;
                super();
            }
        }, 3000L);
    }

    _cls1.a(CashSwiperView cashswiperview)
    {
        a = cashswiperview;
        super();
    }
}
