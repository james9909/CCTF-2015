// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.content.res.Resources;
import android.os.Message;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.ui.EditTextDialog;

// Referenced classes of package com.snapchat.android.util:
//            LocalizationUtils, ScExecutors

public class EditNameDialog extends EditTextDialog
{

    private Friend a;
    private Message b;
    private com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext c;

    public EditNameDialog(Context context, Friend friend)
    {
        Object aobj[] = new Object[1];
        aobj[0] = friend.a();
        super(context, LocalizationUtils.a(0x7f0c00fe, aobj), friend.b(), null, 8193);
        c = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.MY_FRIENDS_POPUP;
        a = friend;
    }

    private EditNameDialog(Context context, String s, String s1, Friend friend, Message message)
    {
        super(context, s, s1, null, 8193);
        c = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.MY_FRIENDS_POPUP;
        a = friend;
        b = message;
        d = Integer.valueOf(context.getResources().getInteger(0x7f0b0000));
    }

    public static EditNameDialog a(Context context, Friend friend)
    {
        return a(context, friend, null);
    }

    public static EditNameDialog a(Context context, Friend friend, Message message)
    {
        return new EditNameDialog(context, LocalizationUtils.a(0x7f0c00fe, new Object[0]), friend.b(), friend, message);
    }

    public EditNameDialog a(com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext analyticscontext)
    {
        c = analyticscontext;
        return this;
    }

    public void a(String s)
    {
        String s1 = a.b();
        a.d(s);
        (new FriendActionTask(a, FriendAction.SET_DISPLAY_NAME, s1)).a(b).a(c).executeOnExecutor(ScExecutors.b, new String[0]);
    }
}
