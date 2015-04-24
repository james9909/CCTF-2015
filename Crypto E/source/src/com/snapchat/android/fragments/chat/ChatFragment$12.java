// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment, ChatConversationAdapter

class a
    implements android.view.ener
{

    final ChatFragment a;

    public void onClick(View view)
    {
        if (!ChatFragment.w(a).isEmpty() && !ChatFragment.x(a).isEmpty() && ChatFragment.h(a) != null)
        {
            com.snapchat.android.api2.chat.PageTask.TaskStatus taskstatus = ChatFragment.y(a).a(ChatFragment.h(a).u(), true);
            a.a(taskstatus);
        }
    }

    askExecutor(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
