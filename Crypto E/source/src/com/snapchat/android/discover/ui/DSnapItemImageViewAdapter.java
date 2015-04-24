// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.ui.media.DSnapMediaListener;
import com.snapchat.android.ui.FitWidthImageView;
import com.snapchat.android.ui.FitWidthViewGroup;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.bitmap.AsyncBitmapLoader;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapter, DSnapView

public class DSnapItemImageViewAdapter extends DSnapItemViewAdapter
{

    private final Context a;
    private final Bus c;
    private final AsyncBitmapLoader d;
    private FitWidthViewGroup e;
    private ImageView f;
    private DSnapMediaListener g;
    private OnBitmapDecodedCallback h = new OnBitmapDecodedCallback() {

        final DSnapItemImageViewAdapter a;

        public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
        {
            super.a(bitmapdecoderesult, asyncloadbitmaprequest);
            if (DSnapItemImageViewAdapter.a(a) != null)
            {
                DSnapItemImageViewAdapter.a(a).b();
            }
        }

            
            {
                a = DSnapItemImageViewAdapter.this;
                super();
            }
    };

    public DSnapItemImageViewAdapter(Context context)
    {
        this(context, BusProvider.a(), new AsyncBitmapLoader(context));
    }

    protected DSnapItemImageViewAdapter(Context context, Bus bus, AsyncBitmapLoader asyncbitmaploader)
    {
        a = context;
        c = bus;
        d = asyncbitmaploader;
    }

    static DSnapMediaListener a(DSnapItemImageViewAdapter dsnapitemimageviewadapter)
    {
        return dsnapitemimageviewadapter.g;
    }

    public com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus a(long l)
    {
        return com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.b;
    }

    public void a(DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
    }

    public void a(DSnapMediaListener dsnapmedialistener)
    {
        g = dsnapmedialistener;
    }

    public void a(String s, DSnapPage dsnappage, View view)
    {
        if (f != null)
        {
            f.buildDrawingCache();
            android.graphics.Bitmap bitmap = SnapMediaUtils.c(f.getDrawingCache());
            f.destroyDrawingCache();
            com.snapchat.android.discover.model.DSnapbryo dsnapbryo = (new com.snapchat.android.discover.model.DSnapbryo.Builder(s, dsnappage.d(), dsnappage.a())).a(dsnappage.f()).a(bitmap).a();
            c.a(new SnapCapturedEvent(dsnapbryo));
        }
    }

    public boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        e = new FitWidthViewGroup(a);
        f = new FitWidthImageView(a);
        static class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.discover.model.DSnapPanel.Docking.values().length];
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.Docking.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.Docking.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.Docking.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls2.a[dsnappanel.h().ordinal()];
        JVM INSTR tableswitch 1 3: default 68
    //                   1 167
    //                   2 178
    //                   3 189;
           goto _L1 _L2 _L3 _L4
_L1:
        e.setGravity(1);
_L6:
        e.addView(f);
        f.setAdjustViewBounds(true);
        String s = (new StringBuilder()).append(dsnappage.b()).append(dsnappanel.a()).toString();
        AsyncLoadBitmapRequest asyncloadbitmaprequest = (new com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest.Builder()).a(f).a(s).a(h).a(true).a();
        d.a(asyncloadbitmaprequest);
        return true;
_L2:
        e.setGravity(0);
        continue; /* Loop/switch isn't completed */
_L3:
        e.setGravity(1);
        continue; /* Loop/switch isn't completed */
_L4:
        e.setGravity(2);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void c()
    {
        d.a(f);
    }

    public View d()
    {
        return e;
    }

    public com.snapchat.android.discover.model.DSnapPanel.MediaType e()
    {
        return com.snapchat.android.discover.model.DSnapPanel.MediaType.a;
    }
}
