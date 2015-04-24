// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.model.RecentStoryCollection;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter

class a
    implements android.view.er
{

    final RecentStoryCollection a;
    final StoriesAdapter b;

    public void onClick(View view)
    {
        StoriesAdapter.a(b).a(a);
    }

    riesAdapterInterface(StoriesAdapter storiesadapter, RecentStoryCollection recentstorycollection)
    {
        b = storiesadapter;
        a = recentstorycollection;
        super();
    }
}
