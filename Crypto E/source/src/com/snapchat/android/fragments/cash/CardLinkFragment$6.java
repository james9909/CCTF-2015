// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.widget.ImageView;
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.ZipEditText;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CardLinkFragment

class a
    implements ValidatedInputCallback
{

    final CardLinkFragment a;

    public void a()
    {
        CardLinkFragment.a(a);
        CardLinkFragment.f(a).setVisibility(8);
    }

    public void b()
    {
        if (!CardLinkFragment.c(a))
        {
            CardLinkFragment.g(a).requestFocus();
        }
        CardLinkFragment.f(a).setVisibility(0);
    }

    public void c()
    {
        CardLinkFragment.d(a).requestFocus();
    }

    (CardLinkFragment cardlinkfragment)
    {
        a = cardlinkfragment;
        super();
    }
}
