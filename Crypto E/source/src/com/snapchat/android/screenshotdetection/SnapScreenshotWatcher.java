// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.screenshotdetection;


// Referenced classes of package com.snapchat.android.screenshotdetection:
//            ScreenshotWatcher, SnapViewingSession, ScreenshotDetector

public class SnapScreenshotWatcher extends ScreenshotWatcher
{

    private static SnapScreenshotWatcher b;

    public SnapScreenshotWatcher()
    {
    }

    public static SnapScreenshotWatcher a()
    {
        if (b == null)
        {
            b = new SnapScreenshotWatcher();
        }
        return b;
    }

    public static void b()
    {
        b = null;
    }

    public void a(String s, String s1)
    {
        a = new SnapViewingSession(s, s1);
        ScreenshotDetector.a().a(a);
    }
}
