// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import com.snapchat.android.Timber;
import java.io.File;

public class VideoCameraUtils
{

    public VideoCameraUtils()
    {
    }

    public static void a(File file, float f)
    {
        if (file != null)
        {
            Timber.c("VideoCameraUtils", (new StringBuilder()).append("Video File Size = ").append(file.length() / 1024L).append(", length = ").append(f).toString(), new Object[0]);
        }
    }

    public static boolean a(long l, long l1)
    {
        return l - l1 >= 100L;
    }
}
