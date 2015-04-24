// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ui.SwipeImageViewAnalytics;
import com.snapchat.android.camera.transcoding.VideoFilterPreferenceWrapper;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.ui.caption.CaptionAnalyticData;
import com.snapchat.android.ui.caption.CaptionTypeEnums;
import com.snapchat.android.ui.caption.SnapCaptionView;
import com.snapchat.android.ui.caption.SnapCaptionViewFactory;
import com.snapchat.android.ui.caption.SnapCaptionViewInterface;
import com.snapchat.android.ui.caption.VanillaCaptionView;
import com.snapchat.android.ui.snapeditormotion.SwipeActionController;
import com.snapchat.android.ui.snapeditormotion.TouchState;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.ui.swipeimageview.SwipeImageViewPageController;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageStore;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.DrawingUtils;
import com.snapchat.android.util.PhotoEffectTask;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.SnapTransitionDrawable;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.EnableFiltersEvent;
import com.snapchat.android.util.eventbus.HelloWorldEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.snapchat.videotranscoder.task.SetupException;
import com.squareup.otto.Bus;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

// Referenced classes of package com.snapchat.android.ui:
//            SwipeDispatcher, SwipeViewState, SwipePageController, SwipeImageView, 
//            SwipeController, SwipeVideoViewController, LegacyCanvasView, SnapVideoView, 
//            VideoFilterView, CanvasViewBase, KarelView

