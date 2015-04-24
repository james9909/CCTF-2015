// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSessionPinger

class a
    implements Runnable
{

    final String a;
    final SecureChatSessionPinger b;

    public void run()
    {
        SecureChatSessionPinger.a(b, a);
    }

    (SecureChatSessionPinger securechatsessionpinger, String s)
    {
        b = securechatsessionpinger;
        a = s;
        super();
    }
}
