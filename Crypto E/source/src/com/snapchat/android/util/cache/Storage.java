// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import java.io.File;

public class Storage
{

    private static File a;
    private static File b;

    public Storage()
    {
    }

    public static File a()
    {
        return a;
    }

    public static void a(File file, File file1)
    {
        a = file;
        b = file1;
    }

    public static File b()
    {
        return b;
    }
}
