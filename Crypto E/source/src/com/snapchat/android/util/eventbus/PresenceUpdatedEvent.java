// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class PresenceUpdatedEvent
{

    public final String a;
    public final boolean b;
    public final String c;

    public PresenceUpdatedEvent(String s, boolean flag, String s1)
    {
        a = s;
        b = flag;
        c = s1;
    }
}
