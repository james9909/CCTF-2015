// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements android.view.ener
{

    final FeedFragment a;

    public void onClick(View view)
    {
        FeedFragment.s(a).setText("");
    }

    _cls9(FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
