// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments;

import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;

// Referenced classes of package com.snapchat.android.fragments:
//            ScAcceptTermsFragment

class a
    implements android.content.stener
{

    final ScAcceptTermsFragment a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        ScAcceptTermsFragment.f(a).d();
        UserPrefs.m();
        FragmentActivity fragmentactivity = a.getActivity();
        fragmentactivity.setResult(1);
        fragmentactivity.finish();
    }

    (ScAcceptTermsFragment scaccepttermsfragment)
    {
        a = scaccepttermsfragment;
        super();
    }
}
