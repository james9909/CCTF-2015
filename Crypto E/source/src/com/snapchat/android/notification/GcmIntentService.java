// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.DeviceSyncTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.cache.Storage;

// Referenced classes of package com.snapchat.android.notification:
//            NotificationRegistrar, GcmMessageReceiver

public class GcmIntentService extends IntentService
{

    private static SnapchatServiceManager a = SnapchatServiceManager.a();

    public GcmIntentService()
    {
        super("GcmIntentService");
    }

    private static void a(Context context, Intent intent)
    {
        Timber.c("GcmIntentService", "handleIntent", new Object[0]);
        Storage.a(context.getCacheDir(), context.getExternalCacheDir());
        String s = intent.getStringExtra("registration_id");
        if (!TextUtils.isEmpty(s))
        {
            NotificationRegistrar.a(context, s);
            if (!TextUtils.equals(s, UserPrefs.q()))
            {
                Timber.c("GcmIntentService", "Running DeviceSyncTask because the user's notification ID is different from the GCM reg ID.", new Object[0]);
                (new DeviceSyncTask(s)).k();
            }
            return;
        } else
        {
            a.a(context, intent);
            return;
        }
    }

    protected void onHandleIntent(Intent intent)
    {
        String s = GoogleCloudMessaging.getInstance(this).getMessageType(intent);
        StringBuilder stringbuilder = (new StringBuilder()).append("onHandleIntent messageType=").append(s).append(", intent=").append(intent).append(", extras=");
        android.os.Bundle bundle;
        if (intent == null)
        {
            bundle = null;
        } else
        {
            bundle = intent.getExtras();
        }
        Timber.c("GcmIntentService", stringbuilder.append(bundle).toString(), new Object[0]);
        if ("gcm".equals(s))
        {
            a(this, intent);
        } else
        {
            Timber.e("GcmIntentService", "GCM received a tickle for an error or deleted messages on server.", new Object[0]);
        }
        GcmMessageReceiver.completeWakefulIntent(intent);
    }

}
