// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.model.Friend;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder

class b
    implements android.view.er
{

    final Friend a;
    final StoriesListItemViewHolder b;
    final StoriesAdapter c;

    public void onClick(View view)
    {
        StoriesAdapter.b(c).hideSoftInputFromWindow(view.getWindowToken(), 0);
        StoriesAdapter.a(c, a, b);
    }

    wHolder(StoriesAdapter storiesadapter, Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        c = storiesadapter;
        a = friend;
        b = storieslistitemviewholder;
        super();
    }
}
