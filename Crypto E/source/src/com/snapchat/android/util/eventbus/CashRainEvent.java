// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.model.chat.ChatConversation;

public class CashRainEvent
{

    private long a;
    private long b;
    private ChatConversation c;

    public CashRainEvent(ChatConversation chatconversation, long l, long l1)
    {
        c = chatconversation;
        a = l1;
        b = l;
    }

    public long a()
    {
        return a;
    }

    public long b()
    {
        return b;
    }

    public ChatConversation c()
    {
        return c;
    }
}
