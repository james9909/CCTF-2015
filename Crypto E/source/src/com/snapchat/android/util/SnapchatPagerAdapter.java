// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.Timber;
import com.snapchat.android.util.fragment.SnapchatFragment;

public abstract class SnapchatPagerAdapter extends PagerAdapter
{

    private final FragmentManager a;
    private FragmentTransaction b;
    private Fragment c;

    public SnapchatPagerAdapter(FragmentManager fragmentmanager)
    {
        b = null;
        c = null;
        a = fragmentmanager;
    }

    private static String a(int i, int j)
    {
        return (new StringBuilder()).append("android:switcher:").append(i).append(":").append(j).toString();
    }

    public abstract SnapchatFragment a(ViewGroup viewgroup, int i);

    public Fragment b(ViewGroup viewgroup, int i)
    {
        String s = a(viewgroup.getId(), i);
        return a.findFragmentByTag(s);
    }

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        if (b == null)
        {
            b = a.beginTransaction();
        }
        Timber.c("SnapchatPagerAdapter", (new StringBuilder()).append("Detaching item #").append(i).append(": f=").append(obj).append(" v=").append(((Fragment)obj).getView()).toString(), new Object[0]);
        b.detach((Fragment)obj);
    }

    public void finishUpdate(ViewGroup viewgroup)
    {
        if (b != null)
        {
            b.commitAllowingStateLoss();
            b = null;
            a.executePendingTransactions();
        }
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        if (b == null)
        {
            b = a.beginTransaction();
        }
        String s = a(viewgroup.getId(), i);
        Object obj = a.findFragmentByTag(s);
        if (obj != null)
        {
            Timber.c("SnapchatPagerAdapter", (new StringBuilder()).append("Attaching item #").append(i).append(": f=").append(obj).toString(), new Object[0]);
            if (((Fragment) (obj)).isDetached())
            {
                b.attach(((Fragment) (obj)));
            }
        } else
        {
            obj = a(viewgroup, i);
            Timber.c("SnapchatPagerAdapter", (new StringBuilder()).append("Adding item #").append(i).append(": f=").append(obj).toString(), new Object[0]);
            b.add(viewgroup.getId(), ((Fragment) (obj)), a(viewgroup.getId(), i));
        }
        if (obj != c)
        {
            ((Fragment) (obj)).setMenuVisibility(false);
            ((Fragment) (obj)).setUserVisibleHint(false);
        }
        return obj;
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return ((Fragment)obj).getView() == view;
    }

    public void restoreState(Parcelable parcelable, ClassLoader classloader)
    {
    }

    public Parcelable saveState()
    {
        return null;
    }

    public void setPrimaryItem(ViewGroup viewgroup, int i, Object obj)
    {
        Fragment fragment = (Fragment)obj;
        if (fragment != c)
        {
            if (c != null)
            {
                c.setMenuVisibility(false);
                c.setUserVisibleHint(false);
            }
            if (fragment != null)
            {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            c = fragment;
        }
    }

    public void startUpdate(ViewGroup viewgroup)
    {
    }
}
