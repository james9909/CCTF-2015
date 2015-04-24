// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.Timber;
import java.lang.reflect.Method;

public final class SystemProperties
{

    private SystemProperties()
    {
    }

    public static String a(String s, String s1)
    {
        String s2;
        try
        {
            s2 = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] {
                java/lang/String, java/lang/String
            }).invoke(null, new Object[] {
                s, s1
            });
        }
        catch (Exception exception)
        {
            Timber.a("SystemProperties", exception);
            return s1;
        }
        return s2;
    }
}
