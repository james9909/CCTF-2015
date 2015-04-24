// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.content.DialogInterface;
import android.widget.TextView;
import com.snapchat.android.analytics.RegistrationAnalytics;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

class c
    implements android.content.er
{

    final String a[];
    final TextView b;
    final CharSequence c[];
    final PhoneVerificationFragment d;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        PhoneVerificationFragment.c(d, a[i]);
        b.setText(c[i]);
        d.q();
        dialoginterface.dismiss();
        RegistrationAnalytics.g();
    }

    (PhoneVerificationFragment phoneverificationfragment, String as[], TextView textview, CharSequence acharsequence[])
    {
        d = phoneverificationfragment;
        a = as;
        b = textview;
        c = acharsequence;
        super();
    }
}
