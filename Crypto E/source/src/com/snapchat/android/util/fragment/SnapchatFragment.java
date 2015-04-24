// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.fragment;

import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.squareup.otto.Bus;

public class SnapchatFragment extends Fragment
{
    public static interface SnapchatFragmentInterface
    {

        public abstract void a(boolean flag);

        public abstract void b(boolean flag);
    }


    protected boolean A;
    private final Handler a;
    public SnapchatFragmentInterface w;
    public View x;
    public boolean y;
    protected int z;

    public SnapchatFragment()
    {
        this(new Handler(Looper.getMainLooper()));
    }

    SnapchatFragment(Handler handler)
    {
        z = -1;
        A = false;
        a = handler;
    }

    private void b()
    {
        FragmentActivity fragmentactivity = getActivity();
        if ((A || (fragmentactivity instanceof LandingPageActivity) && z != -1) && ((LandingPageActivity)fragmentactivity).a(z, this))
        {
            a.post(new Runnable() {

                final SnapchatFragment a;

                public void run()
                {
                    a.g(true);
                }

            
            {
                a = SnapchatFragment.this;
                super();
            }
            });
            A = false;
        }
    }

    public Window G()
    {
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity == null)
        {
            return null;
        } else
        {
            return fragmentactivity.getWindow();
        }
    }

    public Intent H()
    {
        return getActivity().getIntent();
    }

    public AssetManager I()
    {
        return getActivity().getAssets();
    }

    protected boolean J()
    {
        return super.isResumed();
    }

    public Object b(String s)
    {
        return getActivity().getSystemService(s);
    }

    public boolean c(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            FragmentManager fragmentmanager = getFragmentManager();
            Fragment fragment = fragmentmanager.findFragmentByTag(s);
            if (fragment instanceof SnapchatFragment)
            {
                ((SnapchatFragment)fragment).g(true);
                if (fragmentmanager.popBackStackImmediate(s, 0))
                {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean c_()
    {
        return super.isAdded();
    }

    public View d(int i)
    {
        return x.findViewById(i);
    }

    public void d_()
    {
    }

    public void e(View view)
    {
        x = view;
    }

    public void e(boolean flag)
    {
    }

    public boolean e()
    {
        return false;
    }

    public boolean e_()
    {
        return false;
    }

    public void g(boolean flag)
    {
label0:
        {
            if (c_())
            {
                setUserVisibleHint(flag);
            }
            if (!flag)
            {
                a.removeCallbacksAndMessages(null);
            }
            if (y != flag)
            {
                if (J() || !flag)
                {
                    break label0;
                }
                A = true;
                Timber.f("SnapchatFragment", "Fragment is not yet resumed. Scheduling onVisible for later", new Object[0]);
            }
            return;
        }
        A = false;
        y = flag;
        if (flag)
        {
            if (w != null)
            {
                w.a(z());
            }
            s_();
            return;
        } else
        {
            d_();
            return;
        }
    }

    public long j()
    {
        return -1L;
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        if (activity instanceof SnapchatFragmentInterface)
        {
            w = (SnapchatFragmentInterface)activity;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            z = bundle1.getInt("page_index", -1);
        }
    }

    public void onDetach()
    {
        super.onDetach();
        w = null;
    }

    public void onPause()
    {
        super.onPause();
        BusProvider.a().b(this);
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        BusProvider.a().c(this);
        b();
    }

    public void q_()
    {
        g(false);
    }

    public void s_()
    {
        BusProvider.a().a(new ChangeOrientationEvent(1));
        BusProvider.a().a(new TitleBarEvent(true));
    }

    public boolean t_()
    {
        return false;
    }

    public boolean z()
    {
        return true;
    }
}
