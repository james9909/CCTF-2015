// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSession

class a
    implements Runnable
{

    final SecureChatSession a;

    public void run()
    {
        SecureChatSession.c(a);
        SecureChatSession.f(a);
    }

    (SecureChatSession securechatsession)
    {
        a = securechatsession;
        super();
    }
}
