// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.support.v4.app.FragmentActivity;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddedMeFragment

class a
    implements android.view.er
{

    final AddedMeFragment a;

    public void onClick(View view)
    {
        a.getActivity().onBackPressed();
    }

    A(AddedMeFragment addedmefragment)
    {
        a = addedmefragment;
        super();
    }
}
