// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.media;

import android.os.Bundle;
import com.snapchat.android.api.SnapchatServer;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.debug.DevUtils;

// Referenced classes of package com.snapchat.android.networkmanager.media:
//            SnapMediaDownload, ByteCopyingMediaDownload

public class MediaDownloader
{

    private static final MediaDownloader a = new MediaDownloader();
    private final LoadConversationPageTaskExecutor b;

    private MediaDownloader()
    {
        this(LoadConversationPageTaskExecutor.a());
    }

    protected MediaDownloader(LoadConversationPageTaskExecutor loadconversationpagetaskexecutor)
    {
        b = loadconversationpagetaskexecutor;
    }

    public static MediaDownloader a()
    {
        return a;
    }

    private boolean a(ReceivedSnap receivedsnap, String s, Cache cache)
    {
        if (receivedsnap.U())
        {
            return true;
        } else
        {
            return b(receivedsnap, s, cache);
        }
    }

    private boolean a(ReceivedSnap receivedsnap, String s, Cache cache, DownloadPriority downloadpriority, DownloadPriority downloadpriority1)
    {
        if (s == null)
        {
            return false;
        } else
        {
            return (new SnapMediaDownload(receivedsnap, cache)).a(s, downloadpriority, downloadpriority1);
        }
    }

    private boolean a(ChatMedia chatmedia, Cache cache)
    {
        String s = UserPrefs.k();
        if (s != null)
        {
            if (cache.e(chatmedia.d()))
            {
                return true;
            }
            byte abyte0[];
            if (chatmedia.D() != null)
            {
                String s1 = String.valueOf(System.currentTimeMillis());
                String s2 = SnapchatServer.a(s1, "/bq/chat_media");
                Bundle bundle = new Bundle();
                bundle.putString("id", chatmedia.D());
                bundle.putString("conversation_id", chatmedia.I());
                bundle.putString("timestamp", s1);
                bundle.putString("req_token", s2);
                bundle.putString("username", s);
                abyte0 = a((new StringBuilder()).append(DevUtils.b("/bq/chat_media")).append("/bq/chat_media").toString(), bundle);
                if (chatmedia.E() == null || chatmedia.F() == null)
                {
                    b.a(chatmedia.I(), true, null);
                }
            } else
            {
                abyte0 = null;
            }
            if (abyte0 != null)
            {
                cache.a(chatmedia.d(), abyte0);
                return true;
            }
        }
        return false;
    }

    private byte[] a(String s, Bundle bundle)
    {
        return (new ByteCopyingMediaDownload()).a(s, bundle, DownloadPriority.b, DownloadPriority.a);
    }

    private boolean b(ReceivedSnap receivedsnap, String s, Cache cache)
    {
        return a(receivedsnap, s, cache, DownloadPriority.d, DownloadPriority.c);
    }

    public boolean a(ReceivedSnap receivedsnap, String s)
    {
        return a(receivedsnap, s, Caches.e);
    }

    public boolean a(StorySnap storysnap, String s)
    {
        if (storysnap.aw())
        {
            return true;
        } else
        {
            return a(((ReceivedSnap) (storysnap)), s, Caches.b, DownloadPriority.d, DownloadPriority.d);
        }
    }

    public boolean a(ChatMedia chatmedia)
    {
        return a(chatmedia, Caches.i);
    }

    public byte[] a(String s)
    {
        return a(s, ((Bundle) (null)));
    }

    public boolean b(ReceivedSnap receivedsnap, String s)
    {
        return a(receivedsnap, s, Caches.f);
    }

    public boolean b(StorySnap storysnap, String s)
    {
        return a(storysnap, s, Caches.c);
    }

    public boolean c(StorySnap storysnap, String s)
    {
        return a(storysnap, s, Caches.d);
    }

}
