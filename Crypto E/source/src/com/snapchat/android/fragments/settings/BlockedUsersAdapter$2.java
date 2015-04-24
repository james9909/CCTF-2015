// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            BlockedUsersAdapter

class b extends FriendActionTask
{

    final ewHolder a;
    final Friend b;
    final BlockedUsersAdapter c;

    protected void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
        a.u();
    }

    protected void a(String s, int i)
    {
        AlertDialogUtils.a(0x7f0c00f1, BlockedUsersAdapter.a(c));
    }

    protected void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        int i = BlockedUsersAdapter.c(c).indexOf(b);
        c.d(i);
        UserPrefs.ak();
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    ewHolder(BlockedUsersAdapter blockedusersadapter, Friend friend, FriendAction friendaction, ewHolder ewholder, Friend friend1)
    {
        c = blockedusersadapter;
        a = ewholder;
        b = friend1;
        super(friend, friendaction);
    }
}
