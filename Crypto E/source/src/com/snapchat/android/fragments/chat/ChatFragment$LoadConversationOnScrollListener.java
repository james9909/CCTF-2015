// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.widget.AbsListView;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.chat.ChatMessagePaginator;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment, ChatConversationAdapter

class <init>
    implements android.widget.tionOnScrollListener
{

    final ChatFragment a;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
label0:
        {
            if (i == 0)
            {
                ChatFragment.d(a, 0.0F);
            }
            if (!ChatFragment.w(a).isEmpty() && abslistview.getFirstVisiblePosition() < 20 && !ChatFragment.x(a).isEmpty() && ChatFragment.h(a) != null)
            {
                if (!ChatFragment.V(a).d())
                {
                    break label0;
                }
                ChatFragment.g(a, false);
            }
            return;
        }
        com.snapchat.android.api2.chat.ener ener = ChatFragment.y(a).a(ChatFragment.h(a).u(), true);
        a.a(ener);
    }

    private (ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }

    a(ChatFragment chatfragment, a a1)
    {
        this(chatfragment);
    }
}
