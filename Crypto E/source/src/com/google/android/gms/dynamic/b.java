// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

// Referenced classes of package com.google.android.gms.dynamic:
//            e, d, c

public final class b extends c.a
{

    private Fragment aaV;

    private b(Fragment fragment)
    {
        aaV = fragment;
    }

    public static b a(Fragment fragment)
    {
        if (fragment != null)
        {
            return new b(fragment);
        } else
        {
            return null;
        }
    }

    public void d(d d1)
    {
        View view = (View)com.google.android.gms.dynamic.e.f(d1);
        aaV.registerForContextMenu(view);
    }

    public void e(d d1)
    {
        View view = (View)com.google.android.gms.dynamic.e.f(d1);
        aaV.unregisterForContextMenu(view);
    }

    public Bundle getArguments()
    {
        return aaV.getArguments();
    }

    public int getId()
    {
        return aaV.getId();
    }

    public boolean getRetainInstance()
    {
        return aaV.getRetainInstance();
    }

    public String getTag()
    {
        return aaV.getTag();
    }

    public int getTargetRequestCode()
    {
        return aaV.getTargetRequestCode();
    }

    public boolean getUserVisibleHint()
    {
        return aaV.getUserVisibleHint();
    }

    public d getView()
    {
        return com.google.android.gms.dynamic.e.n(aaV.getView());
    }

    public boolean isAdded()
    {
        return aaV.isAdded();
    }

    public boolean isDetached()
    {
        return aaV.isDetached();
    }

    public boolean isHidden()
    {
        return aaV.isHidden();
    }

    public boolean isInLayout()
    {
        return aaV.isInLayout();
    }

    public boolean isRemoving()
    {
        return aaV.isRemoving();
    }

    public boolean isResumed()
    {
        return aaV.isResumed();
    }

    public boolean isVisible()
    {
        return aaV.isVisible();
    }

    public d lo()
    {
        return com.google.android.gms.dynamic.e.n(aaV.getActivity());
    }

    public c lp()
    {
        return a(aaV.getParentFragment());
    }

    public d lq()
    {
        return com.google.android.gms.dynamic.e.n(aaV.getResources());
    }

    public c lr()
    {
        return a(aaV.getTargetFragment());
    }

    public void setHasOptionsMenu(boolean flag)
    {
        aaV.setHasOptionsMenu(flag);
    }

    public void setMenuVisibility(boolean flag)
    {
        aaV.setMenuVisibility(flag);
    }

    public void setRetainInstance(boolean flag)
    {
        aaV.setRetainInstance(flag);
    }

    public void setUserVisibleHint(boolean flag)
    {
        aaV.setUserVisibleHint(flag);
    }

    public void startActivity(Intent intent)
    {
        aaV.startActivity(intent);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        aaV.startActivityForResult(intent, i);
    }
}
