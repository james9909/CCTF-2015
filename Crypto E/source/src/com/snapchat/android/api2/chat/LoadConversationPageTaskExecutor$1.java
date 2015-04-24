// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import java.util.Set;

// Referenced classes of package com.snapchat.android.api2.chat:
//            LoadConversationPageTaskExecutor

class val.conversationId
    implements sationPageTaskCallback
{

    final LoadConversationPageTaskExecutor this$0;
    final String val$conversationId;

    public void a(boolean flag)
    {
        LoadConversationPageTaskExecutor.a(LoadConversationPageTaskExecutor.this).remove(val$conversationId);
    }

    sationPageTaskCallback()
    {
        this$0 = final_loadconversationpagetaskexecutor;
        val$conversationId = String.this;
        super();
    }
}
