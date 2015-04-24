// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.profile.ui;

import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.profile.ui:
//            ProfileViewFlipper

public class ProfileScrolledListener
    implements com.snapchat.android.ui.VerticalSwipeLayout.OnScrolledListener
{

    private final ProfileViewFlipper a;

    public ProfileScrolledListener(ProfileViewFlipper profileviewflipper)
    {
        a = profileviewflipper;
    }

    public void a(int i, int j, int k)
    {
        if (a.isEnabled())
        {
            a.setFullscreenWindowParams(true);
            if (a.d() && j == 1 && k != 1)
            {
                BusProvider.a().a(new SetPagingEnabledEvent(false));
                return;
            }
        }
    }

    public void c(int i)
    {
        boolean flag = true;
        if (a.isEnabled()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        android.content.Context context = a.getContext();
        User user;
        boolean flag2;
        boolean flag3;
        if (context instanceof com.snapchat.android.util.fragment.SnapchatFragment.SnapchatFragmentInterface)
        {
            com.snapchat.android.util.fragment.SnapchatFragment.SnapchatFragmentInterface snapchatfragmentinterface = (com.snapchat.android.util.fragment.SnapchatFragment.SnapchatFragmentInterface)context;
            ProfileViewFlipper profileviewflipper;
            Bus bus;
            boolean flag4;
            if (i == 0)
            {
                flag4 = flag;
            } else
            {
                flag4 = false;
            }
            snapchatfragmentinterface.a(flag4);
        }
        if (i != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        ProfileEventAnalytics.a(com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_MAIN_PAGE);
        if (!UserPrefs.av())
        {
            UserPrefs.z(flag);
        }
        user = User.c();
        if (user == null)
        {
            flag2 = false;
        } else
        if (user.d() > 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (flag2 && !UserPrefs.aw())
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        if (flag3)
        {
            UserPrefs.A(flag);
        }
        if (!a.isEnabled()) goto _L1; else goto _L3
_L3:
        profileviewflipper = a;
        boolean flag1;
        if (i != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        profileviewflipper.setFullscreenWindowParams(flag1);
        if (a.d())
        {
            bus = BusProvider.a();
            if (i != flag)
            {
                flag = false;
            }
            bus.a(new SetPagingEnabledEvent(flag));
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
