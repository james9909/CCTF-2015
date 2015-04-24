// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.ui.dialog.TwoButtonDialog;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder

class b extends TwoButtonDialog
{

    final StorySnapLogbook a;
    final StoriesListItemViewHolder b;
    final StoriesAdapter c;

    protected void a()
    {
    }

    protected void b()
    {
        StoriesAdapter.a(c, a, b);
    }

    ewHolder(StoriesAdapter storiesadapter, Context context, String s, String s1, String s2, StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        c = storiesadapter;
        a = storysnaplogbook;
        b = storieslistitemviewholder;
        super(context, s, s1, s2);
    }
}
