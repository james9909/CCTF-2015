// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.model.StorySnapLogbook;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder

class b
    implements android.view.ner
{

    final StorySnapLogbook a;
    final StoriesListItemViewHolder b;
    final StoriesAdapter c;

    public void onClick(View view)
    {
        StoriesAdapter.b(c).hideSoftInputFromWindow(view.getWindowToken(), 0);
        StoriesAdapter.c(c, a, b);
    }

    ewHolder(StoriesAdapter storiesadapter, StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        c = storiesadapter;
        a = storysnaplogbook;
        b = storieslistitemviewholder;
        super();
    }
}
