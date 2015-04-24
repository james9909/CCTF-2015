// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import net.hockeyapp.android.utils.PrefsUtil;

// Referenced classes of package net.hockeyapp.android:
//            Constants

public class Tracking
{

    public Tracking()
    {
    }

    public static long a(Context context)
    {
        if (!b(context))
        {
            return 0L;
        } else
        {
            return c(context).getLong((new StringBuilder()).append("usageTime").append(Constants.b).toString(), 0L) / 1000L;
        }
    }

    public static void a(Activity activity)
    {
        long l = System.currentTimeMillis();
        if (activity == null)
        {
            return;
        } else
        {
            android.content.SharedPreferences.Editor editor = c(activity).edit();
            editor.putLong((new StringBuilder()).append("startTime").append(activity.hashCode()).toString(), l);
            PrefsUtil.a(editor);
            return;
        }
    }

    public static void b(Activity activity)
    {
        long l;
        l = System.currentTimeMillis();
        break MISSING_BLOCK_LABEL_4;
        if (activity != null && b(((Context) (activity))))
        {
            SharedPreferences sharedpreferences = c(activity);
            long l1 = sharedpreferences.getLong((new StringBuilder()).append("startTime").append(activity.hashCode()).toString(), 0L);
            long l2 = sharedpreferences.getLong((new StringBuilder()).append("usageTime").append(Constants.b).toString(), 0L);
            if (l1 > 0L)
            {
                long l3 = l - l1;
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putLong((new StringBuilder()).append("usageTime").append(Constants.b).toString(), l3 + l2);
                PrefsUtil.a(editor);
                return;
            }
        }
        return;
    }

    private static boolean b(Context context)
    {
        if (Constants.b == null)
        {
            Constants.a(context);
            if (Constants.b == null)
            {
                return false;
            }
        }
        return true;
    }

    private static SharedPreferences c(Context context)
    {
        return context.getSharedPreferences("HockeyApp", 0);
    }
}
