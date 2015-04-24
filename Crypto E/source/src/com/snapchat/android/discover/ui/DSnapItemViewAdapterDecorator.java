// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.view.View;
import android.widget.FrameLayout;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.ui.media.DSnapMediaListener;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapter, DSnapView

public abstract class DSnapItemViewAdapterDecorator extends DSnapItemViewAdapter
{

    protected View a;
    protected FrameLayout c;
    protected DSnapItemViewAdapter d;
    private boolean e;

    DSnapItemViewAdapterDecorator(DSnapItemViewAdapter dsnapitemviewadapter)
    {
        e = false;
        d = dsnapitemviewadapter;
    }

    public com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus a(long l)
    {
        return d.a(l);
    }

    public void a(DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        d.a(dsnappage, dsnappanel);
    }

    public void a(DSnapMediaListener dsnapmedialistener)
    {
        d.a(dsnapmedialistener);
    }

    public void a(String s, DSnapPage dsnappage, View view)
    {
        d.a(s, dsnappage, view);
    }

    public boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        return d.a(dsnapview, dsnappage, dsnappanel);
    }

    public void c()
    {
        d.c();
    }

    public View d()
    {
        if (!e)
        {
            View view = d.d();
            c.addView(view);
            e = true;
        }
        return a;
    }

    public com.snapchat.android.discover.model.DSnapPanel.MediaType e()
    {
        return d.e();
    }

    public boolean g()
    {
        return d.g();
    }

    public void n_()
    {
        d.n_();
    }

    public void o_()
    {
        d.o_();
    }
}
