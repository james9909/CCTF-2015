// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.controller.DiscoverNewContentObserver;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;
import com.snapchat.android.discover.operation.ChannelListOperation;
import com.snapchat.android.discover.ui.ChannelGroupView;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.discover.ui.OpenChannelAnimator;
import com.snapchat.android.discover.util.eventbus.EditionClosedEvent;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.networkmanager.NetworkStatusListener;
import com.snapchat.android.networkmanager.NetworkStatusManager;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.eventbus.SnapSendInitiatedEvent;
import com.snapchat.android.util.eventbus.SoftNavigationBarEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.SyncAllCompletedEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            ChannelCursorAdapter, EditionViewerFragment

public class DiscoverFragment extends SnapchatFragment
    implements android.support.v4.app.LoaderManager.LoaderCallbacks, OpenChannelAnimator, ChannelCursorAdapter.ChannelViewCallback, com.snapchat.android.discover.util.network.DiscoverEndpointManager.ConfigurationListener, NetworkStatusListener
{

    protected ChannelCursorAdapter a;
    protected OpenChannelAnimationView b;
    private final Bus c;
    private final SnapchatServiceManager d;
    private final DiscoverEndpointManager e;
    private final DiscoverNewContentObserver f;
    private final NetworkStatusManager g;
    private final DiscoverLoadingStatePresenter h;
    private final DiscoverRepository i;
    private final DiscoverMediaManager j;
    private ChannelGroupView k;
    private EditionViewerFragment l;
    private boolean m;
    private Set n;
    private final SnapchatServiceListener o;
    private final android.view.View.OnClickListener p;

    public DiscoverFragment()
    {
        this(BusProvider.a(), SnapchatServiceManager.a(), DiscoverEndpointManager.a(), DiscoverNewContentObserver.a(), NetworkStatusManager.a(), new DiscoverLoadingStatePresenter(), DiscoverRepository.a(), DiscoverMediaManager.a());
    }

    DiscoverFragment(Bus bus, SnapchatServiceManager snapchatservicemanager, DiscoverEndpointManager discoverendpointmanager, DiscoverNewContentObserver discovernewcontentobserver, NetworkStatusManager networkstatusmanager, DiscoverLoadingStatePresenter discoverloadingstatepresenter, DiscoverRepository discoverrepository, 
            DiscoverMediaManager discovermediamanager)
    {
        a = null;
        l = null;
        m = false;
        n = new HashSet();
        o = new SnapchatServiceListener() {

            final DiscoverFragment a;

            public void a(Operation operation)
            {
                int i1 = SnapchatServiceManager.a(operation);
                if (DiscoverFragment.a(a).contains(Integer.valueOf(i1)))
                {
                    DiscoverFragment.a(a).remove(Integer.valueOf(i1));
                    if (!DiscoverFragment.b(a))
                    {
                        DiscoverFragment.c(a).e();
                    }
                    if (DiscoverFragment.a(a).isEmpty() && (operation instanceof ChannelListOperation) && ((ChannelListOperation)operation).g() == 0 && a.a.getCount() == 0)
                    {
                        DiscoverFragment.d(a).a(com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState.e);
                        a.h();
                    }
                }
            }

            
            {
                a = DiscoverFragment.this;
                super();
            }
        };
        p = new android.view.View.OnClickListener() {

            final DiscoverFragment a;

            public void onClick(View view)
            {
                if (!a.h())
                {
                    DiscoverFragment.d(a).a(com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState.a);
                    a.f();
                }
            }

            
            {
                a = DiscoverFragment.this;
                super();
            }
        };
        c = bus;
        d = snapchatservicemanager;
        e = discoverendpointmanager;
        f = discovernewcontentobserver;
        g = networkstatusmanager;
        h = discoverloadingstatepresenter;
        i = discoverrepository;
        j = discovermediamanager;
    }

    static EditionViewerFragment a(DiscoverFragment discoverfragment, EditionViewerFragment editionviewerfragment)
    {
        discoverfragment.l = editionviewerfragment;
        return editionviewerfragment;
    }

    static Set a(DiscoverFragment discoverfragment)
    {
        return discoverfragment.n;
    }

    static boolean b(DiscoverFragment discoverfragment)
    {
        return discoverfragment.k();
    }

    static DiscoverRepository c(DiscoverFragment discoverfragment)
    {
        return discoverfragment.i;
    }

    static DiscoverLoadingStatePresenter d(DiscoverFragment discoverfragment)
    {
        return discoverfragment.h;
    }

    static EditionViewerFragment e(DiscoverFragment discoverfragment)
    {
        return discoverfragment.l;
    }

    static Bus f(DiscoverFragment discoverfragment)
    {
        return discoverfragment.c;
    }

    private void i()
    {
        int i1 = 0xf & getResources().getConfiguration().screenLayout;
        float f1 = (float)ViewUtils.b(getActivity()) / (float)ViewUtils.a(getActivity());
        if (i1 == 1 || i1 == 2 && f1 <= 1.65F)
        {
            ((ImageView)d(0x7f0a0190)).setImageResource(0x7f020102);
        }
    }

    private boolean k()
    {
        return l != null;
    }

    public void a(NetworkInfo networkinfo)
    {
        if (g.d())
        {
            j.c();
        }
    }

    public void a(Loader loader, Cursor cursor)
    {
        int j1;
        int i1 = loader.getId();
        Timber.c("DiscoverFragment", (new StringBuilder()).append("onLoadFinished - loaderId: ").append(i1).toString(), new Object[0]);
        switch (i1)
        {
        default:
            return;

        case 1000: 
            break;
        }
        if (cursor == null)
        {
            j1 = 0;
        } else
        {
            j1 = cursor.getCount();
        }
        if (j1 <= 0) goto _L2; else goto _L1
_L1:
        h.a(com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState.b);
_L4:
        a.swapCursor(cursor);
        return;
_L2:
        if (m && n.isEmpty() && j1 == 0)
        {
            Timber.c("DiscoverFragment", "onLoadFinished - No Channels.", new Object[0]);
            h.a(com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState.e);
            h();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(ChannelView channelview)
    {
        c.a(new SetPagingEnabledEvent(false));
        b.a(channelview, new com.snapchat.android.discover.ui.OpenChannelAnimationView.AnimationEndCall(channelview) {

            final ChannelView a;
            final DiscoverFragment b;

            public void a()
            {
                DiscoverFragment.a(b, new EditionViewerFragment());
                ChannelPage channelpage = a.getChannelPage();
                Bundle bundle = new Bundle();
                bundle.putParcelable(ChannelPage.a, channelpage);
                DiscoverFragment.e(b).setArguments(bundle);
                BusProvider.a().a(new StartFragmentEvent(DiscoverFragment.e(b)));
            }

            
            {
                b = DiscoverFragment.this;
                a = channelview;
                super();
            }
        });
    }

    public void b()
    {
    }

    public void c()
    {
        com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility compatibility = e.d();
        if (TextUtils.isEmpty(e.b()))
        {
            h.a(com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.b);
            h();
        } else
        {
            h.a(compatibility);
            if (!h() && compatibility == com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.a)
            {
                f();
                return;
            }
        }
    }

    protected void d_()
    {
        g.b(this);
        f.d();
        super.d_();
    }

    public boolean e()
    {
        return b.b();
    }

    protected void f()
    {
        if (e.b() != null && e.d() == com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.a && n.isEmpty())
        {
            if (a.getCount() == 0)
            {
                h.a(com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState.a);
            }
            Timber.c("DiscoverFragment", "Fetching discover channel list", new Object[0]);
            n.add(Integer.valueOf(d.f(getActivity())));
        }
    }

    protected boolean h()
    {
        NetworkInfo networkinfo = g.b();
        if (getActivity().getExternalCacheDir() == null)
        {
            Timber.a("DiscoverFragment", "No external storage available error.", new Object[0]);
            h.a(com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState.d);
            return true;
        }
        if (networkinfo == null || !networkinfo.isConnected())
        {
            Timber.a("DiscoverFragment", "Network error.", new Object[0]);
            h.a(com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState.c);
            return true;
        } else
        {
            return false;
        }
    }

    public void onCreate(Bundle bundle)
    {
        TimeLogger.a();
        super.onCreate(bundle);
        a = new ChannelCursorAdapter(getActivity(), this, this, null);
        p_();
        e.a(this);
        TimeLogger.b();
    }

    public Loader onCreateLoader(int i1, Bundle bundle)
    {
        switch (i1)
        {
        default:
            return null;

        case 1000: 
            return new CursorLoader(getActivity(), SnapchatProvider.b, PublisherAndEditionVirtualTable.a, null, null, null);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        x = layoutinflater.inflate(0x7f040040, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        d(0x7f0a0191).setOnClickListener(new android.view.View.OnClickListener() {

            final DiscoverFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = DiscoverFragment.this;
                super();
            }
        });
        k = (ChannelGroupView)d(0x7f0a0193);
        k.setAdapter(a);
        b = (OpenChannelAnimationView)d(0x7f0a019d);
        h.a(x, a, p);
        i();
        TimeLogger.b();
        return x;
    }

    public void onDestroy()
    {
        super.onDestroy();
        e.b(this);
    }

    public void onEditionClose(EditionClosedEvent editionclosedevent)
    {
        l = null;
        c.a(new TitleBarEvent(true));
        c.a(new ChangeOrientationEvent(1));
        c.a(new SetPagingEnabledEvent(true));
        b.a(new com.snapchat.android.discover.ui.OpenChannelAnimationView.AnimationEndCall() {

            final DiscoverFragment a;

            public void a()
            {
                a.a.a();
                a.b.postDelayed(new Runnable(this) {

                    final _cls5 a;

                    public void run()
                    {
                        DiscoverFragment.f(a.a).a(new SoftNavigationBarEvent(true));
                        DiscoverFragment.f(a.a).a(new CameraStateEvent(true));
                    }

            
            {
                a = _pcls5;
                super();
            }
                }, 300L);
            }

            
            {
                a = DiscoverFragment.this;
                super();
            }
        });
        i.e();
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
        if (k())
        {
            b.a();
            a.a();
            l.f();
            l = null;
        }
        c.a(new SoftNavigationBarEvent(true));
        d.b(1007, o);
        n.clear();
        c.b(this);
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        c.c(this);
        d.a(1007, o);
        h.a(e.d());
        j.b();
        if (!h())
        {
            f();
        }
        TimeLogger.b();
    }

    public void onSnapSendInitiated(SnapSendInitiatedEvent snapsendinitiatedevent)
    {
        if (a != null && a.b())
        {
            b.a(new com.snapchat.android.discover.ui.OpenChannelAnimationView.AnimationEndCall() {

                final DiscoverFragment a;

                public void a()
                {
                    a.a.a();
                }

            
            {
                a = DiscoverFragment.this;
                super();
            }
            });
        }
    }

    public void onSyncAllCompletedEvent(SyncAllCompletedEvent syncallcompletedevent)
    {
        m = true;
    }

    protected void p_()
    {
        getActivity().getSupportLoaderManager().initLoader(1000, null, this);
    }

    protected void s_()
    {
        TimeLogger.a();
        super.s_();
        getActivity().setVolumeControlStream(3);
        f.d();
        j.a(DiscoverMediaCategory.a);
        g.a(this);
        TimeLogger.b();
    }
}
