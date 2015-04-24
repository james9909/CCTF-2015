// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.Locale;

public class EnumUtils
{

    public EnumUtils()
    {
    }

    public static String a(Enum enum)
    {
        return enum.name().toLowerCase(Locale.ENGLISH);
    }
}
