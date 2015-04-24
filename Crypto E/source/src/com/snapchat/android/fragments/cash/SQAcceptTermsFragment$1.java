// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.support.v4.app.FragmentActivity;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            SQAcceptTermsFragment

class a
    implements android.view.QAcceptTermsFragment._cls1
{

    final SQAcceptTermsFragment a;

    public void onClick(View view)
    {
        if (SQAcceptTermsFragment.a(a) != null)
        {
            SQAcceptTermsFragment.a(a).b();
            SQAcceptTermsFragment.a(a, null);
        }
        a.getActivity().onBackPressed();
    }

    ceptTermsListener(SQAcceptTermsFragment sqaccepttermsfragment)
    {
        a = sqaccepttermsfragment;
        super();
    }
}
