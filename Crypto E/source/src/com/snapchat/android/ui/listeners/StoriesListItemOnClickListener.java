// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.view.View;
import com.snapchat.android.fragments.stories.StoriesListItem;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            SelectableListItemOnClickListener

public class StoriesListItemOnClickListener extends SelectableListItemOnClickListener
{

    private com.snapchat.android.fragments.stories.StoriesAdapter.StoriesAdapterInterface a;
    private StoriesListItem b;

    public StoriesListItemOnClickListener(SelectableListItemOnClickListener.SelectableListItemInterface selectablelistiteminterface, com.snapchat.android.fragments.stories.StoriesAdapter.StoriesAdapterInterface storiesadapterinterface, StoriesListItem storieslistitem)
    {
        super(-1, selectablelistiteminterface);
        a = storiesadapterinterface;
        b = storieslistitem;
    }

    public void onClick(View view)
    {
        super.onClick(view);
        a.a(b);
    }
}
