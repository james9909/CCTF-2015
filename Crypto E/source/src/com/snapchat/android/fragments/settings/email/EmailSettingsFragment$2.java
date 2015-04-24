// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.email;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.settings.email:
//            EmailSettingsFragment

class a
    implements android.view.gs.email.EmailSettingsFragment._cls2
{

    final EmailSettingsFragment a;

    public void onClick(View view)
    {
        ViewUtils.a(a.getActivity(), a.getView());
        a.getActivity().onBackPressed();
    }

    (EmailSettingsFragment emailsettingsfragment)
    {
        a = emailsettingsfragment;
        super();
    }
}
