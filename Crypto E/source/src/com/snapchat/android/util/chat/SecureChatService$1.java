// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatService

class a
    implements Runnable
{

    final SecureChatService a;

    public void run()
    {
        if (!SecureChatService.a(a))
        {
            a.stopSelf();
        }
    }

    (SecureChatService securechatservice)
    {
        a = securechatservice;
        super();
    }
}
