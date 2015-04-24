// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.system.Clock;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            EditionCursorPagerAdapter

public class EditionViewerPager extends ViewPager
{
    class EditionViewerOnPageChangeListener extends android.support.v4.view.ViewPager.SimpleOnPageChangeListener
    {

        final EditionViewerPager a;

        public void onPageScrollStateChanged(int i1)
        {
            EditionViewerPager.a(a, i1);
            if (i1 == 2 && a.getCurrentItem() != EditionViewerPager.c(a))
            {
                a.b(EditionViewerPager.c(a));
            } else
            {
                if (i1 == 0 && a.getCurrentItem() != EditionViewerPager.c(a))
                {
                    a.b(EditionViewerPager.c(a));
                    return;
                }
                if (i1 == 1)
                {
                    EditionViewerPager.b(a, a.getCurrentItem());
                    return;
                }
            }
        }

        public void onPageSelected(int i1)
        {
            a.a(i1);
            DSnapView dsnapview = EditionViewerPager.a(a);
            if (dsnapview != null)
            {
                DSnapPage dsnappage = dsnapview.getDSnapPage();
                if (dsnappage != null)
                {
                    EditionViewerPager.b(a).a(dsnappage.d(), i1);
                    if (i1 == -1 + a.getAdapter().getCount() && dsnappage.k() == MediaState.f)
                    {
                        EditionViewerPager.b(a).a(dsnappage.d(), true);
                    }
                }
            }
        }

        private EditionViewerOnPageChangeListener()
        {
            a = EditionViewerPager.this;
            super();
        }

    }

    public static interface OnSwipeOutListener
    {

        public abstract void a(float f1);

        public abstract void a(SwipeToExitMethod swipetoexitmethod);

        public abstract void h();
    }

    public static final class SwipeToExitMethod extends Enum
    {

        public static final SwipeToExitMethod a;
        public static final SwipeToExitMethod b;
        public static final SwipeToExitMethod c;
        public static final SwipeToExitMethod d;
        public static final SwipeToExitMethod e;
        public static final SwipeToExitMethod f;
        private static final SwipeToExitMethod h[];
        private String g;

        public static SwipeToExitMethod valueOf(String s1)
        {
            return (SwipeToExitMethod)Enum.valueOf(com/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod, s1);
        }

        public static SwipeToExitMethod[] values()
        {
            return (SwipeToExitMethod[])h.clone();
        }

        public String a()
        {
            return g;
        }

        static 
        {
            a = new SwipeToExitMethod("SWIPE_DOWN", 0, "swipe_down");
            b = new SwipeToExitMethod("SWIPE_BEGINNING", 1, "swipe_beginning");
            c = new SwipeToExitMethod("SWIPE_END", 2, "swipe_end");
            d = new SwipeToExitMethod("ENTER_BACKGROUND", 3, "enter_background");
            e = new SwipeToExitMethod("BACK_PRESSED", 4, "back_pressed");
            f = new SwipeToExitMethod("AUTO_ADVANCE", 5, "auto_advance");
            SwipeToExitMethod aswipetoexitmethod[] = new SwipeToExitMethod[6];
            aswipetoexitmethod[0] = a;
            aswipetoexitmethod[1] = b;
            aswipetoexitmethod[2] = c;
            aswipetoexitmethod[3] = d;
            aswipetoexitmethod[4] = e;
            aswipetoexitmethod[5] = f;
            h = aswipetoexitmethod;
        }

        private SwipeToExitMethod(String s1, int i1, String s2)
        {
            super(s1, i1);
            g = s2;
        }
    }


    private DiscoverViewTrackingManager a;
    private Clock b;
    private OnSwipeOutListener c;
    private int d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private View p;
    private int q;
    private VelocityTracker r;
    private int s;
    private int t;
    private int u;
    private boolean v;
    private final Set w;
    private final Set x;

