// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import com.snapchat.android.model.StoryGroup;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItemViewHolder

class a
    implements Runnable
{

    final StoryGroup a;
    final StoriesListItemViewHolder b;

    public void run()
    {
        if (a.n() == com.snapchat.android.model.)
        {
            a.a(com.snapchat.android.model.);
        }
    }

    (StoriesListItemViewHolder storieslistitemviewholder, StoryGroup storygroup)
    {
        b = storieslistitemviewholder;
        a = storygroup;
        super();
    }
}
