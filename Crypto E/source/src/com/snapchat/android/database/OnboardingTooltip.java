// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.database:
//            SharedPreferenceKey

public final class OnboardingTooltip extends Enum
{

    public static final OnboardingTooltip a;
    public static final OnboardingTooltip b;
    public static final OnboardingTooltip c;
    public static final OnboardingTooltip d;
    public static final OnboardingTooltip e;
    public static final OnboardingTooltip f;
    public static final OnboardingTooltip g;
    public static final OnboardingTooltip h;
    private static final OnboardingTooltip j[];
    private String i;

    private OnboardingTooltip(String s, int k, String s1)
    {
        super(s, k);
        i = s1;
    }

    public static OnboardingTooltip a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            Timber.e("OnBoardingTooltip", (new StringBuilder()).append("Failed to convert an empty string(").append(s).append(") into OnboardingTooltip. ").toString(), new Object[0]);
            return h;
        }
        OnboardingTooltip onboardingtooltip;
        try
        {
            onboardingtooltip = valueOf(s.toUpperCase(Locale.US));
        }
        catch (Exception exception)
        {
            Timber.e("OnBoardingTooltip", (new StringBuilder()).append("Failed to convert ").append(s).append(" into OnboardingTooltip. ").append(exception).toString(), new Object[0]);
            return h;
        }
        return onboardingtooltip;
    }

    public static OnboardingTooltip valueOf(String s)
    {
        return (OnboardingTooltip)Enum.valueOf(com/snapchat/android/database/OnboardingTooltip, s);
    }

    public static OnboardingTooltip[] values()
    {
        return (OnboardingTooltip[])j.clone();
    }

    public String a()
    {
        return i;
    }

    static 
    {
        a = new OnboardingTooltip("SNAP", 0, SharedPreferenceKey.L.a());
        b = new OnboardingTooltip("CAPTION", 1, SharedPreferenceKey.M.a());
        c = new OnboardingTooltip("SWIPE_FILTERS", 2, SharedPreferenceKey.N.a());
        d = new OnboardingTooltip("MY_STORY", 3, SharedPreferenceKey.O.a());
        e = new OnboardingTooltip("FIRST_LOCATION", 4, SharedPreferenceKey.Q.a());
        f = new OnboardingTooltip("PROFILE", 5, SharedPreferenceKey.bh.a());
        g = new OnboardingTooltip("NEW_FRIEND_REQUEST", 6, SharedPreferenceKey.bi.a());
        h = new OnboardingTooltip("UNKNOWN", 7, null);
        OnboardingTooltip aonboardingtooltip[] = new OnboardingTooltip[8];
        aonboardingtooltip[0] = a;
        aonboardingtooltip[1] = b;
        aonboardingtooltip[2] = c;
        aonboardingtooltip[3] = d;
        aonboardingtooltip[4] = e;
        aonboardingtooltip[5] = f;
        aonboardingtooltip[6] = g;
        aonboardingtooltip[7] = h;
        j = aonboardingtooltip;
    }
}
