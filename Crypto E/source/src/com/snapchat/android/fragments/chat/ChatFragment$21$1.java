// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ScrollFeedToTopEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements Runnable
{

    final  a;

    public void run()
    {
        ChatFragment.k(a.a).setText("");
    }

    t(t t)
    {
        a = t;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$21

/* anonymous class */
    class ChatFragment._cls21
        implements com.snapchat.android.cash.SendingCashManager.SendingCashCallback
    {

        final CashFeedItem a;
        final ChatConversation b;
        final ChatFragment c;

        public void a()
        {
            Object aobj[] = new Object[3];
            aobj[0] = a.d();
            aobj[1] = b.c();
            aobj[2] = a.h().j();
            Timber.c("ChatFragment", "CASH-LOG: SENDING transaction id[%s] recipient[%s] amount[%s]", aobj);
            ThreadUtils.a(new ChatFragment._cls21._cls1(this));
            ChatFragment.a(c, null);
            ChatFragment.H(c).remove(b.c());
            ChatFragment.t(c);
            BusProvider.a().a(new ScrollFeedToTopEvent());
            AnalyticsEvents.b(a.h().j(), a.h().w());
        }

        public void b()
        {
            ChatFragment.t(c);
        }

            
            {
                c = chatfragment;
                a = cashfeeditem;
                b = chatconversation;
                super();
            }
    }

}
