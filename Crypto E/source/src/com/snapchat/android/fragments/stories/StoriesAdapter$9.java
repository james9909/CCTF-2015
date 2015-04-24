// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ToggleStoryEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder, StoryGroupStoriesListItem

class b
    implements android.view.ner
{

    final StoriesListItemViewHolder a;
    final StoryGroupStoriesListItem b;
    final StoriesAdapter c;

    public void onClick(View view)
    {
        if (!a.w())
        {
            StoriesAdapter.a(c, a.H);
            if (!TextUtils.isEmpty(a.m.getText()))
            {
                if (StoriesAdapter.a(c).a(b.d()))
                {
                    if (b.e().l().size() == 0)
                    {
                        a.d(true);
                    }
                } else
                {
                    a.c(true);
                }
            }
            BusProvider.a().a(new ToggleStoryEvent(b.e()));
        }
        StoriesAdapter.b(c).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    ListItem(StoriesAdapter storiesadapter, StoriesListItemViewHolder storieslistitemviewholder, StoryGroupStoriesListItem storygroupstorieslistitem)
    {
        c = storiesadapter;
        a = storieslistitemviewholder;
        b = storygroupstorieslistitem;
        super();
    }
}
