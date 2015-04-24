// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.content.DialogInterface;
import com.snapchat.android.analytics.RegistrationAnalytics;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

class a
    implements android.content.er
{

    final PhoneVerificationFragment a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        RegistrationAnalytics.k();
    }

    (PhoneVerificationFragment phoneverificationfragment)
    {
        a = phoneverificationfragment;
        super();
    }
}
