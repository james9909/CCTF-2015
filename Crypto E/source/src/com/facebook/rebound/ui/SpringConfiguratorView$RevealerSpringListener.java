// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound.ui;

import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringListener;

// Referenced classes of package com.facebook.rebound.ui:
//            SpringConfiguratorView

class <init>
    implements SpringListener
{

    final SpringConfiguratorView a;

    public void a(Spring spring)
    {
        float f = (float)spring.b();
        float f1 = SpringConfiguratorView.h(a);
        float f2 = f1 + f * (SpringConfiguratorView.i(a) - f1);
        a.setTranslationY(f2);
    }

    public void b(Spring spring)
    {
    }

    public void c(Spring spring)
    {
    }

    public void d(Spring spring)
    {
    }

    private (SpringConfiguratorView springconfiguratorview)
    {
        a = springconfiguratorview;
        super();
    }

    a(SpringConfiguratorView springconfiguratorview, a a1)
    {
        this(springconfiguratorview);
    }
}
