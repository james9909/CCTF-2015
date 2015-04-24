// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.snapchat.android.SnapchatActivity;
import java.util.List;

// Referenced classes of package com.snapchat.android.util.debug:
//            ShakeReporter

public class BugReportActivity extends SnapchatActivity
    implements android.support.v4.app.FragmentManager.OnBackStackChangedListener, BugReportRemoteLogListFragment.OnFriendSelectedListener
{

    private String a;

    public BugReportActivity()
    {
    }

    public void a(String s)
    {
        a = s;
    }

    public void onBackStackChanged()
    {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0)
        {
            Fragment fragment = (Fragment)getSupportFragmentManager().getFragments().get(0);
            if (fragment instanceof BugReportRemoteLogListFragment.OnFriendSelectedListener)
            {
                ((BugReportRemoteLogListFragment.OnFriendSelectedListener)fragment).a(a);
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f04000a);
        getSupportFragmentManager().addOnBackStackChangedListener(this);
    }

    protected void onStart()
    {
        super.onStart();
        q.b();
    }
}
