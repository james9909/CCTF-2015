// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


public class ChatMessagePaginator
{

    private int a;
    private int b;

    public ChatMessagePaginator()
    {
        a = 30;
        b = 0;
    }

    public void a()
    {
        a = 30;
        b = 0;
    }

    public void a(int i)
    {
        b = i;
    }

    public void b()
    {
        if (a < b)
        {
            a = 30 + a;
        }
    }

    public int c()
    {
        return a;
    }

    public boolean d()
    {
        return a < b;
    }
}
