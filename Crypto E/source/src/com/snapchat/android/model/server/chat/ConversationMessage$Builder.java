// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.util.chat.ChatUtils;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload

public static class uilder.build extends uilder.build
{

    private uilder.build mHeader;


    public uilder(String s, String s1, List list, SignedPayload signedpayload)
    {
        super(s);
        String s2 = ChatUtils.a(s1, (String)list.get(0));
        mHeader = (new uilder()).setTo(list).setFrom(s1).setConvId(s2).setAuth(signedpayload).build();
    }
}
