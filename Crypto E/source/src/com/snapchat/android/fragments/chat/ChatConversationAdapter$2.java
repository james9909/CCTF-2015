// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.cash.ReceivingCashManager;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatConversationAdapter

class a
    implements android.view.tConversationAdapter._cls2
{

    final CashFeedItem a;
    final ChatConversationAdapter b;

    public void onClick(View view)
    {
        AnalyticsEvents.s(a.h().j());
        ChatConversationAdapter.a(b).b();
        b.a.a(a, new com.snapchat.android.cash.ReceivingCashManager.ResolvingBlockersCallback() {

            final ChatConversationAdapter._cls2 a;

            public void a()
            {
                ChatConversationAdapter.a(a.b).c();
            }

            public void b()
            {
                ChatConversationAdapter.a(a.b).c();
            }

            
            {
                a = ChatConversationAdapter._cls2.this;
                super();
            }
        });
    }

    _cls1.a(ChatConversationAdapter chatconversationadapter, CashFeedItem cashfeeditem)
    {
        b = chatconversationadapter;
        a = cashfeeditem;
        super();
    }
}
