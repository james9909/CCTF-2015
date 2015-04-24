// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ISavableChatFeedItem;
import com.snapchat.android.util.chat.SnapchatUrlSpan;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment, ChatConversationAdapter

class b
    implements android.content.OnClickListener
{

    final SnapchatUrlSpan a;
    final ISavableChatFeedItem b;
    final ChatFragment c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        i;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 29
    //                   1 60
    //                   2 190;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a.getURL()));
        c.startActivity(intent);
        return;
_L3:
        if (ChatFragment.h(c) != null)
        {
            if (b.n())
            {
                int k = b.C();
                if (b instanceof Chat)
                {
                    ChatFragment.z(c).a(ChatFragment.h(c), (Chat)b, k, false);
                }
            } else
            {
                int j = b.B();
                if (b instanceof Chat)
                {
                    ChatFragment.z(c).a(ChatFragment.h(c), (Chat)b, j, true);
                }
            }
            ChatFragment.w(c).notifyDataSetChanged();
            return;
        }
          goto _L1
_L4:
        dialoginterface.dismiss();
        return;
    }

    (ChatFragment chatfragment, SnapchatUrlSpan snapchaturlspan, ISavableChatFeedItem isavablechatfeeditem)
    {
        c = chatfragment;
        a = snapchaturlspan;
        b = isavablechatfeeditem;
        super();
    }
}
