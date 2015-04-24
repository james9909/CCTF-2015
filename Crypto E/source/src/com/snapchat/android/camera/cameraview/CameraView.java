// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameraview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.SnapCaptureAnalytics;
import com.snapchat.android.camera.PhotoBitmapProvider;
import com.snapchat.android.camera.TakePhotoCallback;
import com.snapchat.android.camera.util.PortraitDisplayMetrics;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.bitmap.BitmapPool;

public class CameraView extends RelativeLayout
    implements PhotoBitmapProvider
{
    public class ScaleFactorPair
    {

        float a;
        float b;
        final CameraView c;

        ScaleFactorPair(float f, float f1)
        {
            c = CameraView.this;
            super();
            a = f;
            b = f1;
        }
    }

    public static interface SurfaceReadyCallback
    {

        public abstract void a(SurfaceTexture surfacetexture);

        public abstract void a(Surface surface);
    }


    public SurfaceView a;
    public TextureView b;
    private FrameLayout c;
    private final SnapCaptureAnalytics d = SnapCaptureAnalytics.a();
    private final CameraEventAnalytics e = CameraEventAnalytics.a();

    public CameraView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new FrameLayout(getContext());
        c.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        addView(c);
    }

    static FrameLayout a(CameraView cameraview)
    {
        return cameraview.c;
    }

    protected static boolean a(double d1, double d2)
    {
        return d1 < d2;
    }

    private Bitmap b(Resolution resolution)
    {
        int i;
        int j;
        Bitmap bitmap;
        if (resolution == null || b == null)
        {
            return null;
        }
        setDrawingCacheEnabled(true);
        i = resolution.b();
        j = resolution.a();
        android.graphics.BitmapFactory.Options options = SnapMediaUtils.b(new PortraitDisplayMetrics(), i, j);
        bitmap = BitmapPool.a().a(options, true);
        if (bitmap == null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap3 = b.getBitmap(bitmap);
        Bitmap bitmap1 = bitmap3;
_L4:
        setDrawingCacheEnabled(false);
        return bitmap1;
_L2:
        Bitmap bitmap2 = b.getBitmap(i, j);
        bitmap1 = bitmap2;
        continue; /* Loop/switch isn't completed */
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        System.gc();
        bitmap1 = b.getBitmap(i, j);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void setTextureViewParameters(SurfaceReadyCallback surfacereadycallback)
    {
        b.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        b.setSurfaceTextureListener(new android.view.TextureView.SurfaceTextureListener(surfacereadycallback) {

            final SurfaceReadyCallback a;
            final CameraView b;

            public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
            {
                Timber.c("CameraView", "Camera View: Surface texture available", new Object[0]);
                a.a(surfacetexture);
            }

            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
            {
                Timber.c("CameraView", "Surface Destroyed", new Object[0]);
                return true;
            }

            public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
            {
            }

            public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
            {
            }

            
            {
                b = CameraView.this;
                a = surfacereadycallback;
                super();
            }
        });
    }

    public SurfaceTexture a(SurfaceReadyCallback surfacereadycallback)
    {
        if (b == null)
        {
            b = new TextureView(getContext());
            c.addView(b);
        }
        setTextureViewParameters(surfacereadycallback);
        return b.getSurfaceTexture();
    }

    protected android.widget.FrameLayout.LayoutParams a(Resolution resolution)
    {
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(resolution.a(), resolution.b());
        layoutparams.gravity = 17;
        return layoutparams;
    }

    protected ScaleFactorPair a(float f, float f1)
    {
        if (a(f, f1))
        {
            return new ScaleFactorPair(1.0F, f1 / f);
        } else
        {
            return new ScaleFactorPair(f / f1, 1.0F);
        }
    }

    public void a()
    {
        if (!ApiHelper.a)
        {
            if (a != null)
            {
                post(new Runnable() {

                    final CameraView a;

                    public void run()
                    {
                        CameraView.a(a).removeView(a.a);
                        a.a = null;
                    }

            
            {
                a = CameraView.this;
                super();
            }
                });
            }
            if (b != null)
            {
                b.setVisibility(0);
                return;
            }
        }
    }

    public void a(Resolution resolution, TakePhotoCallback takephotocallback)
    {
        e.b(false);
        d.a("captureTextureViewPreviewFrame");
        Bitmap bitmap = b(resolution);
        d.b("captureTextureViewPreviewFrame");
        if (bitmap != null)
        {
            Bitmap bitmap1 = SnapMediaUtils.a(bitmap, new PortraitDisplayMetrics());
            if (bitmap1 != null)
            {
                takephotocallback.a(bitmap1);
            }
        }
    }

    public void a(Resolution resolution, PortraitDisplayMetrics portraitdisplaymetrics)
    {
        ScaleFactorPair scalefactorpair = a((float)portraitdisplaymetrics.heightPixels / (float)portraitdisplaymetrics.widthPixels, (float)resolution.c());
        b.setScaleX(scalefactorpair.a);
        b.setScaleY(scalefactorpair.b);
    }

    public void b(SurfaceReadyCallback surfacereadycallback)
    {
        a = new SurfaceView(getContext());
        c.addView(a);
        a.getHolder().addCallback(new android.view.SurfaceHolder.Callback(surfacereadycallback) {

            final SurfaceReadyCallback a;
            final CameraView b;

            public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
            {
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(j);
                aobj[1] = Integer.valueOf(k);
                Timber.c("CameraView", "Surface Changed to [%d x %d]", aobj);
            }

            public void surfaceCreated(SurfaceHolder surfaceholder)
            {
                a.a(surfaceholder.getSurface());
            }

            public void surfaceDestroyed(SurfaceHolder surfaceholder)
            {
                Timber.c("CameraView", "Surface Destroyed", new Object[0]);
            }

            
            {
                b = CameraView.this;
                a = surfacereadycallback;
                super();
            }
        });
        a.setVisibility(0);
        b.setVisibility(8);
    }

    public void b(Resolution resolution, PortraitDisplayMetrics portraitdisplaymetrics)
    {
        if (a == null)
        {
            return;
        } else
        {
            Resolution resolution1 = c(resolution, portraitdisplaymetrics);
            a.setLayoutParams(a(resolution1));
            return;
        }
    }

    protected Resolution c(Resolution resolution, PortraitDisplayMetrics portraitdisplaymetrics)
    {
        int i = resolution.b();
        int j = resolution.a();
        int k = portraitdisplaymetrics.heightPixels;
        int l = portraitdisplaymetrics.widthPixels;
        double d1 = (double)portraitdisplaymetrics.heightPixels / (double)portraitdisplaymetrics.widthPixels;
        if (a(resolution.c(), d1))
        {
            k = (int)((double)j * ((double)l / (double)i));
        } else
        {
            l = (int)((double)i * ((double)k / (double)j));
        }
        return new Resolution(l, k);
    }
}
