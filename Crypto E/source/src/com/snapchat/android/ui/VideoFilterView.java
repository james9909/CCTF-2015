// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.media.MediaFormat;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.VideoView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.handledexceptions.VideoPlaybackAbortFailedException;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TaskExecutor;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.task.VideoFilterRenderingTask;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import com.snapchat.videotranscoder.video.VideoExtractor;

// Referenced classes of package com.snapchat.android.ui:
//            SwipeVideoViewController

public class VideoFilterView extends SurfaceView
{
    class ProgressUpdateCallback
        implements com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback
    {

        final VideoFilterView a;
        private boolean b;

        public void a(int i1)
        {
            if (b)
            {
                VideoFilterView.f(a).a(VideoFilterView.a(a));
                b = false;
            }
            Timber.c("VideoFilterView", (new StringBuilder()).append("Rendering is ").append(Integer.toString(i1)).append("% complete").toString(), new Object[0]);
        }

        private ProgressUpdateCallback()
        {
            a = VideoFilterView.this;
            super();
            b = true;
        }

    }

    class RenderDoneCallBack
        implements com.snapchat.videotranscoder.task.Task.DoneCallback
    {

        final VideoFilterView a;

        public void a(com.snapchat.videotranscoder.task.Task.Status status)
        {
            if (status == com.snapchat.videotranscoder.task.Task.Status.g)
            {
                Timber.c("VideoFilterView", "Video Rendering finished successfully", new Object[0]);
                return;
            } else
            {
                Timber.e("VideoFilterView", (new StringBuilder()).append("Video rendering is done with error status: ").append(status).toString(), new Object[0]);
                return;
            }
        }

        private RenderDoneCallBack()
        {
            a = VideoFilterView.this;
            super();
        }

    }

    class SurfaceHolderCallBack
        implements android.view.SurfaceHolder.Callback
    {

        final VideoFilterView a;

        public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
        {
        }

        public void surfaceCreated(SurfaceHolder surfaceholder)
        {
            VideoFilterView.a(a, new InputSurface(surfaceholder.getSurface(), false));
            VideoFilterView.c(a);
        }

        public void surfaceDestroyed(SurfaceHolder surfaceholder)
        {
            Timber.c("VideoFilterView", "Surface destroyed!", new Object[0]);
            VideoFilterView.d(a).a();
            VideoFilterView.e(a);
        }

        private SurfaceHolderCallBack()
        {
            a = VideoFilterView.this;
            super();
        }

    }


    android.view.SurfaceHolder.Callback a;
    private Uri b;
    private int c;
    private TaskExecutor d;
    private VideoFilterRenderingTask e;
    private float f[];
    private SwipeVideoViewController g;
    private InputSurface h;
    private int i;
    private int j;
    private float k;
    private ExceptionReporter l;

    public VideoFilterView(Context context)
    {
        super(context);
        c = 1;
        d = null;
        e = null;
        f = (new ImageTransformationMatrix()).d();
        h = null;
        a = new SurfaceHolderCallBack();
        l = new ExceptionReporter();
    }

