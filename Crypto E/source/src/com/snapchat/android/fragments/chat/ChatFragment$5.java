// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.ObservableAboveTheFoldListView;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements android.view.ngeListener
{

    final ChatFragment a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            ChatFragment.g(a).setIsActive(true);
        }
        if (ChatFragment.h(a) != null)
        {
            ChatFragment.h(a).k(false);
        }
    }

    iew(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
