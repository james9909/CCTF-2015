// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.model.User;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatSession

class a
    implements Runnable
{

    final String a;
    final SecureChatSession b;

    public void run()
    {
        User.a(SecureChatSession.e(b)).e(a);
    }

    (SecureChatSession securechatsession, String s)
    {
        b = securechatsession;
        a = s;
        super();
    }
}
