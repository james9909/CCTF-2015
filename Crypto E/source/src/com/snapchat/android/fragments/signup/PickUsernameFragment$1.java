// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            PickUsernameFragment

class a
    implements TextWatcher
{

    final PickUsernameFragment a;

    public void afterTextChanged(Editable editable)
    {
        PickUsernameFragment.a(a, null);
        PickUsernameFragment.a(a);
        if (!PickUsernameFragment.b(a))
        {
            AnalyticsEvents.B();
            PickUsernameFragment.a(a, true);
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (PickUsernameFragment pickusernamefragment)
    {
        a = pickusernamefragment;
        super();
    }
}
