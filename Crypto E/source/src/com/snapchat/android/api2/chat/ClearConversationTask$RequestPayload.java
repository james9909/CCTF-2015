// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.chat:
//            ClearConversationTask

public class conversationId extends AuthPayload
{

    private String conversationId;
    final ClearConversationTask this$0;

    public I(String s)
    {
        this$0 = ClearConversationTask.this;
        super();
        conversationId = s;
    }
}
