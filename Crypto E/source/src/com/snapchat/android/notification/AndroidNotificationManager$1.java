// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;

import com.snapchat.android.Timber;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.database.table.ConversationTable;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.notification:
//            AndroidNotificationManager

class b
    implements com.snapchat.android.api2.chat.ConversationPageTaskCallback
{

    final String a;
    final User b;
    final AndroidNotificationManager c;

    public void a(boolean flag)
    {
        Object aobj[] = new Object[2];
        aobj[0] = a;
        aobj[1] = Boolean.valueOf(flag);
        Timber.f("AndroidNotificationManager", "CHAT-LOG: AndroidNotificationManager LoadConversationPageTask completed for %s with success: %s", aobj);
        if (flag)
        {
            ChatConversation chatconversation = ConversationUtils.a(a);
            if (chatconversation != null)
            {
                if (chatconversation.aC())
                {
                    chatconversation.n(false);
                }
                ConversationTable.b().c(b);
            }
        }
    }

    versationPageTaskCallback(AndroidNotificationManager androidnotificationmanager, String s, User user)
    {
        c = androidnotificationmanager;
        a = s;
        b = user;
        super();
    }
}
