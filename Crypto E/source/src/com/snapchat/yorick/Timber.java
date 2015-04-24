// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class Timber
{

    private static final Pattern a = Pattern.compile("\\$\\d+$");

    private Timber()
    {
    }

    private static String a()
    {
        String s = Thread.currentThread().getStackTrace()[4].getClassName();
        Matcher matcher = a.matcher(s);
        if (matcher.find())
        {
            s = matcher.replaceAll("");
        }
        return s.substring(1 + s.lastIndexOf('.'));
    }

    static transient void a(String s, Object aobj[])
    {
        if (aobj.length > 0)
        {
            s = String.format(s, aobj);
        }
        Log.d(a(), s);
    }

    static void a(Throwable throwable)
    {
        Log.e(a(), Log.getStackTraceString(throwable));
    }

    static transient void b(String s, Object aobj[])
    {
        if (aobj.length > 0)
        {
            s = String.format(s, aobj);
        }
        Log.w(a(), s);
    }

    static transient void c(String s, Object aobj[])
    {
        if (aobj.length > 0)
        {
            s = String.format(s, aobj);
        }
        Log.e(a(), s);
    }

}
