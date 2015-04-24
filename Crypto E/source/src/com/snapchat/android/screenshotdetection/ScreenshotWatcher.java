// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.screenshotdetection;


// Referenced classes of package com.snapchat.android.screenshotdetection:
//            ScreenshotDetectionSession

public abstract class ScreenshotWatcher
{

    protected ScreenshotDetectionSession a;

    protected ScreenshotWatcher()
    {
    }

    public void a(String s)
    {
        if (a != null && a.d())
        {
            a.c();
        }
        a(s, null);
    }

    public abstract void a(String s, String s1);

    public void c()
    {
        if (a != null)
        {
            a.c();
        }
    }
}
