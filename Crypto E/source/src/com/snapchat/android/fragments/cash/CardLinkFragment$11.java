// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.app.Activity;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CardLinkFragment

class a
    implements Runnable
{

    final CardLinkFragment a;

    public void run()
    {
        CardLinkFragment.a(a, true);
        android.support.v4.app.FragmentActivity fragmentactivity = a.getActivity();
        if (CardLinkFragment.l(a) && fragmentactivity != null)
        {
            fragmentactivity.onBackPressed();
        }
    }

    (CardLinkFragment cardlinkfragment)
    {
        a = cardlinkfragment;
        super();
    }
}
