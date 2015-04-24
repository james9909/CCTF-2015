// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidannotations.api.sharedpreferences;

import java.lang.reflect.Method;

public abstract class SharedPreferencesCompat
{

    private static final Method a = a();

    private SharedPreferencesCompat()
    {
    }

    private static Method a()
    {
        Method method;
        try
        {
            method = android/content/SharedPreferences$Editor.getMethod("apply", new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return method;
    }

}
