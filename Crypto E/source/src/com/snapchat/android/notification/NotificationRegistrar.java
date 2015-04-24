// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.DeviceSyncTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.debug.ScApplicationInfo;
import java.io.IOException;
import java.sql.Timestamp;

public class NotificationRegistrar
{
    class GcmRegistrationTask extends AsyncTask
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

        private GcmRegistrationTask()
        {
            a = NotificationRegistrar.this;
            super();
        }

    }


    private Context a;
    private String b;

    public NotificationRegistrar(Context context)
    {
        a = context.getApplicationContext();
    }

    static Context a(NotificationRegistrar notificationregistrar)
    {
        return notificationregistrar.a;
    }

    private static SharedPreferences a(Context context)
    {
        return context.getSharedPreferences(com/snapchat/android/notification/NotificationRegistrar.getSimpleName(), 0);
    }

    static String a(NotificationRegistrar notificationregistrar, String s)
    {
        notificationregistrar.b = s;
        return s;
    }

    public static void a(Context context, String s)
    {
        SharedPreferences sharedpreferences = a(context);
        int i = ScApplicationInfo.c(context);
        Timber.a("NotificationRegistrar", (new StringBuilder()).append("Saving regId on app version ").append(i).toString(), new Object[0]);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("registrationId", s);
        editor.putInt("appVersion", i);
        long l = 0x240c8400L + System.currentTimeMillis();
        Timber.a("NotificationRegistrar", (new StringBuilder()).append("Setting registration expiry time to ").append(new Timestamp(l)).toString(), new Object[0]);
        editor.putLong("onServerExpirationTimeMs", l);
        editor.apply();
    }

    static String b(NotificationRegistrar notificationregistrar)
    {
        return notificationregistrar.b;
    }

    public void a(Activity activity)
    {
        Timber.c("NotificationRegistrar", "Checking reg on GCM", new Object[0]);
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(activity);
        if (i != 0)
        {
            GooglePlayServicesUtil.getErrorDialog(i, activity, 0).show();
            return;
        } else
        {
            (new GcmRegistrationTask()).executeOnExecutor(ScExecutors.b, new Void[0]);
            return;
        }
    }
}