    public VideoFilterView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        e();
    }

    public VideoFilterView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = 1;
        d = null;
        e = null;
        f = (new ImageTransformationMatrix()).d();
        h = null;
        a = new SurfaceHolderCallBack();
        e();
        l = new ExceptionReporter();
    }

    static InputSurface a(VideoFilterView videofilterview, InputSurface inputsurface)
    {
        videofilterview.h = inputsurface;
        return inputsurface;
    }

    static VideoFilterRenderingTask a(VideoFilterView videofilterview)
    {
        return videofilterview.e;
    }

    private void a(int i1, int j1)
    {
        float f1 = (float)i1 / (float)j1;
        DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        int k1 = displaymetrics.widthPixels;
        int l1 = (int)(f1 * (float)k1);
        float f2 = (float)displaymetrics.heightPixels / (float)displaymetrics.widthPixels;
        if (f1 >= f2 || (double)Math.abs(f1 - f2) < 0.10000000000000001D)
        {
            Timber.c("VideoFilterView", (new StringBuilder()).append("Setting Aspect Ratio = ").append(k1).append(" x ").append(l1).toString(), new Object[0]);
            i = Math.min(k1, l1);
            j = Math.max(k1, l1);
        } else
        {
            if (f1 < f2)
            {
                Timber.c("VideoFilterView", (new StringBuilder()).append("Not setting Aspect Ratio. Video has a shorter aspectRatio of ").append(f1).append(" vs ").append(f2).toString(), new Object[0]);
            }
            if ((double)Math.abs(f1 - f2) >= 0.10000000000000001D)
            {
                Timber.c("VideoFilterView", (new StringBuilder()).append("Not setting Aspect Ratio. Video basically fits with a AR of ").append(f1).append(" vs ").append(f2).toString(), new Object[0]);
                return;
            }
        }
    }

    static TaskExecutor b(VideoFilterView videofilterview)
    {
        return videofilterview.d;
    }

    private void c()
    {
        if (e != null)
        {
            e.d();
            e = null;
        }
    }

    static void c(VideoFilterView videofilterview)
    {
        videofilterview.f();
    }

    static InputSurface d(VideoFilterView videofilterview)
    {
        return videofilterview.h;
    }

    private void d()
    {
        int i1 = -1;
        if (b != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        VideoExtractor videoextractor = new VideoExtractor(b.getPath(), null);
        MediaFormat mediaformat;
        int k1;
        mediaformat = videoextractor.b();
        k1 = mediaformat.getInteger("width");
        int j1 = k1;
        int l1 = mediaformat.getInteger("height");
        i1 = l1;
        if (videoextractor == null)
        {
            break; /* Loop/switch isn't completed */
        }
        videoextractor.f();
_L4:
        if (j1 > 0 && i1 > 0)
        {
            a(j1, i1);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        throw new SetupException("Could not create video extractor.");
        TranscodingException transcodingexception;
        transcodingexception;
        videoextractor = null;
        j1 = i1;
_L7:
        Timber.d("VideoFilterView", (new StringBuilder()).append("Failed to get video dimensions: ").append(transcodingexception.getMessage()).toString(), new Object[0]);
        if (videoextractor != null)
        {
            videoextractor.f();
        } else
        {
            throw new SetupException("Could not create video extractor.");
        }
          goto _L4
        Exception exception;
        exception;
        videoextractor = null;
_L6:
        if (videoextractor != null)
        {
            videoextractor.f();
            throw exception;
        } else
        {
            throw new SetupException("Could not create video extractor.");
        }
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        transcodingexception;
        j1 = i1;
          goto _L7
        transcodingexception;
          goto _L7
    }

    private void e()
    {
        i = 0;
        j = 0;
        getHolder().addCallback(a);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        d = new TaskExecutor();
    }

    static void e(VideoFilterView videofilterview)
    {
        videofilterview.c();
    }

    static SwipeVideoViewController f(VideoFilterView videofilterview)
    {
        return videofilterview.g;
    }

    private void f()
    {
        if (b == null || h == null)
        {
            return;
        } else
        {
            e = new VideoFilterRenderingTask(new VideoMediaSource(b.getPath(), f, null, com.snapchat.videotranscoder.task.VideoMediaSource.VideoChannelSource.a, com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.a), com.snapchat.videotranscoder.video.ShaderText.Type.a, com.snapchat.videotranscoder.video.ShaderText.Type.a, h);
            e.a(k);
            return;
        }
    }

    private boolean g()
    {
        return e != null;
    }

    private void setTransformationMatrix(float af[])
    {
        f = af;
    }

    public void a()
    {
        if (e != null)
        {
            g.a();
            d.a(e);
            try
            {
                e.c();
            }
            catch (InterruptedException interruptedexception)
            {
                l.b(new VideoPlaybackAbortFailedException(interruptedexception.getMessage()));
                throw new RuntimeException((new StringBuilder()).append("Could not release all components for video rendering! Error ").append(interruptedexception.getMessage()).toString());
            }
            e = null;
        }
    }

    public void a(Uri uri, float af[])
    {
        setTransformationMatrix(af);
        b = uri;
        d();
        f();
        requestLayout();
        invalidate();
    }

    public void b()
    {
        if (c == 2 || b == null)
        {
            return;
        }
        if (!g())
        {
            postDelayed(new Runnable() {

                final VideoFilterView a;

                public void run()
                {
                    a.b();
                }

            
            {
                a = VideoFilterView.this;
                super();
            }
            }, 25L);
            return;
        } else
        {
            (new Thread(new Runnable() {

                final VideoFilterView a;

                public void run()
                {
                    VideoFilterView.b(a).a(VideoFilterView.a(a), a. new RenderDoneCallBack(), a. new ProgressUpdateCallback());
                }

            
            {
                a = VideoFilterView.this;
                super();
            }
            })).start();
            c = 2;
            return;
        }
    }

    public VideoFilterRenderingTask getFilterRenderingTask()
    {
        return e;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(android/widget/VideoView.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(android/widget/VideoView.getName());
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = getDefaultSize(i, i1);
        int l1 = getDefaultSize(j, j1);
        if (i > 0 && j > 0)
        {
            setMeasuredDimension(i, j);
            return;
        } else
        {
            setMeasuredDimension(k1, l1);
            return;
        }
    }

    public void setSwipeVideoViewController(SwipeVideoViewController swipevideoviewcontroller)
    {
        g = swipevideoviewcontroller;
    }

    public void setVolume(float f1)
    {
        k = f1;
        if (e != null)
        {
            e.a(k);
        }
    }
}
