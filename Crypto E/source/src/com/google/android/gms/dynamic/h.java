// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;

// Referenced classes of package com.google.android.gms.dynamic:
//            e, d, c

public final class h extends c.a
{

    private Fragment TN;

    private h(Fragment fragment)
    {
        TN = fragment;
    }

    public static h a(Fragment fragment)
    {
        if (fragment != null)
        {
            return new h(fragment);
        } else
        {
            return null;
        }
    }

    public void d(d d1)
    {
        View view = (View)com.google.android.gms.dynamic.e.f(d1);
        TN.registerForContextMenu(view);
    }

    public void e(d d1)
    {
        View view = (View)com.google.android.gms.dynamic.e.f(d1);
        TN.unregisterForContextMenu(view);
    }

    public Bundle getArguments()
    {
        return TN.getArguments();
    }

    public int getId()
    {
        return TN.getId();
    }

    public boolean getRetainInstance()
    {
        return TN.getRetainInstance();
    }

    public String getTag()
    {
        return TN.getTag();
    }

    public int getTargetRequestCode()
    {
        return TN.getTargetRequestCode();
    }

    public boolean getUserVisibleHint()
    {
        return TN.getUserVisibleHint();
    }

    public d getView()
    {
        return com.google.android.gms.dynamic.e.n(TN.getView());
    }

    public boolean isAdded()
    {
        return TN.isAdded();
    }

    public boolean isDetached()
    {
        return TN.isDetached();
    }

    public boolean isHidden()
    {
        return TN.isHidden();
    }

    public boolean isInLayout()
    {
        return TN.isInLayout();
    }

    public boolean isRemoving()
    {
        return TN.isRemoving();
    }

    public boolean isResumed()
    {
        return TN.isResumed();
    }

    public boolean isVisible()
    {
        return TN.isVisible();
    }

    public d lo()
    {
        return com.google.android.gms.dynamic.e.n(TN.getActivity());
    }

    public c lp()
    {
        return a(TN.getParentFragment());
    }

    public d lq()
    {
        return com.google.android.gms.dynamic.e.n(TN.getResources());
    }

    public c lr()
    {
        return a(TN.getTargetFragment());
    }

    public void setHasOptionsMenu(boolean flag)
    {
        TN.setHasOptionsMenu(flag);
    }

    public void setMenuVisibility(boolean flag)
    {
        TN.setMenuVisibility(flag);
    }

    public void setRetainInstance(boolean flag)
    {
        TN.setRetainInstance(flag);
    }

    public void setUserVisibleHint(boolean flag)
    {
        TN.setUserVisibleHint(flag);
    }

    public void startActivity(Intent intent)
    {
        TN.startActivity(intent);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        TN.startActivityForResult(intent, i);
    }
}
