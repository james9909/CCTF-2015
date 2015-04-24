// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            SQAcceptTermsFragment

class a
    implements android.view.QAcceptTermsFragment._cls2
{

    final SQAcceptTermsFragment a;

    public void onClick(View view)
    {
        UserPrefs.F();
        AnalyticsEvents.L();
        a.getActivity().getSupportFragmentManager().popBackStack();
        if (SQAcceptTermsFragment.a(a) != null)
        {
            SQAcceptTermsFragment.a(a).a();
            SQAcceptTermsFragment.a(a, null);
        }
    }

    ceptTermsListener(SQAcceptTermsFragment sqaccepttermsfragment)
    {
        a = sqaccepttermsfragment;
        super();
    }
}
