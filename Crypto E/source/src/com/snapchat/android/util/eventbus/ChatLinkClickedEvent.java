// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.util.chat.SnapchatUrlSpan;

public class ChatLinkClickedEvent
{

    public SnapchatUrlSpan a;

    public ChatLinkClickedEvent(SnapchatUrlSpan snapchaturlspan)
    {
        a = snapchaturlspan;
    }
}
