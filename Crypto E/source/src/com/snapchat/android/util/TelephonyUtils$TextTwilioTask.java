// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.telephony.SmsManager;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.util:
//            TelephonyUtils

static class  extends AsyncTask
{

    private Context a;

    protected transient Void a(Void avoid[])
    {
        if (UserPrefs.f() != null && UserPrefs.f().equals(""))
        {
            String s = UserPrefs.b();
            String s1 = (new StringBuilder()).append("Send this text to verify your mobile number. (").append(UserPrefs.c()).append(")").toString();
            PendingIntent pendingintent = PendingIntent.getBroadcast(a, 0, new Intent("SMS_SEND_INTENT_RESULT"), 0);
            SmsManager.getDefault().sendTextMessage(s, null, s1, pendingintent, null);
        }
        return null;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }
}
