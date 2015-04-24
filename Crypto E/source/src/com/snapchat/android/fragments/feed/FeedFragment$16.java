// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.view.View;
import android.widget.ListView;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements Runnable
{

    final FeedFragment a;

    public void run()
    {
        FeedFragment.d(a).setSelection(0);
        View view = FeedFragment.d(a).getChildAt(0);
        if (view != null)
        {
            view.requestFocus();
        }
    }

    _cls9(FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
