// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.layertype.LayerType;
import com.snapchat.android.ui.layertype.LayerTypeTranslator;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.ui.swipeimageview.ImageRenderer;
import com.snapchat.android.ui.swipeimageview.LayerTypeFactory;
import com.snapchat.android.ui.swipeimageview.OverlayRenderer;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageProvider;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.FrameTracking;
import com.snapchat.android.util.PhotoEffectTask;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.fps.FpsLogger;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.android.ui:
//            SwipeViewState

public class SwipeImageView extends FrameLayout
{

    protected ImageRenderer a;
    protected FilterPageProvider b;
    protected SwipeViewState c;
    protected OverlayRenderer d;
    private Bitmap e;
    private FrameLayout f;
    private AtomicBoolean g;
    private boolean h;
    private DisplayMetrics i;
    private FrameTracking j;

    public SwipeImageView(Context context)
    {
        this(context, null);
    }

    public SwipeImageView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, context.getResources().getDisplayMetrics(), new FrameLayout(context), LayerTypeFactory.a(ApiHelper.a()), new ImageRenderer(), new OverlayRenderer(), ((FrameTracking) (new FpsLogger())));
    }

    public SwipeImageView(Context context, AttributeSet attributeset, DisplayMetrics displaymetrics, FrameLayout framelayout, LayerType layertype, ImageRenderer imagerenderer, OverlayRenderer overlayrenderer, 
            FrameTracking frametracking)
    {
        super(context, attributeset);
        g = new AtomicBoolean();
        h = false;
        i = displaymetrics;
        f = framelayout;
        a = imagerenderer;
        d = overlayrenderer;
        j = frametracking;
        setWillNotDraw(false);
        setLayerType(layertype.a(), null);
        addView(f);
    }

    static AtomicBoolean a(SwipeImageView swipeimageview)
    {
        return swipeimageview.g;
    }

    static Bitmap b(SwipeImageView swipeimageview)
    {
        return swipeimageview.e;
    }

    private Paint b(Bitmap bitmap)
    {
        Paint paint = new Paint();
        paint.setShader(new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
        android.graphics.Matrix matrix = SnapMediaUtils.f(bitmap, i);
        paint.getShader().setLocalMatrix(matrix);
        return paint;
    }

    private FilterPage getCurrentPage()
    {
        return b.a(c.c());
    }

    public FilterPageType a(int k)
    {
        ThreadUtils.a();
        return b.b(k);
    }

    public void a()
    {
        g.set(true);
        PhotoEffectTask.a();
    }

    public void a(View view)
    {
        f.removeView(view);
    }

    public void a(FilterPage filterpage)
    {
        View view = filterpage.d();
        if (view != null)
        {
            f.addView(view);
        }
    }

    public boolean a(Bitmap bitmap)
    {
        boolean flag;
        if (e == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = bitmap;
        a.a(b(e));
        return flag;
    }

    public boolean a(MotionEvent motionevent)
    {
        return getCurrentPage().a(motionevent);
    }

    public void addView(View view)
    {
        super.addView(view);
        f.bringToFront();
    }

    public void b()
    {
        ThreadUtils.a();
        if (e == null)
        {
            Timber.d("SwipeImageView", "setBaseImage() has not been called; aborting.", new Object[0]);
            return;
        }
        Paint paint = b(e);
        for (Iterator iterator = b.a().iterator(); iterator.hasNext(); ((FilterPage)iterator.next()).a(paint)) { }
        FilterPage filterpage = getCurrentPage();
        boolean flag;
        if (!g.get())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        filterpage.a(flag, e);
        invalidate();
        (new AsyncTask(new ArrayList(b.a())) {

            final List a;
            final SwipeImageView b;

            protected Void a(Void avoid[])
            {
                Iterator iterator1 = a.iterator();
                while (iterator1.hasNext()) 
                {
                    FilterPage filterpage1 = (FilterPage)iterator1.next();
                    boolean flag1;
                    if (!SwipeImageView.a(b).get())
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    filterpage1.a(flag1, SwipeImageView.b(b));
                    b.postInvalidate();
                }
                return null;
            }

            protected Object doInBackground(Object aobj[])
            {
                return a((Void[])aobj);
            }

            
            {
                b = SwipeImageView.this;
                a = list;
                super();
            }
        }).executeOnExecutor(ScExecutors.c, new Void[0]);
    }

    public boolean c()
    {
        return c.c() != 0 || c.q();
    }

    public void d()
    {
        Iterator iterator = b.a().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            FilterPage filterpage = (FilterPage)iterator.next();
            if (filterpage != b.a(c.c()) && filterpage != b.a(c.e()) && filterpage != b.a(c.f()) && filterpage != b.a(c.d()))
            {
                View view = filterpage.d();
                if (view != null)
                {
                    view.setVisibility(4);
                }
            }
        } while (true);
    }

    public void e()
    {
        f.removeAllViews();
    }

    public FilterPageType getLeftSwipeFilterPageType()
    {
        return b.b(c.c(false));
    }

    public int getPageIndex()
    {
        return c.c();
    }

    public FilterPageType getRightSwipeFilterPageType()
    {
        return b.b(c.d(false));
    }

    public float getScrollOffset()
    {
        return (float)(c.g() % getWidth()) / (float)getWidth();
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        BusProvider.a().c(this);
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        BusProvider.a().b(this);
    }

    public void onDraw(Canvas canvas)
    {
        if (!h && e != null)
        {
            a.a(c, b, canvas, LayerTypeTranslator.a(getLayerType()));
        }
        d();
        d.a(c, b, i);
        j.a();
    }

    public void onMeasure(int k, int l)
    {
        boolean flag = true;
        super.onMeasure(k, l);
        boolean flag1;
        if (k > l)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (e != null)
        {
            boolean flag2;
            if (e.getWidth() > e.getHeight())
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            if (flag1 == flag2)
            {
                flag = false;
            }
            h = flag;
        } else
        {
            h = false;
        }
        setMeasuredDimension(k, l);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        getCurrentPage().d().dispatchTouchEvent(motionevent);
        return true;
    }

    public void setFilterPageProvider(FilterPageProvider filterpageprovider)
    {
        b = filterpageprovider;
    }

    public void setSwipeState(SwipeViewState swipeviewstate)
    {
        c = swipeviewstate;
    }
}
