// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class DisplayInAppNotificationEvent
{

    public int a;
    public CharSequence b;
    public CharSequence c;
    public boolean d;
    public boolean e;
    public int f;
    public int g;
    public boolean h;

    public DisplayInAppNotificationEvent()
    {
        d = true;
        e = true;
        h = false;
    }

    public DisplayInAppNotificationEvent(int i, CharSequence charsequence, CharSequence charsequence1)
    {
        a = i;
        b = charsequence;
        c = charsequence1;
        d = false;
        e = true;
        h = false;
    }

    public DisplayInAppNotificationEvent(int i, CharSequence charsequence, CharSequence charsequence1, int j, int k, boolean flag)
    {
        a = i;
        b = charsequence;
        c = charsequence1;
        d = false;
        f = j;
        g = k;
        e = false;
        h = flag;
    }
}
