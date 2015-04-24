// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils, ScExecutors

static final class d
    implements android.content.ickListener
{

    final Context a;
    final Friend b;
    final Message c;
    final com.snapchat.android.analytics.yticsContext d;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            AlertDialogUtils.a(a, b, c, d);
            return;

        case 1: // '\001'
            (new FriendActionTask(b, FriendAction.DELETE)).a(c).a(d).executeOnExecutor(ScExecutors.b, new String[0]);
            return;

        case 2: // '\002'
            (new FriendActionTask(b, FriendAction.BLOCK)).a(d).a(c).executeOnExecutor(ScExecutors.b, new String[0]);
            break;
        }
    }

    .AnalyticsContext(Context context, Friend friend, Message message, com.snapchat.android.analytics.yticsContext yticscontext)
    {
        a = context;
        b = friend;
        c = message;
        d = yticscontext;
        super();
    }
}
