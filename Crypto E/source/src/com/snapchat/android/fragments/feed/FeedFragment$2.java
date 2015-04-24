// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.view.View;
import android.widget.TextView;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements android.view.kListener
{

    final FeedFragment a;

    public boolean onLongClick(View view)
    {
        FeedFragment.b(a);
        view.setVisibility(8);
        FeedFragment.c(a).setText((new StringBuilder()).append(UserPrefs.e()).append(" | ").append(UserPrefs.d()).toString());
        FeedFragment.c(a).setVisibility(0);
        return true;
    }

    (FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