    public EditionViewerPager(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, new Clock(), DiscoverViewTrackingManager.a());
    }

    protected EditionViewerPager(Context context, AttributeSet attributeset, Clock clock, DiscoverViewTrackingManager discoverviewtrackingmanager)
    {
        super(context, attributeset);
        d = 0;
        e = false;
        f = false;
        g = false;
        i = false;
        v = false;
        w = new HashSet();
        x = new HashSet();
        setOffscreenPageLimit(2);
        setPageMargin(4);
        setPageMarginDrawable(0x7f080001);
        b = clock;
        a = discoverviewtrackingmanager;
        e();
    }

    static int a(EditionViewerPager editionviewerpager, int i1)
    {
        editionviewerpager.d = i1;
        return i1;
    }

    static DSnapView a(EditionViewerPager editionviewerpager)
    {
        return editionviewerpager.getCurrentView();
    }

    private void a(float f1, float f2)
    {
        k = f1;
        l = f2;
    }

    private void a(float f1, float f2, int i1)
    {
        if (i1 == 0 && f1 - k > n)
        {
            f = true;
            h = true;
        } else
        {
            if (i1 == -1 + getAdapter().getCount() && k - f1 > n && !b(f1, f2))
            {
                f = true;
                h = false;
                return;
            }
            if (f2 - l > o)
            {
                f = true;
                i = true;
                return;
            }
        }
    }

    private void a(MotionEvent motionevent)
    {
        DSnapView dsnapview = getCurrentView();
        if (dsnapview != null)
        {
            dsnapview.onTouchEvent(motionevent);
        }
    }

    static int b(EditionViewerPager editionviewerpager, int i1)
    {
        editionviewerpager.u = i1;
        return i1;
    }

    static DiscoverViewTrackingManager b(EditionViewerPager editionviewerpager)
    {
        return editionviewerpager.a;
    }

    private boolean b(float f1, float f2)
    {
        boolean flag = true;
        if (k - f1 <= (float)j || Math.abs(f2 - l) >= Math.abs(f1 - k))
        {
            flag = false;
        } else
        {
            DSnapView dsnapview = getCurrentView();
            if (dsnapview != null && dsnapview.c())
            {
                return false;
            }
        }
        return flag;
    }

    private float c(float f1, float f2)
    {
        if (h && !i)
        {
            return Math.min(1.0F, Math.max(0.0F, (f1 - k) / n));
        }
        if (!i)
        {
            return Math.min(1.0F, Math.max(0.0F, (k - f1) / n));
        } else
        {
            return Math.min(1.0F, Math.max(0.0F, (f2 - l) / o));
        }
    }

    static int c(EditionViewerPager editionviewerpager)
    {
        return editionviewerpager.u;
    }

    private DSnapView c(int i1)
    {
        return (DSnapView)((EditionCursorPagerAdapter)getAdapter()).a(this, i1);
    }

    private void e()
    {
        ViewConfiguration viewconfiguration = ViewConfiguration.get(getContext());
        j = ViewConfigurationCompat.getScaledPagingTouchSlop(viewconfiguration);
        q = viewconfiguration.getScaledMaximumFlingVelocity();
        s = (int)ViewUtils.a(700F, getContext());
        t = (int)ViewUtils.a(200F, getContext());
        setOnPageChangeListener(new EditionViewerOnPageChangeListener());
    }

    private void f()
    {
        n = (float)getWidth() / 8F;
        o = (float)getHeight() / 8F;
    }

    private boolean g()
    {
        VelocityTracker velocitytracker = r;
        velocitytracker.computeCurrentVelocity(1000, q);
        int i1 = (int)velocitytracker.getYVelocity();
        int j1 = (int)velocitytracker.getXVelocity();
        return j1 > s && h && !i || j1 < -s && !i || i1 > t;
    }

    private DSnapView getCurrentView()
    {
        return c(getCurrentItem());
    }

    private void h()
    {
        f = false;
        i = false;
        if (r != null)
        {
            r.recycle();
            r = null;
        }
    }

    private boolean i()
    {
        return e;
    }

    public void a()
    {
        EditionCursorPagerAdapter editioncursorpageradapter = (EditionCursorPagerAdapter)getAdapter();
        if (editioncursorpageradapter != null)
        {
            for (int i1 = 0; i1 < editioncursorpageradapter.getCount(); i1++)
            {
                DSnapView dsnapview = c(i1);
                if (dsnapview != null)
                {
                    dsnapview.f();
                }
            }

        }
    }

    public void a(int i1)
    {
        w.add(Integer.valueOf(i1));
        DSnapView dsnapview = c(i1);
        if (dsnapview != null)
        {
            dsnapview.b();
            DSnapPage dsnappage = dsnapview.getDSnapPage();
            if (dsnappage != null)
            {
                a.e(dsnappage.a());
            }
        }
    }

    public void addView(View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.addView(view, i1, layoutparams);
        if (!v)
        {
            v = true;
            post(new Runnable() {

                final EditionViewerPager a;

                public void run()
                {
                    a.a(a.getCurrentItem());
                }

            
            {
                a = EditionViewerPager.this;
                super();
            }
            });
        }
    }

    public void b()
    {
        if (getCurrentItem() == -1 + getAdapter().getCount())
        {
            if (c != null)
            {
                c.a(SwipeToExitMethod.f);
            }
            return;
        } else
        {
            setCurrentItem(1 + getCurrentItem());
            return;
        }
    }

    public void b(int i1)
    {
        DSnapView dsnapview = c(i1);
        if (dsnapview != null)
        {
            dsnapview.a();
            if (dsnapview.e())
            {
                x.add(Integer.valueOf(i1));
            }
        }
    }

    public boolean c()
    {
        DSnapView dsnapview = getCurrentView();
        return dsnapview != null && dsnapview.getCurrentPanel() == com.snapchat.android.discover.model.DSnapPage.Form.b.b();
    }

    public boolean d()
    {
        DSnapView dsnapview;
        if (d == 0)
        {
            if ((dsnapview = getCurrentView()) != null)
            {
                return dsnapview.g();
            }
        }
        return false;
    }

    public SwipeToExitMethod getExitMethod()
    {
        if (i)
        {
            return SwipeToExitMethod.a;
        }
        if (h)
        {
            return SwipeToExitMethod.b;
        } else
        {
            return SwipeToExitMethod.c;
        }
    }

    public int getNumLongformsViewed()
    {
        int i1 = getCurrentItem();
        DSnapView dsnapview = getCurrentView();
        if (dsnapview != null && dsnapview.e())
        {
            x.add(Integer.valueOf(i1));
        }
        return x.size();
    }

    public int getNumPagesViewed()
    {
        return w.size();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (!i()) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int i1;
        float f1;
        float f2;
        i1 = getCurrentItem();
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 56
    //                   0 83
    //                   1 56
    //                   2 111;
           goto _L3 _L4 _L3 _L5
_L3:
        if (f) goto _L1; else goto _L6
_L6:
        if (b(f1, f2)) goto _L8; else goto _L7
_L7:
        boolean flag = super.onInterceptTouchEvent(motionevent);
        return flag;
_L4:
        a(f1, f2);
        m = super.getScrollX();
        p = c(i1);
          goto _L3
_L5:
        if (p == null || !p.canScrollVertically(-1))
        {
            a(f1, f2, i1);
            if (f)
            {
                a(f1, f2);
            }
        }
          goto _L3
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Timber.d("EditionViewerPager", "Swallowing exception from ViewPager.onInterceptTouchEvent: %s", new Object[] {
            illegalargumentexception
        });
_L8:
        return false;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        f();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!i()) goto _L2; else goto _L1