public class SnapEditorView extends FrameLayout
    implements SwipeController.OnScrollListener, SwipeDispatcher, SnapCaptionViewInterface
{
    public class SnapEditorViewBundle
    {

        final SnapEditorView a;
        private int b;
        private int c;
        private Mediabryo d;
        private int e;

        static int a(SnapEditorViewBundle snapeditorviewbundle, int i1)
        {
            snapeditorviewbundle.b = i1;
            return i1;
        }

        static Mediabryo a(SnapEditorViewBundle snapeditorviewbundle)
        {
            return snapeditorviewbundle.d;
        }

        static Mediabryo a(SnapEditorViewBundle snapeditorviewbundle, Mediabryo mediabryo)
        {
            snapeditorviewbundle.d = mediabryo;
            return mediabryo;
        }

        static int b(SnapEditorViewBundle snapeditorviewbundle)
        {
            return snapeditorviewbundle.b;
        }

        static int b(SnapEditorViewBundle snapeditorviewbundle, int i1)
        {
            snapeditorviewbundle.c = i1;
            return i1;
        }

        static int c(SnapEditorViewBundle snapeditorviewbundle)
        {
            return snapeditorviewbundle.c;
        }

        static int c(SnapEditorViewBundle snapeditorviewbundle, int i1)
        {
            snapeditorviewbundle.e = i1;
            return i1;
        }

        static int d(SnapEditorViewBundle snapeditorviewbundle)
        {
            return snapeditorviewbundle.e;
        }

        public SnapEditorViewBundle()
        {
            a = SnapEditorView.this;
            super();
        }
    }

    public static interface SnapEditorViewInterface
    {

        public abstract boolean h();

        public abstract int l();

        public abstract boolean m();
    }


    private Mediabryo A;
    private Set B;
    protected final SwipeImageView a;
    protected final SwipeImageViewPageController b;
    protected final SwipeController c;
    protected final SwipeActionController d;
    private SnapCaptionView e;
    private final CanvasViewBase f;
    private final ImageView g;
    private final SwipeViewState h;
    private final Bus i;
    private final VideoFilterPreferenceWrapper j;
    private final SwipePageController k;
    private final FrameLayout l;
    private final FrameLayout m;
    private SnapVideoView n;
    private VideoFilterView o;
    private SwipeVideoViewController p;
    private DisplayMetrics q;
    private final FilterPageStore r;
    private SwipeImageViewAnalytics s;
    private Bitmap t;
    private Bitmap u;
    private boolean v;
    private MediaPlayer w;
    private final int x;
    private SnapEditorViewInterface y;
    private CaptionTypeEnums z;

    public SnapEditorView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, BusProvider.a(), VideoFilterPreferenceWrapper.a());
    }

    protected SnapEditorView(Context context, AttributeSet attributeset, Bus bus, VideoFilterPreferenceWrapper videofilterpreferencewrapper)
    {
        super(context, attributeset);
        v = true;
        z = CaptionTypeEnums.a;
        B = new CopyOnWriteArraySet();
        i = bus;
        i.c(this);
        j = videofilterpreferencewrapper;
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f04007d, this, true);
        m = (FrameLayout)findViewById(0x7f0a02bc);
        e = new VanillaCaptionView(context);
        m.addView(e);
        e.setInterface(this);
        q = context.getResources().getDisplayMetrics();
        r = new FilterPageStore();
        h = new SwipeViewState();
        k = new SwipePageController(r, h);
        a = (SwipeImageView)findViewById(0x7f0a02bb);
        c = new SwipeController(k, a, h);
        c.a(this);
        a.setFilterPageProvider(r);
        a.setSwipeState(h);
        b = new SwipeImageViewPageController(context, a, r);
        b.a();
        c.a(b);
        i.c(b);
        p = new SwipeVideoViewController(r, h);
        c.a(p);
        l = (FrameLayout)findViewById(0x7f0a02ba);
        g = new ImageView(context);
        g.setVisibility(8);
        a.addView(g);
        f = new LegacyCanvasView(context);
        a.addView(f);
        x = ViewConfiguration.get(context).getScaledTouchSlop();
        d = new SwipeActionController(x, this, new TouchState());
    }

    static MediaPlayer a(SnapEditorView snapeditorview, MediaPlayer mediaplayer)
    {
        snapeditorview.w = mediaplayer;
        return mediaplayer;
    }

    static ImageView a(SnapEditorView snapeditorview)
    {
        return snapeditorview.g;
    }

    private void a(Bitmap bitmap, boolean flag)
    {
        a(bitmap, flag, false);
    }

    private void a(Bitmap bitmap, boolean flag, boolean flag1)
    {
        if (bitmap == null)
        {
            throw new NullPointerException();
        }
        boolean flag2;
        if (u == null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag2 || flag || flag1)
        {
            removeView(l);
            t = bitmap;
            u = SnapMediaUtils.a(t, getContext());
            if (flag2 || flag)
            {
                if (a.a(u))
                {
                    b.b();
                    b.a(0);
                } else
                {
                    a.b();
                }
            }
            if (flag1)
            {
                DisplayMetrics displaymetrics = getContext().getResources().getDisplayMetrics();
                Bitmap bitmap1 = SnapMediaUtils.c(u, displaymetrics);
                Drawable adrawable[] = new Drawable[2];
                adrawable[0] = new ColorDrawable(0);
                adrawable[1] = new BitmapDrawable(getResources(), bitmap1);
                SnapTransitionDrawable snaptransitiondrawable = new SnapTransitionDrawable(adrawable, bitmap1) {

                    final Bitmap a;
                    final SnapEditorView b;

                    public void a()
                    {
                        b.a.a(a);
                        SnapEditorView.a(b).setVisibility(8);
                    }

            
            {
                b = SnapEditorView.this;
                a = bitmap;
                super(adrawable);
            }
                };
                g.setImageDrawable(snaptransitiondrawable);
                g.setVisibility(0);
                snaptransitiondrawable.startTransition(800);
                return;
            }
        }
    }

    private void a(MediaPlayer mediaplayer)
    {
        float f1 = (float)mediaplayer.getVideoHeight() / (float)mediaplayer.getVideoWidth();
        DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        int i1 = displaymetrics.widthPixels;
        int j1 = (int)(f1 * (float)i1);
        float f2 = (float)displaymetrics.heightPixels / (float)displaymetrics.widthPixels;
        if (f1 >= f2 || (double)Math.abs(f1 - f2) < 0.10000000000000001D)
        {
            Timber.c("SnapEditorView", (new StringBuilder()).append("Setting Aspect Ratio = ").append(i1).append(" x ").append(j1).toString(), new Object[0]);
            n.setVideoAspect(i1, j1);
        } else
        {
            if (f1 < f2)
            {
                Timber.c("SnapEditorView", (new StringBuilder()).append("Not setting AR. Video has a shorter aspectRatio of ").append(f1).append(" vs ").append(f2).toString(), new Object[0]);
            }
            if ((double)Math.abs(f1 - f2) >= 0.10000000000000001D)
            {
                Timber.c("SnapEditorView", (new StringBuilder()).append("Not setting AR. Video basically fits with a AR of ").append(f1).append(" vs ").append(f2).toString(), new Object[0]);
                return;
            }
        }
    }

    private void a(Bundle bundle, View view, boolean flag)
    {
        ViewTreeObserver viewtreeobserver = getViewTreeObserver();
        viewtreeobserver.addOnPreDrawListener(new android.view.ViewTreeObserver.OnPreDrawListener(bundle, flag, viewtreeobserver, view) {

            final Bundle a;
            final boolean b;
            final ViewTreeObserver c;
            final View d;
            final SnapEditorView e;

            public boolean onPreDraw()
            {
                SnapEditorView.d(e).a(a, b);
                if (c.isAlive())
                {
                    c.removeOnPreDrawListener(this);
                }
                SnapEditorView.e(e).removeView(d);
                return false;
            }

            
            {
                e = SnapEditorView.this;
                a = bundle;
                b = flag;
                c = viewtreeobserver;
                d = view;
                super();
            }
        });
    }

    static void a(SnapEditorView snapeditorview, Bitmap bitmap, boolean flag, boolean flag1)
    {
        snapeditorview.a(bitmap, flag, flag1);
    }

    static SnapVideoView b(SnapEditorView snapeditorview)
    {
        return snapeditorview.n;
    }

    private void b(Snapbryo snapbryo)
    {
        b.a(1);
        if (o != null)
        {
            o.setVisibility(0);
            try
            {
                o.a(snapbryo.I(), snapbryo.ac());
            }
            catch (SetupException setupexception)
            {
                Timber.e("SnapEditorView", setupexception.getMessage(), new Object[0]);
                c(snapbryo);
                return;
            }
            Timber.c("SnapEditorView", "SnapPreviewFragment Editor playing video 1", new Object[0]);
            o.setSwipeVideoViewController(p);
            o.b();
        }
    }

    static void b(SnapEditorView snapeditorview, MediaPlayer mediaplayer)
    {
        snapeditorview.a(mediaplayer);
    }

    private boolean b(MotionEvent motionevent)
    {
        int i1 = motionevent.getAction();
        if (B.contains(Integer.valueOf(motionevent.getPointerId(0))))
        {
            if (i1 == 1 || i1 == 3)
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf(motionevent.getPointerId(0));
                Timber.c("SnapEditorView", "Remove pointerId %d", aobj1);
                B.remove(Integer.valueOf(motionevent.getPointerId(0)));
            }
            return true;
        }
        if (i1 == 0 && e.b(motionevent))
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(motionevent.getPointerId(0));
            Timber.c("SnapEditorView", "Add pointerId %d", aobj);
            B.add(Integer.valueOf(motionevent.getPointerId(0)));
            return true;
        } else
        {
            return false;
        }
    }

    private void c(Snapbryo snapbryo)
    {
        if (o != null)
        {
            o.setVisibility(4);
        }
        if (n != null)
        {
            n.setVisibility(0);
            n.setVideoURI(snapbryo.I());
            n.setMediaController(null);
            n.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

                final SnapEditorView a;

                public void onPrepared(MediaPlayer mediaplayer)
                {
                    SnapEditorView.a(a, mediaplayer);
                    mediaplayer.setLooping(true);
                    mediaplayer.setOnSeekCompleteListener(new android.media.MediaPlayer.OnSeekCompleteListener(this) {

                        final _cls2 a;

                        public void onSeekComplete(MediaPlayer mediaplayer)
                        {
                        }

            
            {
                a = _pcls2;
                super();
            }
                    });
                    SnapEditorView.b(a, mediaplayer);
                    SnapEditorView.b(a).requestLayout();
                    a.a(SnapEditorView.c(a));
                }

            
            {
                a = SnapEditorView.this;
                super();
            }
            });
            n.start();
        }
    }

    static boolean c(SnapEditorView snapeditorview)
    {
        return snapeditorview.v;
    }

    static SnapCaptionView d(SnapEditorView snapeditorview)
    {
        return snapeditorview.e;
    }

    static FrameLayout e(SnapEditorView snapeditorview)
    {
        return snapeditorview.m;
    }

    private void setVolumeMediaPlayer(boolean flag)
    {
        if (w == null)
        {
            return;
        }
        if (flag)
        {
            try
            {
                w.setVolume(1.0F, 1.0F);
                return;
            }
            catch (IllegalStateException illegalstateexception)
            {
                w = null;
            }
            return;
        }
        w.setVolume(0.0F, 0.0F);
        return;
    }

    private void setVolumeVideoFilterView(boolean flag)
    {
label0:
        {
            if (o != null)
            {
                if (!flag)
                {
                    break label0;
                }
                o.setVolume(1.0F);
            }
            return;
        }
        o.setVolume(0.0F);
    }

    public Bitmap a(Context context)
    {
        f.destroyDrawingCache();
        ThreadUtils.a();
        if (u != null || f.getNumberOfStrokes() > 0 || !e.j() || a.c() || a.findViewById(0x7f0a0001) != null)
        {
            int i1 = getWidth();
            int j1 = getHeight();
            View aview[] = new View[2];
            aview[0] = a;
            aview[1] = e;
            Bitmap bitmap = DrawingUtils.a(i1, j1, aview);
            if (bitmap != null)
            {
                return SnapMediaUtils.b(bitmap, A.a(context));
            }
        }
        return null;
    }

    public SnapEditorViewBundle a()
    {
        SnapEditorViewBundle snapeditorviewbundle = new SnapEditorViewBundle();
        SnapEditorViewBundle.a(snapeditorviewbundle, k.b());
        SnapEditorViewBundle.b(snapeditorviewbundle, k.a());
        SnapEditorViewBundle.a(snapeditorviewbundle, A);
        SnapEditorViewBundle.c(snapeditorviewbundle, z.ordinal());
        return snapeditorviewbundle;
    }

    public void a(float f1)
    {
        c.a(f1);
    }

    protected void a(LayoutInflater layoutinflater, ViewGroup viewgroup, boolean flag)
    {
        if (flag)
        {
            layoutinflater.inflate(0x7f040090, viewgroup);
            return;
        } else
        {
            layoutinflater.inflate(0x7f040091, viewgroup);
            return;
        }
    }

    public void a(MotionEvent motionevent)
    {
        if (a.a(motionevent))
        {
            a.dispatchTouchEvent(motionevent);
            return;
        }
        if (e.g())
        {
            e.f();
            return;
        } else
        {
            e.a(motionevent);
            return;
        }
    }

    public void a(Snapbryo snapbryo)
    {
        l.setVisibility(0);
        l.removeAllViews();
        boolean flag = j.b();
        a((LayoutInflater)getContext().getSystemService("layout_inflater"), ((ViewGroup) (l)), flag);
        if (flag)
        {
            o = getVideoFilterView();
            b(snapbryo);
            return;
        } else
        {
            n = getSnapVideoView();
            c(snapbryo);
            return;
        }
    }

    public void a(SnapEditorViewBundle snapeditorviewbundle)
    {
        if (snapeditorviewbundle != null)
        {
            setMediabryo(SnapEditorViewBundle.a(snapeditorviewbundle));
            k.b(SnapEditorViewBundle.b(snapeditorviewbundle));
            k.a(SnapEditorViewBundle.c(snapeditorviewbundle));
            z = CaptionTypeEnums.values()[SnapEditorViewBundle.d(snapeditorviewbundle)];
            if (z != CaptionTypeEnums.a)
            {
                b(false);
                return;
            }
        }
    }

    public void a(SwipeImageView swipeimageview)
    {
    }

    public void a(SwipeImageView swipeimageview, boolean flag)
    {
        if (flag)
        {
            a(r.a(k.a()));
        }
    }

    protected void a(FilterPage filterpage)
    {
        if (s == null)
        {
            return;
        }
        if (h.b())
        {
            s.b(filterpage);
            return;
        } else
        {
            s.a(filterpage);
            return;
        }
    }

    public void a(String s1)
    {
        PhotoEffectTask photoeffecttask = new PhotoEffectTask(s1, getContext()) {

            final SnapEditorView a;

            public void a(Bitmap bitmap)
            {
                if (bitmap == null)
                {
                    return;
                } else
                {
                    SnapEditorView.a(a, bitmap, false, true);
                    return;
                }
            }

            public void onPostExecute(Object obj)
            {
                a((Bitmap)obj);
            }

            
            {
                a = SnapEditorView.this;
                super(s1, context);
            }
        };
        Bitmap abitmap[] = new Bitmap[1];
        abitmap[0] = t;
        photoeffecttask.execute(abitmap);
    }

    public void a(boolean flag)
    {
        v = flag;
        if (j.b())
        {
            setVolumeVideoFilterView(flag);
            return;
        } else
        {
            setVolumeMediaPlayer(flag);
            return;
        }
    }

    public void a(boolean flag, float f1)
    {
        c.a(flag, f1, q.widthPixels);
    }

    public void b()
    {
        i.b(this);
        i.b(b);
        b.c();
        r.d();
        f.b();
        t = null;
        u = null;
    }

    public void b(SwipeImageView swipeimageview)
    {
    }

    public void b(boolean flag)
    {
        Bundle bundle = e.a();
        SnapCaptionView snapcaptionview = e;
        if (flag)
        {
            i.b(e);
            z = CaptionTypeEnums.values()[(1 + z.ordinal()) % CaptionTypeEnums.values().length];
        }
        e = SnapCaptionViewFactory.a(z, getContext());
        if (flag)
        {
            e.b(true);
        }
        i.c(e);
        e.setInterface(this);
        a(bundle, snapcaptionview, flag);
        m.addView(e);
    }

    public void c()
    {
        if (o != null && o.getFilterRenderingTask() != null)
        {
            o.a();
        }
        if (n != null && n.isPlaying())
        {
            n.stopPlayback();
        }
    }

    public boolean d()
    {
        return k.c();
    }

    public void e()
    {
        c.b(q.widthPixels);
    }

    public boolean f()
    {
        return e.g();
    }

    public CanvasViewBase getCanvasView()
    {
        return f;
    }

    public CaptionAnalyticData getCaptionAnalyticsDetails()
    {
        return e.getCaptionAnalyticsDetails();
    }

    public String getCaptionStyleDescription()
    {
        if (e.j())
        {
            return "0";
        }
        static class _cls5
        {

            static final int a[];

            static 
            {
                a = new int[CaptionTypeEnums.values().length];
                try
                {
                    a[CaptionTypeEnums.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[CaptionTypeEnums.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[CaptionTypeEnums.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls5.a[z.ordinal()])
        {
        default:
            return "Index out of bounds D:";

        case 1: // '\001'
            return "1";

        case 2: // '\002'
            return "2";

        case 3: // '\003'
            return "3";
        }
    }

    public CaptionTypeEnums getCaptionType()
    {
        return z;
    }

    public SnapCaptionView getCaptionView()
    {
        return e;
    }

    public int getPreviewCloseButtonBottom()
    {
        return y.l();
    }

    protected SnapVideoView getSnapVideoView()
    {
        return (SnapVideoView)findViewById(0x7f0a0317);
    }

    public FilterPageType getSwipeFilterType()
    {
        return a.a(a.getPageIndex());
    }

    public com.snapchat.videotranscoder.video.ShaderText.Type getVideoFilter()
    {
        if (o != null && o.getFilterRenderingTask() != null)
        {
            return p.b();
        } else
        {
            return null;
        }
    }

    protected VideoFilterView getVideoFilterView()
    {
        return (VideoFilterView)findViewById(0x7f0a0316);
    }

    public void onEnableFiltersEvent(EnableFiltersEvent enablefiltersevent)
    {
        h.b(0);
        h.c(0);
        h.d(0);
        h.a(0);
        b.b();
        b.a(A.b());
    }

    public void onHelloWorldEvent(HelloWorldEvent helloworldevent)
    {
        View view = a.findViewById(0x7f0a0001);
        if (view == null)
        {
            Context context = getContext();
            KarelView karelview = new KarelView(context);
            karelview.setId(0x7f0a0001);
            a.addView(karelview);
            AlertDialogUtils.a(0x7f0c01fc, context);
            return;
        } else
        {
            a.removeView(view);
            return;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        while (y != null && y.h() || y != null && y.m()) 
        {
            return false;
        }
        if (f.getDrawingEnabled())
        {
            f.dispatchTouchEvent(motionevent);
            return true;
        }
        if (b(motionevent) && getSwipeFilterType() != FilterPageType.e)
        {
            e.dispatchTouchEvent(motionevent);
            return true;
        }
        if (!e.h())
        {
            d.a(motionevent);
        }
        return true;
    }

    public void setCaptionText(String s1)
    {
        e.setText(s1);
    }

    public void setInterface(SnapEditorViewInterface snapeditorviewinterface)
    {
        y = snapeditorviewinterface;
    }

    public void setMediabryo(Mediabryo mediabryo)
    {
        boolean flag;
        if (e != null && e.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        A = mediabryo;
        if (mediabryo.G() != null)
        {
            a(mediabryo.G(), flag);
            return;
        } else
        {
            a((Snapbryo)mediabryo);
            return;
        }
    }

    public void setSwipeImageViewAnalytics(SwipeImageViewAnalytics swipeimageviewanalytics)
    {
        s = swipeimageviewanalytics;
    }

    public void setSwipeImageViewOnScrollListener(SwipeController.OnScrollListener onscrolllistener)
    {
        c.a(onscrolllistener);
    }
}
