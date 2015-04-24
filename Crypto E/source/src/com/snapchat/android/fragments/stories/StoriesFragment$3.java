// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.util.fragment.FragmentPageChangeCallback;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements android.view.er
{

    final StoriesFragment a;

    public void onClick(View view)
    {
        if (a.h)
        {
            StoriesFragment.b(a);
        }
        StoriesFragment.c(a).a(4, true);
    }

    back(StoriesFragment storiesfragment)
    {
        a = storiesfragment;
        super();
    }
}
