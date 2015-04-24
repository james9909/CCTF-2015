// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.fragments:
//            ScAcceptTermsFragment

class a
    implements android.view.ptTermsFragment._cls4
{

    final ScAcceptTermsFragment a;

    public void onClick(View view)
    {
        UserPrefs.H();
        a.getActivity().finish();
    }

    (ScAcceptTermsFragment scaccepttermsfragment)
    {
        a = scaccepttermsfragment;
        super();
    }
}
