// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api.chat;

import com.snapchat.android.api.TimeoutProvider;

public class ChatRequestTimeoutProvider
    implements TimeoutProvider
{

    public ChatRequestTimeoutProvider()
    {
    }

    public int a()
    {
        return 20000;
    }

    public int b()
    {
        return 10000;
    }
}
