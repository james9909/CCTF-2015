// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.chat.ChatMessageReleaser;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.notification.AndroidNotificationManager;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.operation:
//            Operation

public class NotificationOperation
    implements Operation
{

    private final Intent a;

    public NotificationOperation(Intent intent)
    {
        a = intent;
    }

    public Intent a()
    {
        return a;
    }

    public void a(Context context)
    {
        if (a != null)
        {
            Intent intent = (Intent)a.getParcelableExtra("gcm_intent");
            SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
            boolean flag = sharedpreferences.getBoolean(SharedPreferenceKey.aw.a(), true);
            boolean flag1 = sharedpreferences.getBoolean("snapchatUserIsLoggedIn", true);
            boolean flag2 = a.getBooleanExtra("clear", false);
            boolean flag3 = a.getBooleanExtra("display_notifications", false);
            String s = a.getStringExtra("notification_type");
            AndroidNotificationManager androidnotificationmanager = AndroidNotificationManager.a();
            if (flag3)
            {
                androidnotificationmanager.b(context);
                return;
            }
            if (flag2)
            {
                if (TextUtils.isEmpty(s))
                {
                    androidnotificationmanager.a(context);
                    return;
                } else
                {
                    androidnotificationmanager.a(context, com.snapchat.android.notification.AndroidNotificationManager.Type.valueOf(s));
                    return;
                }
            }
            if (intent != null)
            {
                Bundle bundle = intent.getExtras();
                if (flag && flag1 && bundle != null)
                {
                    androidnotificationmanager.a(context, bundle, sharedpreferences);
                    String s1 = bundle.getString("type");
                    if (!TextUtils.isEmpty(s1))
                    {
                        com.snapchat.android.notification.AndroidNotificationManager.Type type = com.snapchat.android.notification.AndroidNotificationManager.Type.valueOf(s1.toUpperCase(Locale.US));
                        if (type == com.snapchat.android.notification.AndroidNotificationManager.Type.b || type == com.snapchat.android.notification.AndroidNotificationManager.Type.g || type == com.snapchat.android.notification.AndroidNotificationManager.Type.j)
                        {
                            String s2 = bundle.getString("sender_username");
                            if (!TextUtils.isEmpty(s2))
                            {
                                com.snapchat.android.model.chat.ChatConversation chatconversation = ConversationUtils.b(s2);
                                if (chatconversation != null)
                                {
                                    (new ChatMessageReleaser()).a(chatconversation, System.currentTimeMillis() - 0x493e0L);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void b(Context context)
    {
    }
}
