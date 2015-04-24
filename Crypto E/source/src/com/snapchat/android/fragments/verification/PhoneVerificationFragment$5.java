// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.view.View;
import com.snapchat.android.analytics.RegistrationAnalytics;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

class a
    implements android.view.on.PhoneVerificationFragment._cls5
{

    final PhoneVerificationFragment a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            RegistrationAnalytics.m();
            return;
        } else
        {
            PhoneVerificationFragment.b(a, false);
            return;
        }
    }

    (PhoneVerificationFragment phoneverificationfragment)
    {
        a = phoneverificationfragment;
        super();
    }
}
