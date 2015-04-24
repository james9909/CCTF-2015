// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import com.snapchat.android.ui.cash.ZipEditText;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CardLinkFragment

class a
    implements android.view.
{

    final CardLinkFragment a;

    public void onClick(View view)
    {
        CardLinkFragment.h(a);
        CardLinkFragment.i(a).setText("");
        CardLinkFragment.i(a).setClickable(false);
        CardLinkFragment.j(a).setVisibility(0);
        CardLinkFragment.k(a).a(CardLinkFragment.b(a).getUnformattedText(), CardLinkFragment.d(a).getUnformattedText(), CardLinkFragment.e(a).getUnformattedText(), CardLinkFragment.g(a).getUnformattedText(), a);
    }

    dDetailsListener(CardLinkFragment cardlinkfragment)
    {
        a = cardlinkfragment;
        super();
    }
}
