// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import com.snapchat.android.api.DeleteStorySnapTask;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.server.ServerResponse;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder

class b extends DeleteStorySnapTask
{

    final StorySnapLogbook a;
    final StoriesListItemViewHolder b;
    final StoriesAdapter c;

    protected void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
        StoriesAdapter.a(c, b, false);
    }

    protected void a(String s, int i)
    {
        super.a(s, i);
        a.a(com.snapchat.android.model.ActionState.READY);
    }

    protected void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        a.a(com.snapchat.android.model.ActionState.DELETED);
        StoriesAdapter.a(c).c();
        c.a();
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        a.a(com.snapchat.android.model.ActionState.DELETING);
        StoriesAdapter.a(c, b, true);
    }

    ewHolder(StoriesAdapter storiesadapter, StorySnapLogbook storysnaplogbook, Context context, StorySnapLogbook storysnaplogbook1, StoriesListItemViewHolder storieslistitemviewholder)
    {
        c = storiesadapter;
        a = storysnaplogbook1;
        b = storieslistitemviewholder;
        super(storysnaplogbook, context);
    }
}
