// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.widget.ImageView;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.ui.media.DSnapMediaListener;
import com.snapchat.android.discover.ui.media.VideoViewController;
import com.snapchat.android.ui.FitWidthImageView;
import com.snapchat.android.ui.FitWidthViewGroup;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.util.bitmap.AsyncBitmapLoader;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapter, DSnapView

public class DSnapItemTextureVideoViewAdapter extends DSnapItemViewAdapter
{

    private final Context a;
    private final Bus c;
    private final VideoViewController d;
    private final AsyncBitmapLoader e;
    private ImageView f;
    private FitWidthViewGroup g;
    private DSnapMediaListener h;
    private boolean i;
    private boolean j;
    private OnBitmapDecodedCallback k = new OnBitmapDecodedCallback() {

        final DSnapItemTextureVideoViewAdapter a;

        public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
        {
            super.a(bitmapdecoderesult, asyncloadbitmaprequest);
            DSnapItemTextureVideoViewAdapter.b(a, true);
            DSnapItemTextureVideoViewAdapter.a(a);
        }

            
            {
                a = DSnapItemTextureVideoViewAdapter.this;
                super();
            }
    };

    public DSnapItemTextureVideoViewAdapter(Context context)
    {
        this(context, BusProvider.a(), new VideoViewController(true), new AsyncBitmapLoader(context));
    }

    public DSnapItemTextureVideoViewAdapter(Context context, Bus bus, VideoViewController videoviewcontroller, AsyncBitmapLoader asyncbitmaploader)
    {
        i = false;
        j = false;
        a = context;
        c = bus;
        d = videoviewcontroller;
        e = asyncbitmaploader;
    }

    static void a(DSnapItemTextureVideoViewAdapter dsnapitemtexturevideoviewadapter)
    {
        dsnapitemtexturevideoviewadapter.h();
    }

    static boolean a(DSnapItemTextureVideoViewAdapter dsnapitemtexturevideoviewadapter, boolean flag)
    {
        dsnapitemtexturevideoviewadapter.i = flag;
        return flag;
    }

    static boolean b(DSnapItemTextureVideoViewAdapter dsnapitemtexturevideoviewadapter, boolean flag)
    {
        dsnapitemtexturevideoviewadapter.j = flag;
        return flag;
    }

    private void h()
    {
        if (h != null && i && j)
        {
            h.b();
        }
    }

    public com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus a(long l)
    {
        if (l >= (long)d.b())
        {
            return com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.b;
        } else
        {
            return com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.a;
        }
    }

    public void a(DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
    }

    public void a(DSnapMediaListener dsnapmedialistener)
    {
        h = dsnapmedialistener;
        d.a(new DSnapMediaListener(dsnapmedialistener) {

            final DSnapMediaListener a;
            final DSnapItemTextureVideoViewAdapter b;

            public void a()
            {
                a.a();
            }

            public void a(String s)
            {
                a.a(s);
            }

            public void b()
            {
                DSnapItemTextureVideoViewAdapter.a(b, true);
                DSnapItemTextureVideoViewAdapter.a(b);
            }

            
            {
                b = DSnapItemTextureVideoViewAdapter.this;
                a = dsnapmedialistener;
                super();
            }
        });
    }

    public void a(String s, DSnapPage dsnappage, View view)
    {
        android.graphics.Bitmap bitmap = d.c();
        if (bitmap != null)
        {
            if (f != null)
            {
                Canvas canvas = new Canvas();
                canvas.setBitmap(bitmap);
                f.buildDrawingCache();
                canvas.drawBitmap(f.getDrawingCache(), new Matrix(), null);
                f.destroyDrawingCache();
            }
            com.snapchat.android.discover.model.DSnapbryo dsnapbryo = (new com.snapchat.android.discover.model.DSnapbryo.Builder(s, dsnappage.d(), dsnappage.a())).a(dsnappage.f()).a(bitmap).a();
            d.a();
            c.a(new SnapCapturedEvent(dsnapbryo));
        }
    }

    public boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        g = new FitWidthViewGroup(a);
        static class _cls3
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[com.snapchat.android.discover.model.DSnapPanel.Mode.values().length];
                try
                {
                    b[com.snapchat.android.discover.model.DSnapPanel.Mode.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[com.snapchat.android.discover.model.DSnapPanel.Mode.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                a = new int[com.snapchat.android.discover.model.DSnapPanel.Docking.values().length];
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.Docking.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.Docking.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.Docking.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        _cls3.a[dsnappanel.h().ordinal()];
        JVM INSTR tableswitch 1 3: default 52
    //                   1 194
    //                   2 205
    //                   3 216;
           goto _L1 _L2 _L3 _L4
_L1:
        g.setGravity(1);
_L5:
        boolean flag;
        int l = _cls3.b[dsnappanel.g().ordinal()];
        flag = false;
        switch (l)
        {
        default:
            flag = true;
            break;

        case 1: // '\001'
            break MISSING_BLOCK_LABEL_227;

        case 2: // '\002'
            break;
        }
_L6:
        String s = (new StringBuilder()).append(dsnappage.b()).append(dsnappanel.a()).toString();
        TextureVideoView texturevideoview = new TextureVideoView(a);
        d.a(texturevideoview, s, flag);
        g.addView(texturevideoview);
        f = b(dsnappage, dsnappanel);
        if (f != null)
        {
            g.addView(f);
        }
        return true;
_L2:
        g.setGravity(0);
          goto _L5
_L3:
        g.setGravity(1);
          goto _L5
_L4:
        g.setGravity(2);
          goto _L5
        flag = true;
          goto _L6
    }

    protected ImageView b(DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        String s = dsnappanel.c();
        if (s != null)
        {
            j = false;
            FitWidthImageView fitwidthimageview = new FitWidthImageView(a);
            fitwidthimageview.setAdjustViewBounds(true);
            String s1 = (new StringBuilder()).append(dsnappage.b()).append(s).toString();
            AsyncLoadBitmapRequest asyncloadbitmaprequest = (new com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest.Builder()).a(fitwidthimageview).a(s1).a(true).a(k).a();
            e.a(asyncloadbitmaprequest);
            return fitwidthimageview;
        } else
        {
            j = true;
            return null;
        }
    }

    public void c()
    {
        e.a(f);
    }

    public View d()
    {
        return g;
    }

    public com.snapchat.android.discover.model.DSnapPanel.MediaType e()
    {
        return com.snapchat.android.discover.model.DSnapPanel.MediaType.b;
    }

    public void n_()
    {
        d.a(false);
    }

    public void o_()
    {
        d.b(false);
    }
}
