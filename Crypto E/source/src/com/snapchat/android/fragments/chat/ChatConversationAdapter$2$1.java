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
    implements com.snapchat.android.cash.ngBlockersCallback
{

    final terUiVisibilityListener.c a;

    public void a()
    {
        ChatConversationAdapter.a(a.a).c();
    }

    public void b()
    {
        ChatConversationAdapter.a(a.a).c();
    }

    terUiVisibilityListener(terUiVisibilityListener teruivisibilitylistener)
    {
        a = teruivisibilitylistener;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatConversationAdapter$2

/* anonymous class */
    class ChatConversationAdapter._cls2
        implements android.view.View.OnClickListener
    {

        final CashFeedItem a;
        final ChatConversationAdapter b;

        public void onClick(View view)
        {
            AnalyticsEvents.s(a.h().j());
            ChatConversationAdapter.a(b).b();
            b.a.a(a, new ChatConversationAdapter._cls2._cls1(this));
        }

            
            {
                b = chatconversationadapter;
                a = cashfeeditem;
                super();
            }
    }

}
