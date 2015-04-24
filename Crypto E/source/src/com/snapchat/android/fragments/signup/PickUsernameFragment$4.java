// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.view.View;
import android.widget.TextView;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            PickUsernameFragment

class a
    implements android.view.p.PickUsernameFragment._cls4
{

    final PickUsernameFragment a;

    public void onClick(View view)
    {
        String s = PickUsernameFragment.c(a).getText().toString().trim();
        (new gisterUsernameTask(a, s)).executeOnExecutor(ScExecutors.b, new String[0]);
        ViewUtils.a(PickUsernameFragment.d(a), PickUsernameFragment.c(a));
    }

    gisterUsernameTask(PickUsernameFragment pickusernamefragment)
    {
        a = pickusernamefragment;
        super();
    }
}
