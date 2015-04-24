// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportRemoteLogListFragment

class a
    implements android.widget.ogListFragment._cls1
{

    final BugReportRemoteLogListFragment a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (adapterview.getItemAtPosition(i).toString().length() == 1)
        {
            return;
        }
        if (a.getActivity() instanceof FriendSelectedListener)
        {
            String s = adapterview.getItemAtPosition(i).toString();
            ((FriendSelectedListener)a.getActivity()).a(s);
        }
        a.getActivity().getSupportFragmentManager().beginTransaction().remove(a).addToBackStack("Chosen remote recipient").commit();
    }

    FriendSelectedListener(BugReportRemoteLogListFragment bugreportremoteloglistfragment)
    {
        a = bugreportremoteloglistfragment;
        super();
    }
}
