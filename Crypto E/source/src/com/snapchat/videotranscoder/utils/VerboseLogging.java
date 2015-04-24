// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.utils;

import android.util.Log;

public class VerboseLogging
{

    private static boolean a = true;

    public VerboseLogging()
    {
    }

    public static void a(String s, String s1)
    {
        if (a)
        {
            Log.v(s, s1);
        }
    }

}
