// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import com.snapchat.android.model.StorySnapLogbook;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItemViewHolder

class a
    implements Runnable
{

    final StorySnapLogbook a;
    final StoriesListItemViewHolder b;

    public void run()
    {
        if (a.k() == com.snapchat.android.model..SAVED)
        {
            a.a(com.snapchat.android.model..READY);
        }
    }

    (StoriesListItemViewHolder storieslistitemviewholder, StorySnapLogbook storysnaplogbook)
    {
        b = storieslistitemviewholder;
        a = storysnaplogbook;
        super();
    }
}
