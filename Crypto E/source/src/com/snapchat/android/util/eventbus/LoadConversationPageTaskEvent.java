// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class LoadConversationPageTaskEvent
{

    public com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus a;

    public LoadConversationPageTaskEvent(com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus taskstatus)
    {
        a = taskstatus;
    }
}
