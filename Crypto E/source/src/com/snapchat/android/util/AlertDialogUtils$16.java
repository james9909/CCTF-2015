// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.DialogInterface;
import android.os.Message;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils, ScExecutors

static final class c
    implements android.content.ickListener
{

    final Friend a;
    final Message b;
    final com.snapchat.android.analytics.yticsContext c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        (new FriendActionTask(a, FriendAction.UNBLOCK)).a(b).a(c).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    .AnalyticsContext(Friend friend, Message message, com.snapchat.android.analytics.yticsContext yticscontext)
    {
        a = friend;
        b = message;
        c = yticscontext;
        super();
    }
}
