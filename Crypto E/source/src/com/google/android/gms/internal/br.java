// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            bo, ab, bq, bp

public final class br
{

    public static bo pA = bo.a("gads:sdk_crash_report_full_stacktrace", Boolean.valueOf(false));
    public static bo pB = bo.a("gads:block_autoclicks", Boolean.valueOf(false));
    public static bo pC = bo.y("gads:block_autoclicks_experiment_id");
    public static bo pD = bo.y("gads:prefetch:experiment_id");
    public static bo pE = bo.y("gads:spam_app_context:experiment_id");
    public static bo pF = bo.a("gads:spam_app_context:enabled", Boolean.valueOf(false));
    public static bo pG = bo.a("gads:enable_content_fetching", Boolean.valueOf(false));
    public static bo pH = bo.a("gads:content_length_weight", 1);
    public static bo pI = bo.a("gads:content_age_weight", 1);
    public static bo pJ = bo.a("gads:min_content_len", 11);
    public static bo pK = bo.a("gads:fingerprint_number", 10);
    public static bo pL = bo.a("gads:sleep_sec", 10);
    public static bo pM = bo.y("gads:kitkat_interstitial_workaround:experiment_id");
    public static bo pN = bo.a("gads:kitkat_interstitial_workaround:enabled", Boolean.valueOf(true));
    public static bo px = bo.y("gads:sdk_core_experiment_id");
    public static bo py = bo.a("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
    public static bo pz = bo.a("gads:sdk_crash_report_enabled", Boolean.valueOf(false));

    public static void a(Runnable runnable)
    {
        ab.aJ().a(runnable);
    }

    public static List bF()
    {
        return ab.aI().bF();
    }

    public static void j(Context context)
    {
        ab.aJ().j(context);
    }

}
