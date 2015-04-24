// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.networkmanager.DownloadManager;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.SnapchatViewPager;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.FragmentManagerProvider;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity, Timber

class e extends android.support.v4.view.ChangeListener
{

    final LandingPageActivity a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    private void a(int i)
    {
        FragmentManager fragmentmanager = a.l.a(a);
        boolean flag;
        if (fragmentmanager.getBackStackEntryCount() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return;
        }
        if (i != c && UserPrefs.R() && !ViewUtils.a(a.getWindow()))
        {
            UserPrefs.p(false);
            LandingPageActivity.c(a).b(a);
        }
        SnapchatFragment snapchatfragment = a.a.b(i);
        if (snapchatfragment != null)
        {
            snapchatfragment.g(true);
            Iterator iterator = fragmentmanager.getFragments().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Fragment fragment = (Fragment)iterator.next();
                if ((fragment instanceof SnapchatFragment) && !snapchatfragment.equals(fragment))
                {
                    ((SnapchatFragment)fragment).g(false);
                }
            } while (true);
        }
        Timber.f("LandingPageActivity", (new StringBuilder()).append("markFragmentVisibilityChanged to: ").append(i).append(" from: ").append(c).toString(), new Object[0]);
        c = i;
    }

    public void onPageScrollStateChanged(int i)
    {
        if (i == 0)
        {
            a.n();
            a(b);
        }
        d = i;
    }

    public void onPageScrolled(int i, float f, int j)
    {
        if (j == 0)
        {
            if (b == c && e)
            {
                a.a.a(b);
                SnapchatFragment snapchatfragment1 = a.a.b(b);
                boolean flag1;
                if (!a.o())
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (snapchatfragment1 != null && !flag1)
                {
                    snapchatfragment1.g(true);
                }
            }
            e = false;
        } else
        if (!e)
        {
            boolean flag;
            SnapchatFragment snapchatfragment;
            if (j < a.a.getWidth() / 2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            e = true;
            snapchatfragment = a.a.b(b);
            Timber.f("LandingPageActivity", (new StringBuilder()).append("onScrollStart from: ").append(b).toString(), new Object[0]);
            if (snapchatfragment != null)
            {
                snapchatfragment.e(flag);
                return;
            }
        }
    }

    public void onPageSelected(int i)
    {
        b = i;
        AnalyticsEvents.a(c, b);
        LandingPageActivity.a(a).a(c, b);
        LandingPageActivity.b(a).b();
        i;
        JVM INSTR tableswitch 2 2: default 64
    //                   2 80;
           goto _L1 _L2
_L1:
        if (d == 0)
        {
            a(b);
        }
        return;
_L2:
        a.j();
        if (true) goto _L1; else goto _L3
_L3:
    }

    dManager(LandingPageActivity landingpageactivity)
    {
        a = landingpageactivity;
        super();
        b = a.a.getCurrentItem();
        c = a.a.getCurrentItem();
        d = 0;
        e = false;
    }
}