_L1:
        a(motionevent);
_L4:
        return true;
_L2:
        if (g) goto _L4; else goto _L3
_L3:
        int i1;
        float f1;
        float f2;
        int j1;
        if (r == null)
        {
            r = VelocityTracker.obtain();
        }
        r.addMovement(motionevent);
        i1 = getCurrentItem();
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        j1 = super.getScrollX();
        motionevent.getAction();
        JVM INSTR tableswitch 1 3: default 96
    //                   1 233
    //                   2 130
    //                   3 291;
           goto _L5 _L6 _L7 _L8
_L5:
        if (f) goto _L4; else goto _L9
_L9:
        if (f || b(f1, f2)) goto _L11; else goto _L10
_L10:
        boolean flag = super.onTouchEvent(motionevent);
        return flag;
_L7:
        if (!f && m == (float)j1)
        {
            a(f1, f2, i1);
        }
        if (f)
        {
            float f3 = c(f1, f2);
            if (c != null)
            {
                c.a(f3);
            }
            if (f3 == 1.0F)
            {
                SwipeToExitMethod swipetoexitmethod = getExitMethod();
                h();
                if (c != null)
                {
                    c.a(swipetoexitmethod);
                }
                g = true;
            }
        }
          goto _L5
_L6:
        if (f && c != null)
        {
            if (g())
            {
                c.a(getExitMethod());
                g = true;
            } else
            {
                c.h();
            }
        }
        h();
          goto _L5
_L8:
        h();
        if (c != null)
        {
            c.h();
        }
          goto _L5
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Timber.d("EditionViewerPager", "Swallowing exception from ViewPager.onTouchEvent: %s", new Object[] {
            illegalargumentexception
        });
_L11:
        return false;
    }

    public void setCurrentItem(int i1)
    {
        setCurrentItem(i1, true);
    }

    public void setCurrentItem(int i1, boolean flag)
    {
        if (i1 != getCurrentItem())
        {
            b(getCurrentItem());
            super.setCurrentItem(i1, flag);
            a(i1);
        }
    }

    public void setCurrentPanel(int i1)
    {
        DSnapView dsnapview = getCurrentView();
        if (dsnapview != null)
        {
            dsnapview.b(i1);
        }
    }

    public void setLockedInPlace(boolean flag)
    {
        e = flag;
    }

    public void setOnSwipeOutListener(OnSwipeOutListener onswipeoutlistener)
    {
        c = onswipeoutlistener;
    }
}
