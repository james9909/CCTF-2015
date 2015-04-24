// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.discover.analytics.DiscoverAnalytics;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable;
import com.snapchat.android.discover.ui.CloseChannelAnimationView;
import com.snapchat.android.discover.util.eventbus.EditionClosedEvent;
import com.snapchat.android.util.ScreenRotationObserver;
import com.snapchat.android.util.bitmap.BitmapRecycling;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.ChangeWindowMarginEvent;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.eventbus.SoftNavigationBarEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.system.Clock;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            EditionViewerPager, EditionCursorPagerAdapter

public class EditionViewerFragment extends SnapchatFragment
    implements android.support.v4.app.LoaderManager.LoaderCallbacks, com.snapchat.android.discover.ui.CloseChannelAnimationView.CloseChannelListener, EditionCursorPagerAdapter.EditionCursorPagerAdapterListener, EditionViewerPager.OnSwipeOutListener, com.snapchat.android.util.ScreenRotationObserver.ScreenRotationListener
{

    private EditionCursorPagerAdapter a;
    private EditionViewerPager b;
    private CloseChannelAnimationView c;
    private final BitmapRecycling d;
    private final Bus e;
    private final DiscoverMediaManager f;
    private final DiscoverAnalytics g;
    private final DiscoverViewTrackingManager h;
    private ScreenRotationObserver i;
    private ChannelPage j;
    private int k;
    private boolean l;
    private final Clock m;
    private long n;

    public EditionViewerFragment()
    {
        this(new BitmapRecycling(), BusProvider.a(), DiscoverMediaManager.a(), new Clock(), new DiscoverAnalytics(), DiscoverViewTrackingManager.a());
    }

    public EditionViewerFragment(BitmapRecycling bitmaprecycling, Bus bus, DiscoverMediaManager discovermediamanager, Clock clock, DiscoverAnalytics discoveranalytics, DiscoverViewTrackingManager discoverviewtrackingmanager)
    {
        n = 0L;
        e = bus;
        d = bitmaprecycling;
        f = discovermediamanager;
        h = discoverviewtrackingmanager;
        m = clock;
        g = discoveranalytics;
    }

    private int a(String s)
    {
        int i1 = h.a(s);
        if (h.b(s) || i1 == -1)
        {
            i1 = 0;
        }
        return i1;
    }

    static CloseChannelAnimationView a(EditionViewerFragment editionviewerfragment)
    {
        return editionviewerfragment.c;
    }

    public void a(float f1)
    {
        c.setAlpha(f1);
    }

    public void a(int i1)
    {
        boolean flag;
        boolean flag1;
        Object aobj[];
        if (b != null && b.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(i1);
        aobj[1] = Boolean.valueOf(flag);
        Timber.a("EditionViewerFragment", "onRotate %d with isLandscapeSupported %s", aobj);
        flag1 = false;
        i1;
        JVM INSTR lookupswitch 3: default 84
    //                   1: 106
    //                   16: 127
    //                   4096: 155;
           goto _L1 _L2 _L3 _L4
_L1:
        if (b != null)
        {
            b.setLockedInPlace(flag1);
        }
        return;
_L2:
        e.a(new ChangeOrientationEvent(1));
        flag1 = false;
        continue; /* Loop/switch isn't completed */
_L3:
        flag1 = false;
        if (flag)
        {
            e.a(new ChangeOrientationEvent(0));
            flag1 = true;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        flag1 = false;
        if (flag)
        {
            e.a(new ChangeOrientationEvent(8));
            flag1 = true;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void a(Loader loader, Cursor cursor)
    {
        int i1;
        i1 = loader.getId();
        Timber.c("EditionViewerFragment", (new StringBuilder()).append("onLoadFinished - loaderId: ").append(i1).toString(), new Object[0]);
        i1;
        JVM INSTR tableswitch 1100 1100: default 52
    //                   1100 53;
           goto _L1 _L2
_L1:
        return;
_L2:
        a.a(cursor);
        if (!l && b != null && k < b.getAdapter().getCount())
        {
            b.setCurrentItem(k, false);
            Timber.c("EditionViewerFragment", (new StringBuilder()).append("Opening page to ").append(k).append(" - count: ").append(a.getCount()).toString(), new Object[0]);
            l = true;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void a(EditionViewerPager.SwipeToExitMethod swipetoexitmethod)
    {
        String s = j.f();
        if (s != null && b != null)
        {
            g.a(m.a() - n, s, j.a(), b.getNumPagesViewed(), b.getNumLongformsViewed(), swipetoexitmethod, h.f(s));
        }
        c.a();
    }

    public void a(String s, int i1, MediaState mediastate)
    {
        if (b != null && i1 == b.getCurrentItem() && i1 == -1 + b.getAdapter().getCount() && mediastate == MediaState.f)
        {
            h.a(s, true);
        }
    }

    public void b()
    {
        e.a(new EditionClosedEvent());
    }

    public void d()
    {
        Bundle bundle = getArguments();
        if (bundle == null)
        {
            return;
        } else
        {
            j = (ChannelPage)bundle.getParcelable(ChannelPage.a);
            k = a(j.f());
            return;
        }
    }

    protected void d_()
    {
        i.b();
        e.a(new ChangeOrientationEvent(1));
    }

    public boolean e()
    {
        e.a(new ChangeOrientationEvent(1));
        if (b != null && b.c())
        {
            b.setCurrentPanel(com.snapchat.android.discover.model.DSnapPage.Form.a.b());
            return true;
        }
        String s = j.f();
        if (b != null && s != null)
        {
            g.a(m.a() - n, s, j.a(), b.getNumPagesViewed(), b.getNumLongformsViewed(), EditionViewerPager.SwipeToExitMethod.e, h.f(s));
        }
        x.post(new Runnable() {

            final EditionViewerFragment a;

            public void run()
            {
                EditionViewerFragment.a(a).a();
            }

            
            {
                a = EditionViewerFragment.this;
                super();
            }
        });
        return true;
    }

    public boolean e_()
    {
        return true;
    }

    public void f()
    {
        if (j == null)
        {
            Timber.e("EditionViewerFragment", "channel page or pager was null when logging app background", new Object[0]);
            return;
        }
        String s = j.f();
        if (s != null && b != null)
        {
            g.a(m.a() - n, s, j.a(), b.getNumPagesViewed(), b.getNumLongformsViewed(), EditionViewerPager.SwipeToExitMethod.d, h.f(s));
            return;
        } else
        {
            Timber.e("EditionViewerFragment", "edition ID or pager null when logging app background", new Object[0]);
            return;
        }
    }

    public void h()
    {
        c.b();
    }

    protected void i()
    {
        getActivity().getSupportLoaderManager().restartLoader(1100, null, this);
    }

    public long j()
    {
        return 60000L;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d();
        f.a(j, null);
        f.a(j);
        l = false;
        a = new EditionCursorPagerAdapter(getActivity(), j, this);
        i = new ScreenRotationObserver(getActivity(), 4113);
        i.a(this);
        i();
    }

    public Loader onCreateLoader(int i1, Bundle bundle)
    {
        switch (i1)
        {
        default:
            return null;

        case 1100: 
            Timber.c("EditionViewerFragment", "creating DSnapPageVirtualTable cursor loader", new Object[0]);
            break;
        }
        Uri uri = Uri.withAppendedPath(SnapchatProvider.c, String.valueOf(j.f()));
        return new CursorLoader(getActivity(), uri, DSnapPageVirtualTable.a, null, null, null);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        x = layoutinflater.inflate(0x7f040041, viewgroup, false);
        b = (EditionViewerPager)d(0x7f0a019e);
        b.setOnSwipeOutListener(this);
        b.setBackgroundColor(j.g());
        b.setAdapter(a);
        c = (CloseChannelAnimationView)d(0x7f0a019f);
        c.setColorFilter(j.g());
        c.setCloseChannelListener(this);
        return x;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (c != null)
        {
            d.a(c);
        }
        if (b != null)
        {
            b.a();
        }
    }

    public void onLoadFinished(Loader loader, Object obj)
    {
        a(loader, (Cursor)obj);
    }

    public void onLoaderReset(Loader loader)
    {
    }

    public void onPause()
    {
        super.onPause();
        if (b != null)
        {
            b.b(b.getCurrentItem());
        }
    }

    public void onResume()
    {
        super.onResume();
        n = m.a();
        if (b != null)
        {
            b.a(b.getCurrentItem());
        }
    }

    protected void s_()
    {
        e.a(new ChangeOrientationEvent(1));
        e.a(new TitleBarEvent(false));
        e.a(new SetPagingEnabledEvent(false));
        e.a(new ChangeWindowMarginEvent(true));
        e.a(new CameraStateEvent(false));
        e.a(new SoftNavigationBarEvent(false));
        i.a();
    }

    protected boolean z()
    {
        return false;
    }
}
