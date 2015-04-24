// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.EditNameDialog;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder

class b extends EditNameDialog
{

    final Friend a;
    final StoriesListItemViewHolder b;
    final StoriesAdapter c;

    protected void a(String s)
    {
        (new StoriesAdapter.StoriesFriendActionTask(FriendAction.SET_DISPLAY_NAME, a, a.a(), s, false, a.b(), b, s) {

            final String a;
            final StoriesAdapter._cls17 b;

            protected void b(ServerResponse serverresponse)
            {
                super.b(serverresponse);
                b.a.d(a);
                b.c.a();
            }

            
            {
                b = StoriesAdapter._cls17.this;
                a = s3;
                super(c, friendaction, friend, s, s1, flag, s2, storieslistitemviewholder, null);
            }
        }).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    wHolder(StoriesAdapter storiesadapter, Context context, Friend friend, Friend friend1, StoriesListItemViewHolder storieslistitemviewholder)
    {
        c = storiesadapter;
        a = friend1;
        b = storieslistitemviewholder;
        super(context, friend);
    }
}
