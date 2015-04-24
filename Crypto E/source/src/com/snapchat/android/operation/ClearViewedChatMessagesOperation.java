// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.operation:
//            Operation

public class ClearViewedChatMessagesOperation
    implements Operation
{

    private final Intent a;

    public ClearViewedChatMessagesOperation(Intent intent)
    {
        a = intent;
    }

    private boolean c(Context context)
    {
        return ((KeyguardManager)context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public Intent a()
    {
        return a;
    }

    public void a(Context context)
    {
        if (a == null)
        {
            return;
        }
        String s = a.getStringExtra("conversationId");
        User user = User.a(context);
        ChatConversation chatconversation = ConversationUtils.a(s);
        if (chatconversation != null)
        {
            AnalyticsEvents.a(c(context), UserPrefs.k(), chatconversation.t());
            chatconversation.c(false);
            chatconversation.w();
        }
        com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[1];
        adatabasetable[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.v;
        user.a(adatabasetable);
        ChatFragment.l();
    }

    public void b(Context context)
    {
    }
}
