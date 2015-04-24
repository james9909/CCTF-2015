// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener;
import com.snapchat.android.util.EmojiUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsAdapter, NonTappableAddFriendsTextProvider

public class AddedMeFragment extends SnapchatFragment
    implements AddFriendsAdapter.AddFriendsAdapterInterface, com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeableListItemWithClickInterface
{

    protected AddFriendsAdapter a;
    protected StickyListHeadersListView b;
    protected TextView c;
    protected List d;
    protected User e;
    private final UserPrefs f;
    private final SnapchatServiceManager g;
    private final Provider h;
    private String i;
    private com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext j;

    public AddedMeFragment()
    {
        this(UserPrefs.a(), SnapchatServiceManager.a(), User.UNSAFE_USER_PROVIDER);
    }

    AddedMeFragment(UserPrefs userprefs, SnapchatServiceManager snapchatservicemanager, Provider provider)
    {
        d = Collections.synchronizedList(new ArrayList());
        j = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE;
        f = userprefs;
        g = snapchatservicemanager;
        h = provider;
    }

    private void i()
    {
        d(0x7f0a002f).setOnClickListener(new android.view.View.OnClickListener() {

            final AddedMeFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = AddedMeFragment.this;
                super();
            }
        });
    }

    public float a(View view)
    {
        View view1;
        if (view != null)
        {
            if ((view1 = view.findViewById(0x7f0a0044)) != null)
            {
                return view1.getTranslationX();
            }
        }
        return 0.0F;
    }

    public void a(int k)
    {
        a.a(k);
    }

    public void a(View view, int k, boolean flag)
    {
        a.a(view, k, flag);
    }

    protected void a(User user, boolean flag)
    {
        if (user != null && flag)
        {
            long l = user.x();
            if (f.a(l))
            {
                g.c();
            }
        }
    }

    public boolean a(View view, float f1, float f2, float f3, float f4)
    {
        if (view == null)
        {
            return false;
        }
        View view1 = view.findViewById(0x7f0a0044);
        if (view1 != null)
        {
            view1.setTranslationX(f1);
        }
        return true;
    }

    public boolean a(Friend friend)
    {
        return friend.i() > f.j();
    }

    public int b(View view)
    {
        if (getActivity() != null)
        {
            View view1;
            if (view == null)
            {
                view1 = null;
            } else
            {
                view1 = view.findViewById(0x7f0a003e);
            }
            if (view1 != null)
            {
                return view1.getMeasuredWidth();
            }
        }
        return 0;
    }

    protected void b()
    {
        e = User.c();
        if (e != null)
        {
            synchronized (d)
            {
                d.clear();
                HashSet hashset = new HashSet(e.s());
                Iterator iterator = e.w().iterator();
label0:
                do
                {
                    Friend friend;
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break label0;
                        }
                        friend = (Friend)iterator.next();
                    } while (!b(friend) || hashset.contains(friend) && !a(friend));
                    d.add(friend);
                } while (d.size() < 200);
            }
            Timber.c("AddedMeFragment", (new StringBuilder()).append("refreshFriendList - LastSeenAddedMeTimestamp: ").append(f.j()).append(" Total # of FriendsWhoAddedMe: ").append(e.w().size()).append(" # of FriendsWhoAddedMe for display: ").append(d.size()).toString(), new Object[0]);
        }
        if (a != null)
        {
            a.notifyDataSetChanged();
        }
        if (e == null)
        {
            d();
            return;
        }
        break MISSING_BLOCK_LABEL_241;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        if (d.isEmpty())
        {
            f();
            return;
        } else
        {
            h();
            return;
        }
    }

    protected boolean b(Friend friend)
    {
        return !friend.x() && !friend.L() && !friend.K();
    }

    public void c(View view)
    {
    }

    protected void d()
    {
        b.setVisibility(8);
        c.setVisibility(8);
        d(0x7f0a006c).setVisibility(0);
    }

    protected void d_()
    {
        e = User.c();
        User user = e;
        boolean flag;
        if (!a.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(user, flag);
    }

    protected void f()
    {
        b.setVisibility(8);
        c.setVisibility(0);
        d(0x7f0a006c).setVisibility(8);
    }

    public com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext getAnalyticsContext()
    {
        return j;
    }

    public String getAnalyticsParent()
    {
        if (i == null)
        {
            return "UNKNOWN";
        } else
        {
            return i;
        }
    }

    protected void h()
    {
        b.setVisibility(0);
        c.setVisibility(8);
        d(0x7f0a006c).setVisibility(8);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        FragmentActivity fragmentactivity = getActivity();
        x = layoutinflater.inflate(0x7f040066, viewgroup, false);
        c = (TextView)d(0x7f0a0235);
        String s = fragmentactivity.getString(0x7f0c0014);
        c.setText((new StringBuilder()).append(s).append(" ").append(EmojiUtils.a(EmojiUtils.a)).toString());
        ViewUtils.a(x, G());
        BusProvider.a().a(new TitleBarEvent(true));
        b = (StickyListHeadersListView)d(0x7f0a0155);
        a = new AddFriendsAdapter(fragmentactivity, d, new com.snapchat.android.util.FriendSectionizer.NoSectionizer(), this, true, new NonTappableAddFriendsTextProvider(), h);
        a.g(true);
        b.setAdapter(a);
        b();
        SwipeableListItemTouchListener swipeablelistitemtouchlistener = new SwipeableListItemTouchListener(b, com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection.a, this);
        swipeablelistitemtouchlistener.a(true);
        b.setOnTouchListener(swipeablelistitemtouchlistener);
        b.setOnScrollListener(swipeablelistitemtouchlistener.a());
        b.setFastScrollAlwaysVisible(true);
        i();
        TimeLogger.b();
        return x;
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        Friend friend = refreshonfriendactionevent.a();
        if (friend == null) goto _L2; else goto _L1
_L1:
        static class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[FriendAction.values().length];
                try
                {
                    a[FriendAction.ADD.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[FriendAction.DELETE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        _cls2.a[refreshonfriendactionevent.b().ordinal()];
        JVM INSTR tableswitch 1 2: default 44
    //                   1 49
    //                   2 49;
           goto _L2 _L3 _L3
_L2:
        b();
        return;
_L3:
        a.a(friend);
        return;
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        TimeLogger.b();
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        if (userloadedevent != null && userloadedevent.a != null && e == null)
        {
            e = userloadedevent.a;
            Timber.c("AddedMeFragment", "Update snaps because this fragment has not updated snaps since it became visible.", new Object[0]);
            g.c();
        }
        b();
    }

    protected void s_()
    {
        TimeLogger.a();
        ViewUtils.a(x, G());
        BusProvider.a().a(new TitleBarEvent(true));
        e = User.c();
        if (e != null)
        {
            g.c();
        } else
        {
            Timber.c("AddedMeFragment", "User is not loaded yet. Need to update snaps when the user is loaded.", new Object[0]);
        }
        ProfileEventAnalytics.a(j);
        TimeLogger.b();
    }
}
