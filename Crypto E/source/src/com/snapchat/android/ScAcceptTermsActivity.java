// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.snapchat.android.fragments.ScAcceptTermsFragment;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity

public class ScAcceptTermsActivity extends SnapchatActivity
{

    public ScAcceptTermsActivity()
    {
    }

    private void a(SnapchatFragment snapchatfragment, String s)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.add(0x7f0a0269, snapchatfragment, s);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public void onBackPressed()
    {
        FragmentManager fragmentmanager = getSupportFragmentManager();
        int i = fragmentmanager.getBackStackEntryCount();
        if (i > 0)
        {
            SnapchatFragment snapchatfragment = (SnapchatFragment)fragmentmanager.findFragmentByTag(fragmentmanager.getBackStackEntryAt(i - 1).getName());
            if (snapchatfragment != null && snapchatfragment.e())
            {
                return;
            }
        }
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f040073);
        FragmentManager fragmentmanager = getSupportFragmentManager();
        if (fragmentmanager.findFragmentById(0x7f0a0269) == null)
        {
            ScAcceptTermsFragment scaccepttermsfragment = new ScAcceptTermsFragment();
            fragmentmanager.beginTransaction().add(0x7f0a0269, scaccepttermsfragment, "ScAcceptTermsFragment").addToBackStack("ScAcceptTermsFragment").commit();
        }
    }

    public void onPause()
    {
        super.onPause();
        BusProvider.a().b(this);
    }

    public void onResume()
    {
        super.onResume();
        BusProvider.a().c(this);
    }

    public void onStartFragmentEvent(StartFragmentEvent startfragmentevent)
    {
        SnapchatFragment snapchatfragment = startfragmentevent.a;
        a(snapchatfragment, snapchatfragment.toString());
    }
}
