// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;

import android.widget.AbsListView;

// Referenced classes of package com.github.ksoichiro.android.observablescrollview:
//            ObservableGridView

class a
    implements android.widget.istener
{

    final ObservableGridView a;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        if (ObservableGridView.a(a) != null)
        {
            ObservableGridView.a(a).onScroll(abslistview, i, j, k);
        }
        ObservableGridView.b(a);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (ObservableGridView.a(a) != null)
        {
            ObservableGridView.a(a).onScrollStateChanged(abslistview, i);
        }
    }

    (ObservableGridView observablegridview)
    {
        a = observablegridview;
        super();
    }
}
