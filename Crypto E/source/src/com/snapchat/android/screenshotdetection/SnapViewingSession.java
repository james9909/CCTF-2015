// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.screenshotdetection;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.StoryViewRecord;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.SnapUtils;

// Referenced classes of package com.snapchat.android.screenshotdetection:
//            ScreenshotDetectionSession

public class SnapViewingSession extends ScreenshotDetectionSession
{

    private final String b;

    public SnapViewingSession(String s, String s1)
    {
        this(s, s1, System.currentTimeMillis(), -1L);
    }

    public SnapViewingSession(String s, String s1, long l, long l1)
    {
        super(s, l, l1);
        b = s1;
    }

    public String a()
    {
        return b;
    }

    public void a(long l)
    {
        ReceivedSnap receivedsnap = (ReceivedSnap)ConversationUtils.a(b(), b);
        if (receivedsnap == null) goto _L2; else goto _L1
_L1:
        receivedsnap.B();
        AnalyticsEvents.a(receivedsnap, false);
_L4:
        a.c();
        return;
_L2:
        com.snapchat.android.model.StorySnap storysnap = SnapUtils.a(g());
        if (storysnap != null)
        {
            SnapUtils.a(new StoryViewRecord(b, l, 1));
            AnalyticsEvents.a(storysnap, true);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String g()
    {
        return b;
    }
}
