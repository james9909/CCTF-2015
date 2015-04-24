// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.screenshotdetection;


// Referenced classes of package com.snapchat.android.screenshotdetection:
//            ScreenshotWatcher, ChatViewingSession, ScreenshotDetector

public class ChatScreenshotWatcher extends ScreenshotWatcher
{

    private static ChatScreenshotWatcher b;

    public ChatScreenshotWatcher()
    {
    }

    public static ChatScreenshotWatcher a()
    {
        if (b == null)
        {
            b = new ChatScreenshotWatcher();
        }
        return b;
    }

    public static void b()
    {
        b = null;
    }

    public void a(String s, String s1)
    {
        a = new ChatViewingSession(s);
        ScreenshotDetector.a().a(a);
    }
}
