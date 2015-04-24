// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.screenshotdetection;

import com.snapchat.android.Timber;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatScreenshot;
import com.snapchat.android.service.SnapchatServiceManager;

// Referenced classes of package com.snapchat.android.screenshotdetection:
//            ScreenshotDetectionSession

public class ChatViewingSession extends ScreenshotDetectionSession
{

    public ChatViewingSession(String s)
    {
        this(s, System.currentTimeMillis(), -1L);
    }

    public ChatViewingSession(String s, long l, long l1)
    {
        super(s, l, l1);
    }

    public String a()
    {
        return "";
    }

    public void a(long l)
    {
        Timber.c("ChatViewingSession", (new StringBuilder()).append("onScreenshotDetected ").append(l).toString(), new Object[0]);
        String s = b();
        com.snapchat.android.model.chat.ChatConversation chatconversation = ChatConversationManager.a().a(s);
        if (chatconversation == null)
        {
            return;
        } else
        {
            ChatScreenshot chatscreenshot = (new com.snapchat.android.model.chat.ChatScreenshot.Builder(UserPrefs.k(), s)).a();
            chatscreenshot.c(l);
            SendingMailman.a().a(chatconversation, chatscreenshot);
            a.c();
            return;
        }
    }
}
