// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.DialogInterface;
import com.snapchat.android.model.Friend;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder

class b
    implements android.content.ClickListener
{

    final Friend a;
    final StoriesListItemViewHolder b;
    final StoriesAdapter c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            StoriesAdapter.b(c, a, b);
            return;

        case 1: // '\001'
            StoriesAdapter.c(c, a, b);
            return;

        case 2: // '\002'
            StoriesAdapter.d(c, a, b);
            break;
        }
    }

    wHolder(StoriesAdapter storiesadapter, Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        c = storiesadapter;
        a = friend;
        b = storieslistitemviewholder;
        super();
    }
}
