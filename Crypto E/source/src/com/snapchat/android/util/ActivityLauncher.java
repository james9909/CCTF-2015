// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.Timber;

public class ActivityLauncher
{

    public ActivityLauncher()
    {
    }

    public static void a(Activity activity)
    {
        if (activity == null || activity.getClass() == com/snapchat/android/LoginAndSignupActivity)
        {
            return;
        } else
        {
            Intent intent = new Intent(activity, com/snapchat/android/LoginAndSignupActivity);
            intent.addFlags(0x4000000);
            intent.addFlags(0x10000000);
            activity.startActivity(intent);
            Object aobj[] = new Object[1];
            aobj[0] = intent.toString();
            Timber.c("ActivityLauncher", "Launching LoginAndSignupActivity [%s]", aobj);
            activity.finish();
            return;
        }
    }

    public static void a(Context context)
    {
        try
        {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(context.getString(0x7f0c0123))));
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(context.getString(0x7f0c0162))));
        }
    }

    public static void a(Context context, String s)
    {
        try
        {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            a(context);
        }
    }
}
