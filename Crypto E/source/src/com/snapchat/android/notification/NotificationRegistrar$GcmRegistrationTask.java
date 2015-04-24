// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.DeviceSyncTask;
import com.snapchat.android.model.UserPrefs;
import java.io.IOException;

// Referenced classes of package com.snapchat.android.notification:
//            NotificationRegistrar

class <init> extends AsyncTask
{

    final NotificationRegistrar a;

    protected transient Void a(Void avoid[])
    {
        try
        {
            GoogleCloudMessaging googlecloudmessaging = GoogleCloudMessaging.getInstance(NotificationRegistrar.a(a));
            NotificationRegistrar.a(a, googlecloudmessaging.register(new String[] {
                "191410808405"
            }));
            Timber.c("NotificationRegistrar", (new StringBuilder()).append("Device registered, registration id = ").append(NotificationRegistrar.b(a)).toString(), new Object[0]);
            NotificationRegistrar.a(NotificationRegistrar.a(a), NotificationRegistrar.b(a));
        }
        catch (IOException ioexception)
        {
            Timber.e("NotificationRegistrar", (new StringBuilder()).append("Error :").append(ioexception.getMessage()).toString(), new Object[0]);
        }
        return null;
    }

    protected void a(Void void1)
    {
        if (!TextUtils.equals(NotificationRegistrar.b(a), UserPrefs.q()))
        {
            (new DeviceSyncTask(NotificationRegistrar.b(a))).g();
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }

    private Q(NotificationRegistrar notificationregistrar)
    {
        a = notificationregistrar;
        super();
    }

    a(NotificationRegistrar notificationregistrar, a a1)
    {
        this(notificationregistrar);
    }
}
