// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.chat:
//            LoadConversationPageTask

public class mOffset extends AuthPayload
{

    final String mConversationId;
    final String mOffset;
    final LoadConversationPageTask this$0;

    (String s, String s1)
    {
        this$0 = LoadConversationPageTask.this;
        super();
        mConversationId = s;
        mOffset = s1;
    }
}
