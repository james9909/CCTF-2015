// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.os.AsyncTask;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements com.snapchat.android.cash.endingCashCallback
{

    final a a;

    public void a()
    {
        AnalyticsEvents.b(a.a.h().j(), a.a.h().w());
        ChatFragment.t(a.a.a);
    }

    public void b()
    {
        ChatFragment.t(a.a.a);
    }

    ashCallback(ashCallback ashcallback)
    {
        a = ashcallback;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$23

/* anonymous class */
    class ChatFragment._cls23 extends AsyncTask
    {

        final ChatConversation a;
        final int b;
        final ChatFragment c;

        protected transient Void a(Void avoid[])
        {
            CashFeedItem cashfeeditem = c.f.a(a, b, true);
            c.f.a(cashfeeditem, new ChatFragment._cls23._cls1(this, cashfeeditem));
            return null;
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

            
            {
                c = chatfragment;
                a = chatconversation;
                b = i;
                super();
            }
    }


    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$23$1

/* anonymous class */
    class ChatFragment._cls23._cls1
        implements com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback
    {

        final CashFeedItem a;
        final ChatFragment._cls23 b;

        public void a()
        {
            ChatFragment.b(b.c, a);
            b.c.f.a(b.a, a, "", new ChatFragment._cls23._cls1._cls1(this));
        }

        public void b()
        {
            ChatFragment.t(b.c);
        }

            
            {
                b = _pcls23;
                a = cashfeeditem;
                super();
            }
    }

}
