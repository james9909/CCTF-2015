// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.Button;
import com.snapchat.android.Timber;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment, BugReportRemoteLogListFragment

class a
    implements android.view.
{

    final int a;
    final BugReportFragment b;

    public void onClick(View view)
    {
        if (BugReportFragment.j(b) == null)
        {
            try
            {
                ViewUtils.a(BugReportFragment.c(b), view);
                b.getActivity().getSupportFragmentManager().beginTransaction().add(a, new BugReportRemoteLogListFragment()).addToBackStack("BugReportRemoteLogListFragment").commit();
                return;
            }
            catch (IllegalStateException illegalstateexception)
            {
                Timber.a("BugReportFragment", illegalstateexception);
            }
            return;
        } else
        {
            BugReportFragment.a(b, null);
            BugReportFragment.k(b).setText("Remote Log");
            return;
        }
    }

    stFragment(BugReportFragment bugreportfragment, int i)
    {
        b = bugreportfragment;
        a = i;
        super();
    }
}
