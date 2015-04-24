// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class ChatUpdatedEvent
{

    public final String a;
    public final String b;
    public final boolean c;

    public ChatUpdatedEvent(String s)
    {
        this(s, null, false);
    }

    public ChatUpdatedEvent(String s, String s1)
    {
        this(s, s1, false);
    }

    public ChatUpdatedEvent(String s, String s1, boolean flag)
    {
        a = s;
        c = flag;
        b = s1;
    }

    public ChatUpdatedEvent(String s, boolean flag)
    {
        this(s, null, flag);
    }
}
