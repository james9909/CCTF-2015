// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import java.util.Comparator;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatConversation, Chat

class this._cls0
    implements Comparator
{

    final ChatConversation this$0;

    public int a(Chat chat, Chat chat1)
    {
        if (chat.i() < chat1.i())
        {
            return -1;
        }
        return chat.i() <= chat1.i() ? 0 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Chat)obj, (Chat)obj1);
    }

    ()
    {
        this$0 = ChatConversation.this;
        super();
    }
}
