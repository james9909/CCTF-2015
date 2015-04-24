// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.Date;
import net.hockeyapp.android.tasks.CheckUpdateTask;

// Referenced classes of package net.hockeyapp.android:
//            UpdateManagerListener, ExpiryInfoActivity

public class UpdateManager
{

    private static CheckUpdateTask a = null;
    private static UpdateManagerListener b = null;

    public UpdateManager()
    {
    }

    public static Boolean a()
    {
        boolean flag;
        Boolean boolean1;
        if (android.os.Build.VERSION.SDK_INT >= 11 && android/app/Fragment != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            boolean1 = Boolean.valueOf(flag);
        }
        catch (NoClassDefFoundError noclassdeffounderror)
        {
            return Boolean.valueOf(false);
        }
        return boolean1;
    }

    public static Boolean a(WeakReference weakreference)
    {
        if (weakreference != null)
        {
            Activity activity = (Activity)weakreference.get();
            if (activity != null)
            {
                Configuration configuration = activity.getResources().getConfiguration();
                boolean flag;
                if ((0xf & configuration.screenLayout) == 3 || (0xf & configuration.screenLayout) == 4)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return Boolean.valueOf(flag);
            }
        }
        return Boolean.valueOf(false);
    }

    public static void a(Activity activity, String s)
    {
        a(activity, s, null);
    }

    public static void a(Activity activity, String s, String s1, UpdateManagerListener updatemanagerlistener)
    {
        b = updatemanagerlistener;
        WeakReference weakreference;
        for (weakreference = new WeakReference(activity); a().booleanValue() && d(weakreference) || a(weakreference, updatemanagerlistener) || b(weakreference);)
        {
            return;
        }

        a(weakreference, s, s1, updatemanagerlistener);
    }

    public static void a(Activity activity, String s, UpdateManagerListener updatemanagerlistener)
    {
        a(activity, "https://sdk.hockeyapp.net/", s, updatemanagerlistener);
    }

    private static void a(WeakReference weakreference, String s, String s1, UpdateManagerListener updatemanagerlistener)
    {
        if (a == null || a.getStatus() == android.os.AsyncTask.Status.FINISHED)
        {
            a = new CheckUpdateTask(weakreference, s, s1, updatemanagerlistener);
            a.execute(new String[0]);
            return;
        } else
        {
            a.a(weakreference);
            return;
        }
    }

    private static boolean a(WeakReference weakreference, UpdateManagerListener updatemanagerlistener)
    {
        boolean flag;
        boolean flag1;
        if (updatemanagerlistener != null)
        {
            Date date = updatemanagerlistener.e();
            if (date != null && (new Date()).compareTo(date) > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag = false;
            if (flag1)
            {
                flag = updatemanagerlistener.f();
            }
        } else
        {
            flag = false;
            flag1 = false;
        }
        if (flag1 && flag)
        {
            c(weakreference);
        }
        return flag1;
    }

    public static UpdateManagerListener b()
    {
        return b;
    }

    private static boolean b(WeakReference weakreference)
    {
        boolean flag;
        Activity activity;
        boolean flag1;
        flag = true;
        activity = (Activity)weakreference.get();
        flag1 = false;
        if (activity == null) goto _L2; else goto _L1
_L1:
        String s = activity.getPackageManager().getInstallerPackageName(activity.getPackageName());
        if (android.os.Build.VERSION.SDK_INT < 9) goto _L4; else goto _L3
_L3:
        if (s == null) goto _L6; else goto _L5
_L5:
        if (s.isEmpty()) goto _L6; else goto _L7
_L7:
        boolean flag2 = flag;
          goto _L8
_L4:
        if (s == null) goto _L10; else goto _L9
_L9:
        int i;
        try
        {
            i = s.length();
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (i <= 0) goto _L10; else goto _L11
_L11:
        flag2 = flag;
        break; /* Loop/switch isn't completed */
_L10:
        flag = false;
        if (true) goto _L11; else goto _L8
_L8:
        flag1 = flag2;
_L2:
        return flag1;
_L6:
        flag2 = false;
        if (true) goto _L8; else goto _L12
_L12:
    }

    private static void c(WeakReference weakreference)
    {
        if (weakreference != null)
        {
            Activity activity = (Activity)weakreference.get();
            if (activity != null)
            {
                activity.finish();
                Intent intent = new Intent(activity, net/hockeyapp/android/ExpiryInfoActivity);
                intent.addFlags(0x14000000);
                activity.startActivity(intent);
            }
        }
    }

    private static boolean d(WeakReference weakreference)
    {
        if (weakreference != null)
        {
            Activity activity = (Activity)weakreference.get();
            if (activity != null)
            {
                return activity.getFragmentManager().findFragmentByTag("hockey_update_dialog") != null;
            }
        }
        return false;
    }

}
