// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CardLinkFragment

class a
    implements ValidatedInputCallback
{

    final CardLinkFragment a;

    public void a()
    {
        CardLinkFragment.a(a);
        com.snapchat.android.api2.cash.blockers.CardInputError cardinputerror = CardLinkFragment.b(a).getCardInputError();
        if (cardinputerror != null)
        {
            a.a(cardinputerror);
        }
    }

    public void b()
    {
        if (!CardLinkFragment.c(a))
        {
            CardLinkFragment.d(a).requestFocus();
        }
    }

    public void c()
    {
    }

    (CardLinkFragment cardlinkfragment)
    {
        a = cardlinkfragment;
        super();
    }
}
