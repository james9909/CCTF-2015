// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.util.bitmap.AsyncBitmapLoader;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapterDecorator, DSnapItemViewAdapter, DSnapView

public class DSnapItemSponsoredViewAdapterDecorator extends DSnapItemViewAdapterDecorator
{

    private final LayoutInflater e;
    private ImageView f;
    private AsyncBitmapLoader g;

    public DSnapItemSponsoredViewAdapterDecorator(Context context, DSnapItemViewAdapter dsnapitemviewadapter)
    {
        this((LayoutInflater)context.getSystemService("layout_inflater"), dsnapitemviewadapter, new AsyncBitmapLoader(context));
    }

    protected DSnapItemSponsoredViewAdapterDecorator(LayoutInflater layoutinflater, DSnapItemViewAdapter dsnapitemviewadapter, AsyncBitmapLoader asyncbitmaploader)
    {
        super(dsnapitemviewadapter);
        e = layoutinflater;
        g = asyncbitmaploader;
    }

    public boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        super.a(dsnapview, dsnappage, dsnappanel);
        a = e.inflate(0x7f040045, null);
        c = (FrameLayout)a.findViewById(0x7f0a01a3);
        f = (ImageView)a.findViewById(0x7f0a01a7);
        String s = (new StringBuilder()).append(dsnappage.b()).append(dsnappanel.d()).toString();
        com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest asyncloadbitmaprequest = (new com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest.Builder()).a(f).a(s).a(true).a();
        g.a(asyncloadbitmaprequest);
        return true;
    }

    public void c()
    {
        super.c();
        g.a(f);
    }
}
