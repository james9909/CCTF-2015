// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;

public final class gv
{

    public static void a(Context context, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = o(context).edit();
        editor.putBoolean("use_https", flag);
        editor.commit();
    }

    private static SharedPreferences o(Context context)
    {
        return context.getSharedPreferences("admob", 0);
    }

    public static boolean p(Context context)
    {
        return o(context).getBoolean("use_https", true);
    }
}
