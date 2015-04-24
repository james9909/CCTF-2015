// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.analytics.RegistrationAnalytics;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

class a
    implements TextWatcher
{

    final PhoneVerificationFragment a;

    public void afterTextChanged(Editable editable)
    {
        PhoneVerificationFragment.b(a, null);
        a.q();
        if (!PhoneVerificationFragment.d(a))
        {
            RegistrationAnalytics.n();
            PhoneVerificationFragment.b(a, true);
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (PhoneVerificationFragment phoneverificationfragment)
    {
        a = phoneverificationfragment;
        super();
    }
}
