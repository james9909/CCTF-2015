// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.app.Activity;
import android.view.View;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.ui.here.DisconnectReason;

public interface LiveChatProvider
{
    public static interface LiveChatProviderCallback
    {

        public abstract void a();

        public abstract void a(View view);

        public abstract void a(DisconnectReason disconnectreason);

        public abstract void a(boolean flag);
    }


    public abstract void a();

    public abstract void a(Activity activity, LiveChatProviderCallback livechatprovidercallback, HereAnalytics hereanalytics);

    public abstract void a(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth);

    public abstract void a(DisconnectReason disconnectreason, boolean flag);

    public abstract void a(byte abyte0[], com.addlive.service.AddLiveService.VideoFrameMetadata videoframemetadata);

    public abstract boolean b();

    public abstract void c();

    public abstract void d();
}
