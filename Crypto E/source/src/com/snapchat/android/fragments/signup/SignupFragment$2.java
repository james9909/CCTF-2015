// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            SignupFragment

class a
    implements TextWatcher
{

    final SignupFragment a;

    public void afterTextChanged(Editable editable)
    {
        SignupFragment.a(a);
        SignupFragment.a(a, null);
        if (!SignupFragment.b(a))
        {
            AnalyticsEvents.o();
            SignupFragment.a(a, true);
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (SignupFragment signupfragment)
    {
        a = signupfragment;
        super();
    }
}
