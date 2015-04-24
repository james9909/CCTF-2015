// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;

import android.content.Context;
import android.location.Criteria;
import com.flurry.sdk.cx;
import com.flurry.sdk.dl;
import com.flurry.sdk.dn;
import com.flurry.sdk.dp;
import com.flurry.sdk.dq;
import com.flurry.sdk.dz;
import com.flurry.sdk.el;
import com.flurry.sdk.fb;
import java.util.Date;
import java.util.Map;

public final class FlurryAgent
{

    private static final String a = com/flurry/android/FlurryAgent.getSimpleName();

    private FlurryAgent()
    {
    }

    public static void addOrigin(String s, String s1)
    {
        addOrigin(s, s1, null);
    }

    public static void addOrigin(String s, String s1, Map map)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("originName not specified");
        }
        if (s1 == null || s1.length() == 0)
        {
            throw new IllegalArgumentException("originVersion not specified");
        }
        try
        {
            cx.a().a(s, s1, map);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, "", throwable);
        }
    }

    public static void clearLocation()
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dz.a().e();
            return;
        }
    }

    public static void endTimedEvent(String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        try
        {
            cx.a().b(s);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, (new StringBuilder()).append("Failed to signify the end of event: ").append(s).toString(), throwable);
        }
    }

    public static void endTimedEvent(String s, Map map)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        if (map == null)
        {
            el.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        try
        {
            cx.a().b(s, map);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, (new StringBuilder()).append("Failed to signify the end of event: ").append(s).toString(), throwable);
        }
    }

    public static int getAgentVersion()
    {
        return dn.a().b();
    }

    public static String getReleaseVersion()
    {
        return dn.a().g();
    }

    public static boolean getUseHttps()
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return false;
        } else
        {
            return ((Boolean)dp.a().a("UseHttps")).booleanValue();
        }
    }

    public static void logEvent(String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        try
        {
            cx.a().a(s);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), throwable);
        }
    }

    public static void logEvent(String s, Map map)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        if (map == null)
        {
            el.b(a, "String parameters passed to logEvent was null.");
            return;
        }
        try
        {
            cx.a().a(s, map);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), throwable);
        }
    }

    public static void logEvent(String s, Map map, boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        if (map == null)
        {
            el.b(a, "String parameters passed to logEvent was null.");
            return;
        }
        try
        {
            cx.a().a(s, map, flag);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), throwable);
        }
    }

    public static void logEvent(String s, boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        try
        {
            cx.a().a(s, flag);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), throwable);
        }
    }

    public static void onEndSession(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (context == null)
        {
            throw new NullPointerException("Null context");
        }
        try
        {
            dl.a().a(context);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, "", throwable);
        }
    }

    public static void onError(String s, String s1, String s2)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String errorId passed to onError was null.");
            return;
        }
        if (s1 == null)
        {
            el.b(a, "String message passed to onError was null.");
            return;
        }
        if (s2 == null)
        {
            el.b(a, "String errorClass passed to onError was null.");
            return;
        }
        try
        {
            cx.a().a(s, s1, s2);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, "", throwable);
        }
    }

    public static void onError(String s, String s1, Throwable throwable)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String errorId passed to onError was null.");
            return;
        }
        if (s1 == null)
        {
            el.b(a, "String message passed to onError was null.");
            return;
        }
        if (throwable == null)
        {
            el.b(a, "Throwable passed to onError was null.");
            return;
        }
        try
        {
            cx.a().a(s, s1, throwable);
            return;
        }
        catch (Throwable throwable1)
        {
            el.a(a, "", throwable1);
        }
    }

    public static void onEvent(String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to onEvent was null.");
            return;
        }
        try
        {
            cx.a().c(s);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, "", throwable);
        }
    }

    public static void onEvent(String s, Map map)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String eventId passed to onEvent was null.");
            return;
        }
        if (map == null)
        {
            el.b(a, "Parameters Map passed to onEvent was null.");
            return;
        }
        try
        {
            cx.a().c(s, map);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, "", throwable);
        }
    }

    public static void onPageView()
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        try
        {
            cx.a().c();
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, "", throwable);
        }
    }

    public static void onStartSession(Context context, String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (context == null)
        {
            throw new NullPointerException("Null context");
        }
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("Api key not specified");
        }
        try
        {
            dl.a().a(context, s);
            return;
        }
        catch (Throwable throwable)
        {
            el.a(a, "", throwable);
        }
    }

    public static void setAge(int i)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
        } else
        if (i > 0 && i < 110)
        {
            long l = (new Date((new Date(System.currentTimeMillis() - 0x7528ad000L * (long)i)).getYear(), 1, 1)).getTime();
            dp.a().a("Age", Long.valueOf(l));
            return;
        }
    }

    public static void setCaptureUncaughtExceptions(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dp.a().a("CaptureUncaughtExceptions", Boolean.valueOf(flag));
            return;
        }
    }

    public static void setContinueSessionMillis(long l)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (l < 5000L)
        {
            el.b(a, (new StringBuilder()).append("Invalid time set for session resumption: ").append(l).toString());
            return;
        } else
        {
            dp.a().a("ContinueSessionMillis", Long.valueOf(l));
            return;
        }
    }

    public static void setGender(byte byte0)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        switch (byte0)
        {
        default:
            dp.a().a("Gender", Byte.valueOf((byte)-1));
            return;

        case 0: // '\0'
        case 1: // '\001'
            dp.a().a("Gender", Byte.valueOf(byte0));
            break;
        }
    }

    public static void setLocation(float f, float f1)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dz.a().a(f, f1);
            return;
        }
    }

    public static void setLocationCriteria(Criteria criteria)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dp.a().a("LocationCriteria", criteria);
            return;
        }
    }

    public static void setLogEnabled(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (flag)
        {
            el.b();
            return;
        } else
        {
            el.a();
            return;
        }
    }

    public static void setLogEvents(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dp.a().a("LogEvents", Boolean.valueOf(flag));
            return;
        }
    }

    public static void setLogLevel(int i)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            el.a(i);
            return;
        }
    }

    public static void setReportLocation(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dp.a().a("ReportLocation", Boolean.valueOf(flag));
            return;
        }
    }

    public static void setReportUrl(String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dp.a().a("ReportUrl", s);
            return;
        }
    }

    public static void setUseHttps(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        } else
        {
            dp.a().a("UseHttps", Boolean.valueOf(flag));
            return;
        }
    }

    public static void setUserId(String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String userId passed to setUserId was null.");
            return;
        } else
        {
            dp.a().a("UserId", fb.a(s));
            return;
        }
    }

    public static void setVersionName(String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            el.b(a, "Device SDK Version older than 10");
            return;
        }
        if (s == null)
        {
            el.b(a, "String versionName passed to setVersionName was null.");
            return;
        } else
        {
            dp.a().a("VersionName", s);
            return;
        }
    }

}
