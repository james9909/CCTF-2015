// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.chat.ChatMediaExpander;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements Runnable
{

    final ChatFragment a;

    public void run()
    {
        ChatFragment.c(a, 0.0F);
        ChatFragment.q(a).a();
    }

    _cls9(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
