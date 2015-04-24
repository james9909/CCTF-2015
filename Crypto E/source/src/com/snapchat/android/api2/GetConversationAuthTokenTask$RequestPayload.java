// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;


// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload, GetConversationAuthTokenTask

class this._cls0 extends AuthPayload
{

    final String conversationId;
    final GetConversationAuthTokenTask this$0;

    ()
    {
        this$0 = GetConversationAuthTokenTask.this;
        super();
        conversationId = GetConversationAuthTokenTask.a(GetConversationAuthTokenTask.this);
    }
}
