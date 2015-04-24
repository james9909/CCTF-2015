// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound.ui;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.facebook.rebound.ui:
//            SpringConfiguratorView

class <init>
    implements android.view.chListener
{

    final SpringConfiguratorView a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            SpringConfiguratorView.g(a);
        }
        return true;
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
