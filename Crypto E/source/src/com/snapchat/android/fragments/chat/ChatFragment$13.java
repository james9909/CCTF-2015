// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatScreenshot;
import com.snapchat.android.model.chat.ISavableChatFeedItem;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.ObservableAboveTheFoldListView;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements android.widget.emClickListener
{

    final ChatFragment a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (ChatFragment.h(a) != null) goto _L2; else goto _L1
_L1:
        int j;
        return;
_L2:
        ChatFeedItem chatfeeditem;
        if ((j = i - ChatFragment.g(a).getHeaderViewsCount()) >= ChatFragment.x(a).size() || ((chatfeeditem = (ChatFeedItem)ChatFragment.x(a).get(j)).d() == null || (chatfeeditem instanceof Snap) || (chatfeeditem instanceof ChatScreenshot)))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!chatfeeditem.W() || !chatfeeditem.Y())
        {
            break; /* Loop/switch isn't completed */
        }
        if (chatfeeditem instanceof Chat)
        {
            ChatFragment.z(a).a(ChatFragment.h(a), (Chat)chatfeeditem, true, true);
            return;
        }
        if (chatfeeditem instanceof CashFeedItem)
        {
            CashFeedItem cashfeeditem = (CashFeedItem)chatfeeditem;
            AnalyticsEvents.r(cashfeeditem.h().j());
            ChatFragment.r(a);
            a.f.a(ChatFragment.h(a), cashfeeditem, new com.snapchat.android.cash.SendingCashManager.SendingCashCallback() {

                final ChatFragment._cls13 a;

                public void a()
                {
                    ChatFragment.t(a.a);
                }

                public void b()
                {
                    ChatFragment.t(a.a);
                }

            
            {
                a = ChatFragment._cls13.this;
                super();
            }
            });
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if ((chatfeeditem instanceof ChatMedia) && view != null)
        {
            View view1 = view.findViewById(0x7f0a0116);
            if (view1 instanceof ImageResourceView)
            {
                ImageResourceView imageresourceview = (ImageResourceView)view1;
                if (imageresourceview.b())
                {
                    imageresourceview.a();
                    return;
                }
            }
        }
        if (!(chatfeeditem instanceof ISavableChatFeedItem) || !((ISavableChatFeedItem)chatfeeditem).j()) goto _L1; else goto _L4
_L4:
        ISavableChatFeedItem isavablechatfeeditem;
        android.widget.outParams outparams;
        android.widget.utParams utparams;
        isavablechatfeeditem = (ISavableChatFeedItem)chatfeeditem;
        if (!chatfeeditem.ar() || view == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Adapter.MessageViewHolder messageviewholder = (Adapter.MessageViewHolder)view.getTag();
        outparams = (android.widget.outParams)messageviewholder.z.getLayoutParams();
        utparams = (android.widget.utParams)messageviewholder.y.getLayoutParams();
        if (outparams.leftMargin <= -utparams.leftMargin) goto _L1; else goto _L5
_L5:
        if (!isavablechatfeeditem.n()) goto _L7; else goto _L6
_L6:
        int i1 = isavablechatfeeditem.C();
        if (chatfeeditem instanceof Chat)
        {
            ChatFragment.z(a).a(ChatFragment.h(a), (Chat)isavablechatfeeditem, i1, false);
        }
_L9:
        ChatFragment.a(a, chatfeeditem.d());
        return;
_L7:
        int k = isavablechatfeeditem.B();
        if (chatfeeditem instanceof Chat)
        {
            ChatFragment.z(a).a(ChatFragment.h(a), (Chat)isavablechatfeeditem, k, true);
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    _cls1.a(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
