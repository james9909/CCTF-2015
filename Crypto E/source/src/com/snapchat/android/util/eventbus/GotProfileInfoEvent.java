// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import java.util.List;

public class GotProfileInfoEvent
{

    private String a;
    private List b;
    private int c;

    public GotProfileInfoEvent(String s, List list, int i)
    {
        a = s;
        b = list;
        c = i;
    }

    public String a()
    {
        return a;
    }

    public List b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }
}
