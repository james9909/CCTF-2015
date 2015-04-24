// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.viewholders;

import android.view.View;
import android.widget.CheckBox;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.ui.viewholders:
//            AddFriendViewHolder

public class e
    implements android.view.heckboxOnClickListener
{

    final AddFriendViewHolder a;
    private final com.snapchat.android.analytics.ener.d b;
    private final com.snapchat.android.analytics.ener.d c;
    private final String d;
    private final Friend e;

    public void onClick(View view)
    {
        boolean flag = a.J.isChecked();
        FriendAction friendaction;
        AddFriendViewHolder addfriendviewholder;
        boolean flag1;
        if (flag)
        {
            friendaction = FriendAction.ADD;
            if (RegistrationAnalytics.a())
            {
                AnalyticsEvents.k(e.a());
            }
        } else
        {
            friendaction = FriendAction.DELETE;
            if (RegistrationAnalytics.a())
            {
                AnalyticsEvents.l(e.a());
            }
        }
        addfriendviewholder = a;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        addfriendviewholder.a(true, flag1);
        (new FriendActionTask(e, friendaction, a)).a(c).a(b).executeOnExecutor(ScExecutors.b, new String[0]);
        AnalyticsEvents.a(friendaction, b.b(), e, c, d);
    }

    public (AddFriendViewHolder addfriendviewholder, com.snapchat.android.analytics.ener ener, com.snapchat.android.analytics.ener ener1, String s, Friend friend)
    {
        a = addfriendviewholder;
        super();
        b = ener;
        c = ener1;
        d = s;
        e = friend;
    }
}
