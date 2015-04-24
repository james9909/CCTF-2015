// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatMessageAckTracker

class a
    implements Runnable
{

    final String a;
    final SecureChatMessageAckTracker b;

    public void run()
    {
        SecureChatMessageAckTracker.a(b, a);
    }

    (SecureChatMessageAckTracker securechatmessageacktracker, String s)
    {
        b = securechatmessageacktracker;
        a = s;
        super();
    }
}
