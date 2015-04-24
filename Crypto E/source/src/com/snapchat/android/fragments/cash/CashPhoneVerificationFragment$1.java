// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashPhoneVerificationFragment

class a
    implements android.view.VerificationFragment._cls1
{

    final CashPhoneVerificationFragment a;

    public void onClick(View view)
    {
        ViewUtils.a(a.getActivity(), CashPhoneVerificationFragment.a(a));
        a.getActivity().onBackPressed();
    }

    I(CashPhoneVerificationFragment cashphoneverificationfragment)
    {
        a = cashphoneverificationfragment;
        super();
    }
}
