// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.chat.ReceivingMailman;
import com.snapchat.android.model.server.chat.SCMessage;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatService

class a
    implements Runnable
{

    final SCMessage a;
    final SecureChatService b;

    public void run()
    {
        SecureChatService.b(b).a(a);
    }

    (SecureChatService securechatservice, SCMessage scmessage)
    {
        b = securechatservice;
        a = scmessage;
        super();
    }
}
