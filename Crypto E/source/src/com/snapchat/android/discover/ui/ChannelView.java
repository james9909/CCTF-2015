// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.discover.ui:
//            BrandIconProvider

public class ChannelView extends ViewGroup
{

    private DiscoverViewTrackingManager a;
    private ImageView b;
    private ImageView c;
    private ProgressBar d;
    private BrandIconProvider e;
    private ChannelPage f;

    public ChannelView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = DiscoverViewTrackingManager.a();
        e = new BrandIconProvider(context);
        e.a(new BrandIconProvider.BrandIconLoadedCallback() {

            final ChannelView a;

            public void a()
            {
                ChannelView.a(a);
            }

            
            {
                a = ChannelView.this;
                super();
            }
        });
    }

    static void a(ChannelView channelview)
    {
        channelview.d();
    }

    private void d()
    {
        if (!f.n())
        {
            setAlpha(0.5F);
        } else
        if (e.a())
        {
            setAlpha(1.0F);
            setProgressBarVisibility(false);
            return;
        }
    }

    public void a(ImageView imageview)
    {
        c = imageview;
    }

    public boolean a()
    {
        boolean flag = a.b(f.f());
        return f.i() == 0 || f.n() && flag || !f.x();
    }

    public boolean b()
    {
        return f.f() != null && f.i() > 0 && f.n() && f.x();
    }

    public ImageView c()
    {
        return c;
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        e.a(getWidth());
        e.a(b, f, a());
        d();
    }

    public ChannelPage getChannelPage()
    {
        return f;
    }

    public int getFillColor()
    {
        return f.g();
    }

    protected void onAttachedToWindow()
    {
        b = (ImageView)findViewById(0x7f0a00ec);
        d = (ProgressBar)findViewById(0x7f0a00ed);
        c = (ImageView)findViewById(0x7f0a00ee);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            View view = getChildAt(i1);
            int j1 = view.getMeasuredWidth();
            int k1 = view.getMeasuredHeight();
            int l1 = (k - i) / 2;
            int i2 = (l - j) / 2;
            view.layout(l1 - j1 / 2, i2 - k1 / 2, l1 + j1 / 2, i2 + k1 / 2);
        }

    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        setMeasuredDimension(k, k);
        int l = 0;
        while (l < getChildCount()) 
        {
            View view = getChildAt(l);
            if (view.equals(d))
            {
                int i1 = android.view.View.MeasureSpec.makeMeasureSpec((int)ViewUtils.a(38F, getContext()), 0x40000000);
                view.measure(i1, i1);
            } else
            {
                view.measure(i, j);
            }
            l++;
        }
    }

    public void setChannelPage(ChannelPage channelpage)
    {
        f = channelpage;
    }

    public void setProgressBarVisibility(boolean flag)
    {
        if (flag)
        {
            d.setVisibility(0);
            return;
        } else
        {
            d.setVisibility(4);
            return;
        }
    }
}
