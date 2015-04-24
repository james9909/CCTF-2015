// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;


// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

static class ask.TaskStatus
{

    static final int a[];

    static 
    {
        a = new int[com.snapchat.android.api2.chat.PageTask.TaskStatus.values().length];
        try
        {
            a[com.snapchat.android.api2.chat.PageTask.TaskStatus.RUNNING.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[com.snapchat.android.api2.chat.PageTask.TaskStatus.FAILED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.snapchat.android.api2.chat.PageTask.TaskStatus.EMPTY_RESPONSE_REACHED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
