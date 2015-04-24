// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import java.util.UUID;

// Referenced classes of package com.snapchat.android.model.chat:
//            Chat

public static class recipient
{

    private String id;
    private String recipient;
    private String sender;

    static String a(recipient recipient1)
    {
        return recipient1.sender;
    }

    static String b(sender sender1)
    {
        return sender1.recipient;
    }

    static String c(recipient recipient1)
    {
        return recipient1.id;
    }

    public (String s, String s1)
    {
        id = UUID.randomUUID().toString();
        sender = s;
        recipient = s1;
    }
}
