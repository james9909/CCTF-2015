// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.view.View;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemArrowViewAdapterDecorator

class a
    implements Runnable
{

    final DSnapItemArrowViewAdapterDecorator a;

    public void run()
    {
        if (!DSnapItemArrowViewAdapterDecorator.a(a))
        {
            DSnapItemArrowViewAdapterDecorator.d(a).setY(DSnapItemArrowViewAdapterDecorator.c(a));
            DSnapItemArrowViewAdapterDecorator.d(a).invalidate();
        }
    }

    (DSnapItemArrowViewAdapterDecorator dsnapitemarrowviewadapterdecorator)
    {
        a = dsnapitemarrowviewadapterdecorator;
        super();
    }
}
