// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItem, StoriesListItemViewHolder

public class ExpandedStoriesListItemViewHolder
{

    StoriesListItem a;
    View b;
    StoriesListItemViewHolder c;
    boolean d;

    public ExpandedStoriesListItemViewHolder()
    {
    }

    void a()
    {
        c = null;
        b = null;
        a = null;
        d = false;
    }

    void a(View view, StoriesListItemViewHolder storieslistitemviewholder, StoriesListItem storieslistitem)
    {
        b = view;
        c = storieslistitemviewholder;
        d = true;
        a = storieslistitem;
    }

    public boolean b()
    {
        return d;
    }
}
