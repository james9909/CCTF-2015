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

class older extends esFriendActionTask
{

    final String a;
    final b b;

    protected void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        b.b.d(a);
        b.b.a();
    }

    older(older older, FriendAction friendaction, Friend friend, String s, String s1, boolean flag, String s2, 
            StoriesListItemViewHolder storieslistitemviewholder, String s3)
    {
        b = older;
        a = s3;
        super(older.esFriendActionTask, friendaction, friend, s, s1, flag, s2, storieslistitemviewholder, null);
    }

    // Unreferenced inner class com/snapchat/android/fragments/stories/StoriesAdapter$17

/* anonymous class */
    class StoriesAdapter._cls17 extends EditNameDialog
    {

        final Friend a;
        final StoriesListItemViewHolder b;
        final StoriesAdapter c;

        protected void a(String s)
        {
            (new StoriesAdapter._cls17._cls1(this, FriendAction.SET_DISPLAY_NAME, a, a.a(), s, false, a.b(), b, s)).executeOnExecutor(ScExecutors.b, new String[0]);
        }

            
            {
                c = storiesadapter;
                a = friend1;
                b = storieslistitemviewholder;
                super(context, friend);
            }
    }

}
