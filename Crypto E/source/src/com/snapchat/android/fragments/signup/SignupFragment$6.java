// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            SignupFragment

class a
    implements android.view.eListener
{

    final SignupFragment a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            AnalyticsEvents.r();
            return;
        } else
        {
            SignupFragment.b(a, false);
            return;
        }
    }

    (SignupFragment signupfragment)
    {
        a = signupfragment;
        super();
    }
}
