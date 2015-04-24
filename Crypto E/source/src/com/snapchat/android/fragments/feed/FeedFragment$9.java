// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.view.View;
import com.snapchat.android.api.chat.LoadFeedPageTask;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment, FeedAdapter

class a
    implements android.view.tener
{

    final FeedFragment a;

    public void onClick(View view)
    {
        if (!FeedFragment.l(a).isEmpty())
        {
            LoadFeedPageTask.a(a);
        }
    }

    (FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
