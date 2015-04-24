// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.ui.dialog.ConfirmSaveStoryToGalleryDialog;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter

class a
    implements android.view.er
{

    final StoryGroup a;
    final StoriesAdapter b;

    public void onClick(View view)
    {
        (new ConfirmSaveStoryToGalleryDialog(StoriesAdapter.c(b), a)).a();
    }

    ialog(StoriesAdapter storiesadapter, StoryGroup storygroup)
    {
        b = storiesadapter;
        a = storygroup;
        super();
    }
}
