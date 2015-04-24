// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.util.bitmap.BitmapRecycling;
import com.snapchat.android.util.cache.CancelableCacheCompletedCallback;
import com.snapchat.android.util.debug.ReleaseManager;

public class ImageSnapRenderer
    implements SnapMediaRenderer
{
    public static class DelayedImageDisplay
    {

        public void a(ImageView imageview)
        {
            ViewTreeObserver viewtreeobserver = imageview.getRootView().getViewTreeObserver();
            viewtreeobserver.addOnPreDrawListener(new android.view.ViewTreeObserver.OnPreDrawListener(this, viewtreeobserver) {

                final ViewTreeObserver a;
                final DelayedImageDisplay b;

                public boolean onPreDraw()
                {
                    if (a != null && a.isAlive())
                    {
                        a.removeOnPreDrawListener(this);
                    }
                    return false;
                }

            
            {
                b = delayedimagedisplay;
                a = viewtreeobserver;
                super();
            }
            });
        }

        protected DelayedImageDisplay()
        {
        }
    }


    private static String a = "ImageSnapRenderer";
    private final Context b;
    private final LayoutInflater c;
    private final BitmapRecycling d;
    private final DelayedImageDisplay e;
    private final SnapViewEventAnalytics f;
    private View g;
    private ImageView h;
    private ReceivedSnap i;
    private CancelableCacheCompletedCallback j;
    private com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener k;

    public ImageSnapRenderer(Context context)
    {
        this(context, (LayoutInflater)context.getSystemService("layout_inflater"), new BitmapRecycling(), new DelayedImageDisplay(), SnapViewEventAnalytics.a());
    }

    ImageSnapRenderer(Context context, LayoutInflater layoutinflater, BitmapRecycling bitmaprecycling, DelayedImageDisplay delayedimagedisplay, SnapViewEventAnalytics snapvieweventanalytics)
    {
        b = context;
        c = layoutinflater;
        d = bitmaprecycling;
        e = delayedimagedisplay;
        f = snapvieweventanalytics;
    }

    static ReceivedSnap a(ImageSnapRenderer imagesnaprenderer)
    {
        return imagesnaprenderer.i;
    }

    static ImageView b(ImageSnapRenderer imagesnaprenderer)
    {
        return imagesnaprenderer.h;
    }

    static SnapViewEventAnalytics c(ImageSnapRenderer imagesnaprenderer)
    {
        return imagesnaprenderer.f;
    }

    static com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener d(ImageSnapRenderer imagesnaprenderer)
    {
        return imagesnaprenderer.k;
    }

    static String e()
    {
        return a;
    }

    public void a()
    {
        String s = a;
        Object aobj[] = new Object[1];
        String s1;
        if (i == null)
        {
            s1 = "?";
        } else
        {
            s1 = i.d();
        }
        aobj[0] = s1;
        Timber.c(s, "Start %s", aobj);
        if (i == null)
        {
            if (ReleaseManager.f())
            {
                throw new RuntimeException("Start called for null snap");
            }
        } else
        {
            f.a("DelayToShowImage");
            g.bringToFront();
            e.a(h);
            h.setVisibility(0);
            h.post(new Runnable() {

                final ImageSnapRenderer a;

                public void run()
                {
                    ImageSnapRenderer.c(a).b("DelayToShowImage");
                    com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener snaprendererlistener = ImageSnapRenderer.d(a);
                    if (snaprendererlistener != null)
                    {
                        snaprendererlistener.a();
                    }
                }

            
            {
                a = ImageSnapRenderer.this;
                super();
            }
            });
        }
    }

    public void a(ViewGroup viewgroup)
    {
        g = c.inflate(0x7f04007e, viewgroup, false);
        h = (ImageView)g.findViewById(0x7f0a02bd);
        viewgroup.addView(g);
    }

    public void a(ReceivedSnap receivedsnap, boolean flag, com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener snaprendererlistener)
    {
        Timber.c(a, (new StringBuilder()).append("Prepare ").append(receivedsnap.d()).toString(), new Object[0]);
        i = receivedsnap;
        k = snaprendererlistener;
        j = new CancelableCacheCompletedCallback(new com.snapchat.android.util.cache.Cache.OnCompleted(snaprendererlistener, receivedsnap) {

            final com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener a;
            final ReceivedSnap b;
            final ImageSnapRenderer c;

            public void a(Bitmap bitmap)
            {
                String s = ImageSnapRenderer.e();
                Object aobj[] = new Object[1];
                String s1;
                if (ImageSnapRenderer.a(c) == null)
                {
                    s1 = "?";
                } else
                {
                    s1 = ImageSnapRenderer.a(c).d();
                }
                aobj[0] = s1;
                Timber.c(s, "onBitmap loaded for %s", aobj);
                if (bitmap == null)
                {
                    a.a(com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode.b);
                    return;
                } else
                {
                    ImageSnapRenderer.b(c).setImageBitmap(bitmap);
                    int l = 1000 * (int)b.M();
                    a.a(l, bitmap.getWidth(), bitmap.getHeight());
                    return;
                }
            }

            
            {
                c = ImageSnapRenderer.this;
                a = snaprendererlistener;
                b = receivedsnap;
                super();
            }
        });
        receivedsnap.a(b, j);
    }

    public void b()
    {
        String s = a;
        Object aobj[] = new Object[1];
        String s1;
        if (i == null)
        {
            s1 = "?";
        } else
        {
            s1 = i.d();
        }
        aobj[0] = s1;
        Timber.c(s, "Stop %s", aobj);
        i = null;
        k = null;
        if (j != null)
        {
            j.a();
        }
    }

    public void c()
    {
        String s = a;
        Object aobj[] = new Object[1];
        String s1;
        if (i == null)
        {
            s1 = "?";
        } else
        {
            s1 = i.d();
        }
        aobj[0] = s1;
        Timber.c(s, "Show %s", aobj);
        h.setVisibility(0);
    }

    public void d()
    {
        String s = a;
        Object aobj[] = new Object[1];
        String s1;
        if (i == null)
        {
            s1 = "?";
        } else
        {
            s1 = i.d();
        }
        aobj[0] = s1;
        Timber.c(s, "Hide %s", aobj);
        h.setVisibility(8);
        d.a(h);
    }

}
