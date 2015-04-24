// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements Runnable
{

    final StoriesFragment a;

    public void run()
    {
        StoriesFragment.f(a).setSelection(0);
        View view = StoriesFragment.f(a).getChildAt(0);
        if (view != null)
        {
            view.requestFocus();
        }
    }

    eadersListView(StoriesFragment storiesfragment)
    {
        a = storiesfragment;
        super();
    }
}
