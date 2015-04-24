// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


public final class cb extends Enum
{

    public static final cb a;
    public static final cb b;
    public static final cb c;
    public static final cb d;
    public static final cb e;
    public static final cb f;
    public static final cb g;
    public static final cb h;
    public static final cb i;
    public static final cb j;
    public static final cb k;
    public static final cb l;
    public static final cb m;
    private static final cb p[];
    private String n;
    private String o;

    private cb(String s, int i1, String s1, String s2)
    {
        super(s, i1);
        n = s1;
        o = s2;
    }

    public static cb valueOf(String s)
    {
        return (cb)Enum.valueOf(crittercism/android/cb, s);
    }

    public static cb[] values()
    {
        return (cb[])p.clone();
    }

    public final String a()
    {
        return n;
    }

    public final String b()
    {
        return o;
    }

    static 
    {
        a = new cb("APP_LOADS_FILES", 0, "com.crittercism.apploads", "appLoadFiles");
        b = new cb("HANDLED_EXCEPTION_FILES", 1, "com.crittercism.exceptions", "handledExceptionFiles");
        c = new cb("SDK_CRASHES_FILES", 2, "com.crittercism.sdkcrashes", "sdkCrashFiles");
        d = new cb("NDK_CRASHES_FILES", 3, "com.crittercism.ndkcrashes", "ndkCrashFiles");
        e = new cb("CURRENT_BREADCRUMBS_FILES", 4, "com.crittercism.breadcrumbs", "currentBreadcrumbFiles");
        f = new cb("PREVIOUS_BREADCRUMBS_FILES", 5, "com.crittercism.breadcrumbs", "previousBreadcrumbFiles");
        g = new cb("NETWORK_BREADCRUMBS_FILES", 6, "com.crittercism.breadcrumbs", "networkBreadcrumbFiles");
        h = new cb("RATE_APP_SETTING", 7, "com.crittercism.usersettings", "rateAppSettings");
        i = new cb("CRASHED_ON_LAST_LOAD_SETTING", 8, "com.crittercism.usersettings", "crashedOnLastLoad");
        j = new cb("OPT_OUT_STATUS_SETTING", 9, "com.crittercism.usersettings", "optOutStatusSettings");
        k = new cb("SESSION_ID_SETTING", 10, "com.crittercism.usersettings", "sessionIDSetting");
        l = new cb("OLD_SESSION_ID_SETTING", 11, "com.crittercism.prefs", "com.crittercism.prefs.sessid");
        m = new cb("OLD_OPT_OUT_STATUS_SETTING", 12, "com.crittercism.prefs", "optOutStatus");
        cb acb[] = new cb[13];
        acb[0] = a;
        acb[1] = b;
        acb[2] = c;
        acb[3] = d;
        acb[4] = e;
        acb[5] = f;
        acb[6] = g;
        acb[7] = h;
        acb[8] = i;
        acb[9] = j;
        acb[10] = k;
        acb[11] = l;
        acb[12] = m;
        p = acb;
    }
}
