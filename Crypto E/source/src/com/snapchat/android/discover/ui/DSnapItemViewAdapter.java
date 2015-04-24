// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.view.View;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.ui.media.DSnapMediaListener;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapView

public abstract class DSnapItemViewAdapter
{

    protected DSnapMediaListener b;

    public DSnapItemViewAdapter()
    {
    }

    public abstract com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus a(long l);

    public void a(int i)
    {
    }

    public abstract void a(DSnapPage dsnappage, DSnapPanel dsnappanel);

    public void a(DSnapMediaListener dsnapmedialistener)
    {
        b = dsnapmedialistener;
    }

    public abstract void a(String s, DSnapPage dsnappage, View view);

    public abstract boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel);

    public abstract void c();

    public abstract View d();

    public abstract com.snapchat.android.discover.model.DSnapPanel.MediaType e();

    public void f()
    {
    }

    public boolean g()
    {
        return false;
    }

    public void n_()
    {
        if (b != null)
        {
            b.b();
        }
    }

    public void o_()
    {
    }
}
